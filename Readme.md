# Bare-bones example for using the KL82-pac

Be sure to clone the [pac](https://github.com/sindrehan/mkl82z7-pac) to the parent
folder before building.

## Running on hardware

Spin up a JLink GDB server like this

```JLinkGDBServer -device MKL82Z128xxx7 -if SWD -speed 4000```

and then simply do `cargo run` to run.
