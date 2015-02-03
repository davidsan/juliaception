# Julia set in Julia with Hadoop Streaming

Implementation of [Julia set](https://en.wikipedia.org/wiki/Julia_set) using
[Julia](http://julialang.org/) and Hadoop Streaming 2.6.0

### Guide

Launch the jobs :
```
$ ./run-hadoop.sh
```

Convert the output to PGM format :
```
$ cat output/part-00000 | julia output2pgm.jl
```

Convert the PGM to PNG :
```
$ convert output.pgm output.png
```

![output.png](https://i.imgur.com/ygYfqn1.png)
