(background:retinotopy)=
# Retinotopic Mapping

The visual cortex is tiled with distinct functional regions, and in many of
these regions is a retinotopic map. Retinotopic maps are maps in which a
topologically preserved representation of the visual field (or retina) can be
found. In other words, within a functional region, points on the cortical
surface process visual input from points in the visual field; further, points
nearby on the cortical surface process points nearby in the visual field,
making a smooth map from the visual field (onto the retina, and) onto the
cortical surface.

Retinotopy mapping is a set of experimental methods for measuring the mapping
of the visual field onto the cortical surface. Although there are many methods
for retinotopic mapping, fMRI is by far the most common method of measurng
retinotopic maps in humans. (See the [chapter on MRI](background:mri) for more
information.)

To measure retinotopic maps using fMRI, a subject typically keeps their eyes
fixated at the center of a screen while some combination of drifting bars,
rotating wedges, and expanding/contracting rings filled with flickering
patterns move across a gray background. These flickering regions of the screen
cause neurons in the retinotopically matched parts of cortex to fire, leading
to changes in the BOLD signal measured by the MRI. (See the [fMRI section](
background:mri:functional) for more information on BOLD.) By modeling the
elevation in the BOLD signal in terms of the position of the stimulus on the
screen, we can determine which parts of the visual field is drives activity in
each position on cortex.


(background:retinotopy:prfs)=
## Population Receptive Fields (pRFs)

Individual neurons in the visual cortex receive input from a particular region
of the visual field called a receptive field (RF) that is roughly similar to a
disk or 2D [Gaussian blob]( https://en.wikipedia.org/wiki/Gaussian_function).
A voxel that is measured by fMRI typically contains a population of hundreds of
thousands of neurons so it instead has a *population* receptive field
(pRF). PRFs are modeled in many ways, but the most commonly used model is as a
2D Gaussian blob with a size $\sigma$ and a position in the visual field,
usually represented in polar coordinates $(\theta, r)$, with $\theta$, the
polar angle, giving the rotation around the fovea and $r$, the eccentricity
giving the distance from the fovea in degrees of visual angle
{cite}`Dumoulin_Wandell_2008`. These properties are shown in
{numref}`Figure {number}<fig-prf>`.

:::{admonition} What is a degree of visual angle?
:class: tip
Positions in the visual field can be measured using cartesian coordinates ($x$
and $y$) or using polar coordinates (polar angle $\theta$ and eccentricity
$r$). The coordinates $x$, $y$, and $r$ are usually measured in degrees of the
visual field. Wherever we point our eyes, the visual field is essentially made
of approximately half of a sphere of light that enters our eyes and travels
through our visual system. At the center of the visual field is the fovea, and
eccentricity ($r$) is simply the degrees along the sphere away from the the
fovea.
:::

:::{figure} ../_static/images/prf-example.svg
:height: 400px
:name: fig-prf
:alt: A schematic of the population receptive field superimposed over the visual field, with the polar angle, eccentricity, and size of the population receptive field indicated.
A pRF in the lower left quadrant of the visual field, represented by the
roughly Gaussian cyan blob.
:::
