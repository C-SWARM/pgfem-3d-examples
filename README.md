What is problem about?
=====================

The included example will solve a one way coupled thermo-mechanical problem. It
is designed both as an example and a verification test of the momentum and
energy equation coupling.

The provided input is configured with a fixed boundary, and the body expands due
to thermal expansions. The residual stress due to the thermal expansion can be
calculated analytically and the numerical solution can be compared with the
analytical solution.

How to run this problem?
=======================
a) Generate the input via processing pipeline

  need recent version of gcc (e.g., gcc/7.1.0) which is included into the docker
  >./local_makeset.pl clean [to clean any existing input]
  >./local_makeset.pl -np 4 [to create input for a 4-core job; you can create input for any number of cores] 

  It will create a directory \box_4CPU containing all inputs

b) Run the pgfem_3d with the generated inputs 
  >./run.sh 

c) Visualize the displacement via paraview

  1. Open the paraview GUI
  2. File -> Load State -> select the file "parview_displacement_y.pvsm" or "parview_displacement_z.pvsm" and click OK
  3. Click onto the "Play" button to see the affect of thermal expansion 
