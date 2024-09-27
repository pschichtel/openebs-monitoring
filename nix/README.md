## Overview

These are a collection of packages we need, or packages where we
want to control the exact version(s) of.

The packages are imported through the `nix-shell` automatically.

## nix-shell

Build environment including all test and debug dependencies.
It can be run with two arguments:

* `--arg norust true`: to use your own rust toolchain.
* `--arg devrustup true`: to use rustup.
