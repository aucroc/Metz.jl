# Metz.jl

ROC Analysis in the style of [Charles E. Metz](https://doi.org/10.1007/s12194-018-0483-0)

## Building

This will not build without a copy of `libroc64.so`

One of these is *obtainable* by going through the
Metz ROC Software page hosted with the University of
Chicago:

- http://metz-roc.uchicago.edu/MetzROC/software

By:

1. Login
2. Download the Java applet
3. Extract the class files and shared object libraries

## Tracking down the copyright

Copyright status of this is vague.

- The [ROC-KIT Users Guide](http://metz-roc.uchicago.edu/MetzROC/software/users-guide-for-roc-kit) refers to a licensing agreement, but I haven't found one yet.
- I haven't found source code yet, but notes on calling into the Fortran routines are included in a [How to call Metz ROC Functions](http://metz-roc.uchicago.edu/MetzROC/software/how-to-call-metz-roc-functions) guide.
