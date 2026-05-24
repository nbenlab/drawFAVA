#! /usr/bin/env bash
###############################################################################
# BASH script to merge all the forks from the annotators into the
# data branch of the main repository.
#
# Because the individual researchers who annotated the retinotopic maps did so
# on their own computers then checked the annotations into their own forks of
# the nbenlab/drawFAVA repository, we want to pull their annotation directories
# into the data branch of nbenlab/drawFAVA.

# Configuration ###############################################################

# The list of annotators.
ANNOTS=(mahis1026 j2bee ZariaP tsukhee sarora2856 longhinm09 SuchithaJ
        idhrcontrol ikaplun-glitch sidikhaliya-del shruthikab ziyil115)

# The list of dataset names.
DATASETS=(hcp-retinotopy chn-retinotopy hcp-retinotopy nod nsd nyu-nei
          nyu-retinotopy studyforrest)

# Fail fast:
set -eo pipefail


# Script ######################################################################

# Easiest to work from the repo root, which is the directory containin this
# script...
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
cd "${SCRIPT_DIR}"

# Make sure there aren't untracked files before we start.
if [ -n "$(git status --porcelain)" ]
then echo "The branch is not clean--remove untracked files before" 1>&2
     echo "running this cell." 1>&2
     exit 1
fi

# Make sure we're on the data branch.
if [ "data" != "$(git rev-parse --abbrev-ref HEAD)" ]
then echo "The current branch is not the data branch!" 1>&2
     exit 1
fi

# Now walk through each annotator/researcher's annotations.
for ANN in "${ANNOTS[@]}"
do # Make sure this remote exists already.
   if ! git remote | grep -q "^${ANN}\$"
   then git remote add "${ANN}" "git@github.com:${ANN}/drawFAVA"
   fi
   # Fetch and start a merge from fork:
   git fetch "${ANN}"
   git merge --no-edit --no-commit --no-ff "${ANN}/main" &>/dev/null || true
   # Now reset us to before the merge started:
   git reset HEAD .
   git checkout -- .
   git clean -fd
   # Now checkout the annotations/ directories only.
   # We go through each dataset...
   for DS in "${DATASETS[@]}"
   do if git rev-parse --verify "${ANN}/main:annotations/${DS}/${ANN}" &>/dev/null
      then git checkout "${ANN}/main" -- "annotations/${DS}/${ANN}"
           if [ -d "annotations/${DS}/${ANN}" ]
           then # Clean up the weird filenames in the repo.
                find "annotations/${DS}/${ANN}" -type f -name '**.tsv' \
                     -exec bash -c 'mv "${1}" "${1//|}"' _ '{}' ';'
                git add "annotations/${DS}/${ANN}"
                if [ -r "annotations/${DS}/${ANN}/.annot-prefs.yaml" ]
                then git rm --cached -f "annotations/${DS}/${ANN}/.annot-prefs.yaml" &>/dev/null
                     rm -f "annotations/${DS}/${ANN}/.annot-prefs.yaml"
                fi
           fi
      fi
   done
   # Commit if anything has changed.
   if [ -n "$(git status --porcelain)" ]
   then git commit -m "Automatic merge of annotations/ from fork ${ANN}." &>/dev/null
        echo "Merged changed from repository ${ANN}/drawFAVA."
   else echo "Repository ${ANN}/drawFAVA unchanged."
   fi
done

