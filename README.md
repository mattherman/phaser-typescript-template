# phaser-typescript-template
A Typescript template for HTML5 games using the Phaser game engine. The files included are a mixture of of the basic template provided in the [phaser-ce](https://github.com/photonstorm/phaser-ce) repository and the [Advanced Phaser and Typescript Projects](http://www.photonstorm.com/phaser/advanced-phaser-and-typescript-projects) tutorial provided on the Photon Storm blog.

The template includes the phaser-ce library, the phaser typescript definitions, and a tsconfig that will generate a bundled javascript file for the game.

The resulting output of building the project is a runnable "game" that can serve as a starting point for any Phaser game.

## Prerequisites
* Typescript

## Building the Project
Simply clone or download the contents of this repository and from the root of the project, run `tsc --project .`. This will use the settings from the `tsconfig.json` file to build the project. The generated javascript bundle is located in the `bin` directory.

## Version
The current version of phaser-ce targeted by the template is 2.10.1.

To upgrade the library to the latest version, please see the instructions in `lib/REAMDE.md`.

This template was built with v2.5.3 of the Typescript compiler, but may work on older versions.
