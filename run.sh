#!/bin/bash

if [ -z $1 ]
then
    echo "Please supply the number of domains that the input is decomposed into"
    exit 1
fi

NP=$1                   # number of Cores used
echo "executing for $NP domains"

TEST_DIR=$PWD
name=box
input=${name}_${NP}CPU/${name}_
output=${TEST_DIR}/out/${name}_${NP}CPU/${name}

exe=/opt/pgfem-3d/bin/PGFem3D

opts="-SS -cm 1 -noLS -noCCE -no-compute-reactions -no-compute-macro -maxit 3000 -kdim 1000 -V"

run="mpirun -np $NP $exe  $opts $input $output"
echo $run
$run
