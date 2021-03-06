What is problem about?
=====================

The included example will solve a one way coupled thermo-mechanical problem. It
is designed both as an example and a verification test of the momentum and
energy equation coupling.

The provided input is configured with a fixed boundary, and the body expands due
to thermal expansions. The residual stress due to the thermal expansion can be
calculated analytically and the numerical solution can be compared with the
analytical solution.

More details can be found in the includes slides.pdf presentation.

How to run this problem?
=======================
a) Generate the input via processing pipeline

  need recent version of gcc (e.g., gcc/7.1.0)
  >./local_makeset.pl clean [to clean any existing input]
  >./local_makeset.pl -np $(NP) [to create input for an NP-core job; you can create input for any number of cores] 

  It will create a directory \box_4CPU containing all inputs

b) Run the pgfem_3d with the generated inputs 
  >./run.sh $(NP)

c) Visualize the displacement via paraview

  1. Open the paraview GUI
  2. File -> Load State -> select the file "parview_displacement_z.pvsm" (or "parview_displacement_y.pvsm") and click OK
  3. Once the paraview state is loaded, point to: out -> box_$(NP)CPU -> VTK -> box_..pvtu
  4. Click onto the "Play" button to see the affect of thermal expansion

