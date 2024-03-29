![Status](https://github.com/pscedu/singularity-hashdeep/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-hashdeep/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-hashdeep)
![forks](https://img.shields.io/github/forks/pscedu/singularity-hashdeep)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-hashdeep)
![License](https://img.shields.io/github/license/pscedu/singularity-hashdeep)

# singularity-hashdeep
Singularity recipe for [hashdeep](https://github.com/jessek/hashdeep).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `hashdeep`, `sha1deep`, `tigerdeep`, `md5deep`, `sha256deep` and `whirlpooldeep` scripts

to `/opt/packages/hashdeep/4.4`.

Copy the file `modulefile.lua` to `/opt/modulefiles/hashdeep` as `4.4.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2024 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
