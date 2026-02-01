(background:visual-cortex)=
# The Human Visual Cortex

The human visual cortex is tiled by numerous distinct functional visual areas,
most of which contain some kind of retinotopic map of the visual field. Example
of segmentations of the visual cortex into distinct functional regions were
previously shown in {numref}`Figures {number}<fig-maps>` and
{numref}`{number}<fig-benson-atlas>`. Each of the visual areas shown in these
figures contain retinotopic maps&mdash;the left hemisphere (LH) and right
hemisphere (RH) parts of a functional region together represent the entire
visual field; the LH contains the right visual field representation and the RH
contains the left.

Visual maps that share a boundary, such as V1 and V2
({numref}`Fig. {number}<fig-maps>`), typically share the representation along
the boundary, as if one area's retinotopic representation were mirror-reversed
onto the cortical surface of the other area immediately across the
boundary. These mirror-reversal are readily apparent if we examine the
boundaries of areas while visualizing the pRF centers of each point on cortex.
{numref}`Figure {number}<fig-retinotopic-maps>`) shows visual area boundaries
drawn on top of the pRF centers, as visualized using polar angle and
eccentricity maps. Notice that in the top two hemispheres (the polar angle
maps) most of the boundaries occur along a reversal of the colormap.

:::{figure} ../_static/images/retinotopic-maps.svg
:height: 400px
:name: fig-retinotopic-maps
:alt: An image showing for spherically inflated hemispheres in a 2-by-2 grid; the two left plots are of the same left hemisphere and the two right plots are of the same right hemisphere. The top two show polar angle maps of several visual areas while the bottom two show eccentricity maps.
Polar angle (top) and eccentricity (bottom) maps of many visual areas in the
posterior visual cortex. The flatmaps pictured here were created using the
same projections as in {numref}`Figure {number}<fig-maps>`.  The large
star in the center of the maps shows the approximate position of the occipital
pole (the most posterior/rear point on cortex) while left and right are
preserved.
:::

The many functional visual areas of the human visual cortex perform many
functions and often grouped on cortex according to their function. In this
project, we will focus on a few specific groups of visual areas:
occipital cortex, which is further divided into medial, dorsal, and ventral
sections, and ventral occipital temporal cortex (VOTC).

:::{admonition} Are "visual cortex" and "occipital cortex" different?
:class: note
"Occipital cortex" and "visual cortex" are often used
interchangeably. Technically, the [occipital
lobe](https://en.wikipedia.org/wiki/Occipital_lobe) is an anatomical region at
the back of the brain, and the "occipital cortex" is the part of the cerebral
cortex in the occipital lobe. The "visual cortex", on the other hand, refers to
the part of the cortex that performs visual functions, which mostly overlaps
with the occipital cortex. However, the "occipital cortex" is an anatomical
definition that depends on the brain's shape while the "visual cortex" is a
functional definition that depends on the brain's function.
:::


(background:visual-cortex:oc)=
## Occipital Cortex

Occipital cortex includes V1 (primary visual cortex) and the visual
areas immediately surrounding it, stretching up through dorsal regions, down
through ventral regions, and around through lateral regions.

### Medial Occipital Cortex
V1, the first cortical stop for visual information arriving from the eyes, lies
along the medial surface of the occipital cortex. Surrounding it on all but its
anterior side lies V2, which is similarly surrounded by V3. Although V1
contains a complete uninterrupted representation of half of the visual field,
V2 and V3 are split along the horizontal meridian into dorsal an ventral
halves, each of which represents a quarter of the visual field.

V1, V2, and V3 are the earliest stops for information on cortex, and, for this
reason, they are sometimes called the "early visual cortex". They are thought
to process very fundamental aspects of visual input. V1 processes image
features like lines, orientations, and edges {cite}`Hubel_Wiesel_1959`. V2 is
thought to process features of texture
{cite}`Freeman_etal_2013,Ziemba_etal_2016`. Little is currently known for
certain about V3's function.

### Ventral Occipital Cortex
The visual areas of the ventral occipital cortex include hV4 ("human
V4"), VO1 ("ventral occipital" area 1), and VO2. Like V1 and unlike V2 and V3,
these areas contain continuous representations of a visual hemifield. What
precisely these visual areas do functionally is uncertain, but limited evidence
suggests that they perform an intermediary role in processing between the
processing of early visual features and the processing that segments and
recognizes objects in the visual scene, which occurs in the VOTC. The ventral
visual cortex is often referred to as the "what" pathway because of its role in
recognition and segmentation.

hV4, VO1, and VO2 are much smaller than V1, V2, and V3, and hV4 in particular
is more foveally biased, meaning that there is usually very little
representation of the peripheral visual field that can be seen on the cortex
using typical retinotopic mapping methods.

### Dorsal Occipital Cortex
The visual areas that lie dorsal to the early visual cortex are often called
the "where" or the "action" pathway due to their involvement in spatial
awareness and visual-motor integration. Dorsal visual regions are also involved
in the allocation of visual attention. This project focuses on three dorsal
areas: V3a, V3b, and IPS0, each of which represent a full continuous visual
hemifield, like V1. These regions tend to be quite small and foveally biased.

### Lateral Occipital Cortex
The lateral visual areas are believed to be involved in object recognition and
motion perception. The only lateral visual area drawn in this project is area
LO1 (LO stands for "lateral occipital"), and it is lumped together with the
dorsal areas throughout the rest of this project for convenience.


(background:visual-cortex:votc)=
## Ventral Occipital Temporal Cortex (VOTC)

The ventral occipital temporal cortex (VOTC) lies on the inferior (bottom) side
of the brain around where the temporal and the occipital lobes meet. The VOTC
contains areas that respond when particular categories of objects appear in the
visual field. In this project, we will focus on category-selective areas that
represent faces, body parts, words/characters, and places.


