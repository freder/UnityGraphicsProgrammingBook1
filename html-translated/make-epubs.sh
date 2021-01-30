cd vol1
pandoc \
	"Preface.html" \
	"Chapter 1 _ Procedural Modeling Beginning with Unity.html" \
	"Chapter 2 _ Getting Started with ComputeShader.html" \
	"Chapter 3 _ GPU implementation of the simulation of the group.html" \
	"Chapter 4 _ Fluid Simulation by Lattice Method.html" \
	"Chapter 5 _ Fluid Simulation by SPH Method.html" \
	"Chapter 6 _ Growing grass with geometry shaders.html" \
	"Chapter 7 _ Introduction to the Marching Cubes Method Starting with Atmosphere.html" \
	"Chapter 8 _ 3D Spatial Sampling with MCMC.html" \
	"Chapter 9 _ MultiPlane Perspective Projection.html" \
	"Chapter 10 _ Introduction to Projection Spray.html" \
	"Contributors.html" \
	-t epub -o ../UnityGraphicsProgrammingBook1.epub

cd ../vol2
pandoc \
	"Preface.html" \
	"Chapter 1 _ Real-Time GPU-Based Voxelizer.html" \
	"Chapter 2 _ GPU-Based Trail.html" \
	"Chapter 3 _ Application of Geometry Shader for Line Representation.html" \
	"Chapter 4 _ Projection Spray.html" \
	"Chapter 5 _ Introduction to Procedural Noise.html" \
	"Chapter 6 _ Curl Noise-Explanation of Noise Algorithms for Pseudo-Fluids.html" \
	"Chapter 7 _ Shape Matching-Application of Linear Algebra to CG.html" \
	"Chapter 8 _ Space Filling.html" \
	"Chapter 9 _ ImageEffect Getting Started.html" \
	"Chapter 10 _ Application of ImageEffect (SSR).html" \
	"Contributors.html" \
	-t epub -o ../UnityGraphicsProgrammingBook2.epub

cd ../vol3
pandoc \
	"Preface.html" \
	"Chapter 1 _ Baking Skinned Animation to Texture.html" \
	"Chapter 2 _ Gravitational N-Body Simulation.html" \
	"Chapter 3 _ ScreenSpaceFluidRendering.html" \
	"Chapter 4 _ GPU-Based Cellular Growth Simulation.html" \
	"Chapter 5 _ Reaction Diffusion.html" \
	"Chapter 6 _ Strange Attractor.html" \
	"Chapter 7 _ Portal in Unity.html" \
	"Chapter 8 _ Easily express soft deformation.html" \
	"Contributors.html" \
	-t epub -o ../UnityGraphicsProgrammingBook3.epub

cd ../vol4
pandoc \
	"Preface.html" \
	"Chapter 1 _ GPU-Based Space Colonization Algorithm.html" \
	"Chapter 2 _ Limit sets of Kleinian groups.html" \
	"Chapter 3 _ GPU-Based Cloth Simulation.html" \
	"Chapter 4 _ StarGlow.html" \
	"Chapter 5 _ Triangulation by Ear Clipping.html" \
	"Chapter 6 _ Tessellation & Displacement.html" \
	"Chapter 7 _ Poisson Disk Sampling.html" \
	"Contributors.html" \
	-t epub -o ../UnityGraphicsProgrammingBook4.epub
