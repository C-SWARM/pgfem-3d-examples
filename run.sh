#!/bin/bash

NP=4                   # number of Cores used
echo $NP

TEST_DIR=$PWD
name=box
input=${name}_${NP}CPU/${name}_
output=${TEST_DIR}/out/${name}_${NP}CPU/${name}

exe=/opt/pgfem-3d/bin/PGFem3D

opts="-SS -cm 1 -noLS -noCCE -no-compute-reactions -no-compute-macro -maxit 3000 -kdim 1000 -V"

run="mpirun -np $NP $exe  $opts $input $output"
echo $run
$run
