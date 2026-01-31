#! /bin/bash
###############################################################################
# BASH Script to automatically build the repo website.


#==============================================================================
# Confugiration

# We want to treat this script as a program.
set -euo pipefail

# The subdirectory of the repo that contains the jupyter book.
BOOK_SUBDIR="book"

# The subdirectory of the repo in which to put the built site.
SITE_SUBDIR="site"

# There are two ways to run this script: either the script is in the docker
# image in /usr/local/bin or it's in a git repository directory. If the former,
# then the repository path is actually /home/jovyan/repo or $HOME/repo. If the
# latter, it's the directory containing the script. Either way, we need to know
# the directory containing the script first.
SCRIPT_PARENT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

# What directory contains the repo in the docker container?
# This is made to work in the docker container.
REPO_PATH="${HOME}/repo"


#==============================================================================
# Sanity Checks.

# Are we in the docker container? If so the REPO_PATH is ~/repo; if not, it's
# the SCRIPT_PARENT.
if [[ "${SCRIPT_PARENT}" = "/usr/local/bin" ]]
then REPO_PATH="${HOME}/repo"
else REPO_PATH="${SCRIPT_PATH}"
fi

# We need jupyter-book to be installed.
if ! which jupyter-book
then echo "jupyter-book not found; you may need to install jupyter-book."
     exit 1
fi

# The book and site directories are subdirs of this path.
BOOK_PATH="${REPO_PATH}/${BOOK_SUBDIR}"
SITE_PATH="${REPO_PATH}/${SITE_SUBDIR}"
if ! [[ -d "${BOOK_PATH}" ]]
then echo "Book directory not found: ${BOOK_PATH}" 1>&2
     exit 1
fi
if ! [[ -r "${BOOK_PATH}" ]]
then echo "Book directory not readable: ${BOOK_PATH}" 1>&2
     exit 1
fi
if ! [[ -d "${SITE_PATH}" ]]
then mkdir ${SITE_PATH}
fi
if ! [[ -w "${SITE_PATH}" ]]
then echo "Site directory not writable: ${SITE_PATH}" 1>&2
     exit 1
fi


#==============================================================================
# Build the site.

# Not really necessary, but we go to the repo directory...
cd "$REPO_PATH"

# From here out, we can print commands to the screen.
set -x

# Go ahead and run the jupyter book command:
jupyter-book build --path-output "${SITE_PATH}" "${BOOK_PATH}"

# If we reach this point, all is well.
exit 0
