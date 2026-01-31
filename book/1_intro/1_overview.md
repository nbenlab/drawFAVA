(intro:overview)=
# Project Overview

DrawFAVA is a project whose goal is to annotate the boundaries of numerous
functional regions of the human visual cortex. The human visual cortex is tiled
with functional regions, most of which contain a map of the visual field. These
regions can be identified in an individual human by first using expensive MR
imaging then extensively processing the imaging data to estimate the visual
field maps and finally manually tracing the boundaries based on the features of
the maps. This process is expensive, difficult, and requires significant
expertise.

Contemporary AI methods can be trained to automatically identify the boundaries
of functional visual regions if they are given enough training data
{cite}`Benson_etal_2025`. However, while there are several existing public
datasets containing MR measurements of visual maps, few large datasets of
annotations of the functional areas of those maps are publicly available. This
project seeks to enable the training of AI methods to by generating a high
quality dataset of visual area annotations across many datasets. The project
further seeks to generate annotations from at least four separate researchers
to examine reliability.


(intro:datasets)=
## Datasets

The project aims to annotate the visual areas in seven public datasets:

* The [Human Connectome Project 7 Tesla Retinotopy Dataset](
  https://osf.io/BW9EC/) {cite}`Benson_etal_2018`
* The [NYU Retinotopy Dataset](https://openneuro.org/datasets/ds003787)
  {cite}`Himmelberg_etal_2021`
* The NYU-NEI Retinotopy Dataset (not yet published)
* The [Natural Scenes Dataset](https://naturalscenesdataset.org/)
  {cite}`Allen_etal_2021`
* The [CHN Retinotopic Mapping Dataset](
  https://openneuro.org/datasets/ds004698) {cite}`Chang_etal_2025`
* The [Forrest Gump Dataset](https://studyforrest.org/) {cite}`Hanke_etal_2014`
* The [Natural Object Dataset](https://openneuro.org/datasets/ds004496)
  {cite}`Gong_etal_2023`


(intro:rois)=
## Regions of Interest

The DrawFAVA project seeks to identify both retinotopic regions of interest
(ROIs) in the early/posterior, dorsal, and ventral occipital cortex and
category-selective regions in the ventral occipital temporal cortex (VOTC).

(intro:rois:retinotopic)=
### Retinotopic ROIs

Boundaries for the following retinotopic regions will be drawn on all subjects
with retinotopic mapping data of sufficiently high quality. For more
information on these ROIs and how to identify them, see the background chapter
on the [visual cortex](background:visual-cortex).

* Posterior Occipital Cortex:
  * V1
  * V2
  * V3
* Ventral Occipital Cortex:
  * hV4
  * VO1
  * VO2
* Dorsal Occipital Cortex:
  * V3a
  * V3b
  * LO1
  * IPS0

Additionally, iso-eccentricity contours will be marked in the above regions for
the following eccentricities:
 * 0.5&deg;
 * 1&deg;
 * 1&deg;
 * 4&deg;
 * 7&deg; (when possible)
 * 11&deg; (when possible)

(intro:rois:category)=
### Category Selective ROIs

Boundaries for the following category-selective regions in the VOTC will also
be drawn on all subjects with sufficiently high quality data from the
[fLoc](https://vpnl.stanford.edu/fLoc/) experiment {cite}`Stigliani_etal_2015`.


* Faces
  1. OFA
  2. FFA-1
  3. FFA-2
  4. mTL-faces ("mid temporal lobe faces")
  5. aTL-faces ("anterior temporal lobe faces")
* Bodies 
  1. EBA
  2. FBA-1
  3. FBA-2
  4. mTL-bodies
* Places
  1. OPA
  2. PPA
  3. RSC
* Words
  1. OWFA
  2. VWFA-1
  3. VWFA-2
  4. mfs-words ("mid fusiform sulcus words")
  5. mTL-words ("mid temporal lobe words")
