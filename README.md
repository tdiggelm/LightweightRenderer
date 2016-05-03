# A Light-weight, Offscreen and Fast 3D Model Renderer

This code is designed for building previews of 3D models. So we aim at rendering many formats of 3D models robustly with acceptable quality. 

### Main Features
1. A light-weight offscreen renderer in C++. 
2. Easy to compile and fast to run. 
3. Run in command line. 
4. Support over 40+ common 3D formats such as OBJ, OFF and COLLADA. 
5. Support materials and textures. 

### Installation

#### Linux (tested on Ubunut 14.04)

First, install dependencies by apt-get:
		
	sudo apt-get install libosmesa-dev libglew-dev libdevil-dev libassimp-dev freeglut3-dev libpng3

You need latest Mesa3D support (>=11.3). It might be tricky to get the support from latest Mesa3D.

Then, build the code by running

	make
  
This will create an executable named `render`

### Usage
run `render` and help message appears.

### Note
Normal smoothing is not enabled. This is to avoid bad rendering when surface normals are incorrect. 
