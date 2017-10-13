# phaser-typescript-template
A Typescript template for HTML5 games using the Phaser game engine. The files included are a mixture of of the basic template provided in the [phaser-ce](https://github.com/photonstorm/phaser-ce) repository and the [Advanced Phaser and Typescript Projects](http://www.photonstorm.com/phaser/advanced-phaser-and-typescript-projects) tutorial provided on the Photon Storm blog.

The template includes the phaser-ce library, the phaser typescript definitions, and a Gulpfile that will generate a bundled javascript file for the game.

The resulting output of building the project is a runnable "game" that can serve as the starting point of any Phaser game.

## Prerequisites
* Typescript 

## Version
The current version of phaser-ce targeted by the template is 2.9.1.

The upgrade-phaser.sh script at the root of the repository can be used to upgrade the library to the latest version. To run it you must clone the latest [phaser-ce](https://github.com/photonstorm/phaser-ce) repository and point the script to its location. From there it will copy the necessary assets into the template's `lib` directory. 

This template was built with v2.5.3 of the Typescript compiler, but may work on older versions.
