(background:human-vision)=
# The Human Visual System

:::{admonition} Further Reading
:class: tip

This page provides a high-level overview of the human visual system, but it is
not intended as a thorough treatment of the subject. For further reading, we
suggest *The Foundations of Vision* by Brian Wandell {cite}`Wandell_1995`,
available online [here](https://wandell.github.io/FOV-1995/).
:::

The human visual system begins in the eye where light passes through the optics
of the front of the eye and through to the retina. In the retina, various
photoreceptors detect the light and pass signals through mediating cells to the
first neurons of the visual pathway called retinal ganglion cells (RGCs), which
connect directly to the brain. The visual field is transformed but
topologically preserved on the retina ({numref}`Fig. {number}<fig-retina>`),
and functional regions of the brain in which this topological organization is
preserved are called "retinotopic maps".

:::{figure} ../_static/images/visual-field-to-retina.png
:name: fig-retina
:alt: An illustration of the the visual field projecting through the optics of the eye and onto the retina. A pattern on the visual field is seen transformed on the retina, demonstrating a retinotopic map.
:height: 400px
Light from the visual field passes through the optics of the eye to the
retina. On the back of the retina, the neurons that process the visual field
form a transformed but topologically preserved map of it. Such topologically
preserved maps in the brain are called "retinotopic maps".
:::

Although vision begins in the eyes, and although substantial visual processing
begins in that very first layer of mediating cells, *most* of human vision
happens in the brain.

The first post-retinal [synapse](https://en.wikipedia.org/wiki/Synapse) (i.e.,
junction between neurons) of the visual system is in a subcortical brain
structure called the lateral geniculate nucleus (LGN). RGCs from the retina are
routed through a junction near the front of the brain called the optic chiasm
where they are sorted according to whether they receive input from the left or
the right half of the visual field. Neurons from both eyes that receive input
from the right half of the visual field project through the optic chiasm to the
brain's left hemisphere, and neurons receiving input from the left visual field
project to the right hemisphere ({numref}`Fig. {number}<fig-tracts>`).

:::{admonition} "subcortical"
:class: tip
A "subcortical" brain structure is a structure that is buried beneath the
cerebral cortex. The cerebral cortex, often just called cortex, is the large
wrinkled part of the top of the brain that consists of "gray matter" and "white
matter". Brain structures like the amygdala and the cerebellum are subcortical.
Cortical brain regions like Broca's area and the motor homunculus are cortical
regions.
:::

:::{figure} ../_static/images/left-right-visual-field.png
:name: fig-tracts
:alt: An illustration of the left and right visual fields projecting to the retina and from there back to the right and left visual cortices, respectively.
:height: 400px
The left and right visual field project through the optics of the eye onto
particular parts of the retina, no matter where the eyes are pointed. The RGC
neurons of the retina project through a junction called the optic chiasm where
they are sorted based on the half (left or right) of the visual field from
which they receive input, and back to the LGN (not shown) of the contralateral
hemisphere (right visual field projects to left hemisphere and left to
right). In the LGN, the RGCs synapse with neurons whose cell bodies lie in the
primary visual cortex (V1), at the very back of the brain.
:::

These neurons that connect the retina to the visual cortex in the back of the
brain run along fiber tracts in the brain's "white matter". In
{numref}`Figure {number}<fig-tracts>`, there is a thin layer of darker tissue
visible along the edge of the cerebral cortex surrounding slightly lighter
tissue. The lighter tissue in the middle of the brain is the white matter, and
it consists primarily of connections between neurons, a bit like the wires that
connect the processors of a supercomputer. The darker tissue surrounding the
white matter is called the "gray matter", and it contains most of the cell
bodies of the neurons in the cortex, much like the processors of a
supercomputer themselves.

The gray mater consists of several thin layers that are topologically
equivalent to the (2D) surfaces of spheres. This 2D shape is important because
it means that we can visualize and describe regions of the brain in terms of
where they lie on a 2D surface, and, in fact, we often inflate the surface of
hemisphere of a surface to aid in visualization
({numref}`Fig. {number}<fig-inflation>`). For the purposes of this project, we
will ignore all functional differences between layers of the gray matter and
treat it as purely 2D.

:::{admonition} Are the hemispheres really topologically spheres?
:class: tip
Arguably, the cortical surface of a hemisphere of the brain isn't really
topologically equivalent to a sphere because the corpus callosum makes a hole
in the sphere along the hemisphere's medial surface. This is perfectly true,
but we typically treat the medial surface as a very thin surface of gray matter
in order to make calculations simpler.
:::

:::{figure} ../_static/images/cortical-inflation.png
:name: fig-inflation
:alt: A sequence of renderings of the left and right hemispheres of a human brain. In the first image, the natural pial surface of the hemispheres is shown. In the second image, an smoother more inflated version of the same surface is shown. In the next image, the hemispheres are even more inflated, and in the final image, they have been inflated into individual spheres.
:height: 400px
Each hemisphere of the brain can be separately inflated into a sphere by
iteratively smoothing the cortical surface. Once the surface has been inflated
to a sphere, an orthographic projection of the sphere can be used to make a 2D
disk called a "flatmap" that represents part of the cortical surface. These
flatmaps are often useful for visualization. In the figure, the dark gray
indicates sulci (valleys) on the cortical surface while the light gray
indicates gyri (peaks).
:::

The 2D surface of the human visual cortex is tiled with separate functional
regions (i.e., patches of cortex that perform a similar function). The first of
these regions is called "V1" as well as "primary visual cortex" and "striate
cortex". V1 is the location where neurons from the LGN first arrive at cortex,
and it is responsible in part for processing lines and edges in the visual
field {cite}`Hubel_Wiesel_1959`. From V1, neurons project to many other visual
areas, most of which cover the posterior part of the cerebral cortex
({numref}`Fig. {number}<fig-maps>`). Together, these regions of the visual
cortex makes up approximately 25% of the cortical surface in humans.

:::{figure} ../_static/images/wang-atlas-areas.png
:name: fig-maps
:alt: A pair of flattened cortical surface maps of left and right hemispheres from an example subject. Over twenty separate visual areas are marked and labeled on each map: V1, V2, V3, hV4, VO1, VO2, PHC1, PHC2, LO1, LO2, TO1, TO2, V3a, V3b, IPS0, IPS1, and IPS2.
:height: 400px
Flattened orthographic projections of the posterior left and right cortical
surfaces of an example subject. In each map, numerous visual areas are colored
and labeled based on the Wang full probability atlas of visual areas
{cite}`Wang_etal_2015`.
:::

