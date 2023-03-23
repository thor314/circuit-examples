# Circuit examples for ZK Hack Lisbon 2023
A short demo of reference examples to give inspiration for ZK Hack Lisbon 2023. This repo contains example
implementations of an adder and proof-of-inclusion in a merkle tree in Circom, Risc-0, and Noir.

## Circom
To get started with Circom, follow the installation instructions in the [Circom
docs](https://docs.circom.io/getting-started/installation/#important-deprecation-note), reiterated here for conciseness.
```bash
git clone https://github.com/iden3/circom.git
cd circom
echo -e "\n\this may take several minutes...\n\n"
cargo build --release -q
cargo install --path circom
npm install -g snarkjs
``` 

Once you've written a circuit, compile, choose something to prove, and prove it. See `circom-dotproduct/scripts` for an example
compilation.

## Noir
Installation:
```bash


## Risc 0
