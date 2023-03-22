#!/bin/bash
MY_CIRCUIT=verify-merkle-path
if [[ ! -d target ]] ; then 
    mkdir target
fi

circom $MY_CIRCUIT.circom --r1cs --wasm --sym -o target/

