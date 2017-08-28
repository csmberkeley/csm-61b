# csm-61b [![Build Status](https://travis-ci.org/csmberkeley/csm-61b.svg?branch=master)](https://travis-ci.org/csmberkeley/csm-61b)

The central repository for CSM 61B worksheets.

The repository is split up into two subsections. `src` denotes the current set
of worksheet templates which draw their questions from the pool of `topics`.

The style is provided by `commonheader.sty`.

## Deployed Handouts

* [Mentoring 2](https://csmberkeley.github.io/csm-61b/mentor02.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor02_sol.pdf))
* [Mentoring 3](https://csmberkeley.github.io/csm-61b/mentor03.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor03_sol.pdf))
* [Mentoring 4](https://csmberkeley.github.io/csm-61b/mentor04.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor04_sol.pdf))
* [Mentoring 5](https://csmberkeley.github.io/csm-61b/mentor05.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor05_sol.pdf))
* [Mentoring 6](https://csmberkeley.github.io/csm-61b/mentor06.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor06_sol.pdf))
* [Mentoring 7](https://csmberkeley.github.io/csm-61b/mentor07.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor07_sol.pdf))
* [Mentoring 8](https://csmberkeley.github.io/csm-61b/mentor08.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor08_sol.pdf))
* [Mentoring 9](https://csmberkeley.github.io/csm-61b/mentor09.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor09_sol.pdf))
* [Mentoring 10](https://csmberkeley.github.io/csm-61b/mentor10.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor10_sol.pdf))
* [Mentoring 11](https://csmberkeley.github.io/csm-61b/mentor11.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor11_sol.pdf))
* [Mentoring 12](https://csmberkeley.github.io/csm-61b/mentor12.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor12_sol.pdf))
* [Mentoring 13](https://csmberkeley.github.io/csm-61b/mentor13.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor13_sol.pdf))
* [Mentoring 14](https://csmberkeley.github.io/csm-61b/mentor14.pdf)
  ([Solution](https://csmberkeley.github.io/csm-61b/mentor14_sol.pdf))

## Making Handouts

To make an individual worksheet, run the following command in the repository's
root directory.

    make mentor00

To make multiple worksheets at once, modify the `Makefile` by adding the names
of the worksheets you'd like to make, and the solutions as necessary.

    RELEASED = mentor00 mentor01 mentor02
    SOLUTIONS = mentor00 mentor01

Then, run `make all` to build all the worksheets in the `published` directory.

If necessary, clean the local files with `make clean`.
