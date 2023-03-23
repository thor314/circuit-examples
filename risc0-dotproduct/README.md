# Risc-0 Dotproduct example
An example, computing the dotproduct of two 2-dimensional vectors with Risc0.

Main tip:
Unless your inputs are simple, write a wrapper `Inputs` or `Args` struct in a separate `core` library, and use the library from your `methods` and `dotproduct` (or whatever your binary crate is called) to serialize and deserialize the argument. This sidesteps some issues with the Risc-0 glue code, which tends to produce difficult to read errors.
