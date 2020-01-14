# zigNeHe

The ancient NeHe OpenGL tutorials, ported to the Zig language.

Based largely on the glfw 2 versions by Joseph Redmon (pjreddie@) https://github.com/pjreddie/NeHe-Tutorials-Using-GLFW with updates for glfw 3. Other useful base material from https://github.com/andrewrk/tetris.

The build.zig files are rather specific to building on my MacOS laptop. If you do not have my particular laptop, you may need to modify things to get it building for you.


## Requirements

Currently builds 
You will need to install and build against glfw (see https://www.glfw.org/). On MacOS, you can brew install it.


## Building and running

In each LessonXX directory, you can build and run the given tutorial by running:

```
$ zig build run
```


## Screenshot

From Lesson 6:

![Screenshot](zigNeHe.png)


## TODO

* Should do error-handling in a more Zig-like way, and actually deal with gl initialization failing.
* All the lessons.
