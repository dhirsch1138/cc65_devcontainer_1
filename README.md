**CC 65 Dev Container_1**
This is my working sandbox to develop a functional 6502 dev container for use with ben eater's 6502 projects. This dev container is targeted for VSCode but could easily be adapted (see the vscode extensions in the devcontainer.json). It gives you:
* An installed and configured 6502 compile chain in cc65, with the 'make file' already built
** This gives more features than vasm (see the .c65\firmware\firmware.cfg file and compare it against the sample blink.s)
** This is a standardized chain that also supports C code (though my file and rules prob won't support that)

**Dev Containers** https://code.visualstudio.com/docs/devcontainers/containers#getstarted-articles
* What are they? Dev containers are self contained containers that contain everything needed to code and compile a project (or really do anything, they are super flexible). You can use this one to code 6502 asm, compile it using cc65, and load it onto the eprom using minipro. You don't actually have to install any of that on your machine, it is all automagically in the dev container for youl
* Why am I using a dev container? I am both meticious and lazy. I want my environment a specific way, but I am far too lazy to document it or recreate it verbatim every time I want to change something. This also lets me share it with you.

**What do I need to use this?**
* Follow the instructions on https://code.visualstudio.com/docs/devcontainers/containers#getstarted-articles. But basically you need: docker, vscode, and the dev container extension. 

**That's all great, how do get this on my machie?**
* There are a bunch of ways, but I would suggest:
** clone the folder down yourself using GIT, and use VsCode to Open Folder. It'll automagically recognize there is a dev container, and ask if you want to open it as a dev container. Say yes. Profit
** Use VS Code to "Clone git repository to a local folder". It'll automagically recognize there is a dev container, and ask if you want to open it as a dev container. Say yes. Profit

**Recommended**: Use this folder structure (you may need to nuke the .git folder) to create your own git repo if you'd like to track your changes

**I'm in the dev container, now what?**

Source Code
* Source file goes in source\ as a file with .s extension (multiple .s will build on top of eachother, be warned)
* Example of blink.s is included
* included code is supported (this example puts the reset stuff in reset_interrupts.s.inc)

Assembling & Linking
* "make all" to build the source, generated "output.bin" will be placed in build.


**Attributions and Resources**
* **dbuchwald** https://github.com/dbuchwald/cc65-tools This project is only possible because of their makefile rules and configuration. Sorry for butchering your work. Please give me suggestions/pointers/advice.
* **MINIPRO** https://gitlab.com/DavidGriffith/minipro As this project clones, builds, packages, and utilizes minipro. 
* **Ben Eater** https://eater.net/6502 The amazing person who has taught us all a lot, and put an amazing tutorial together
* **Garth Wilson** http://wilsonminesco.com/6502primer/65tutor_intro.html The 6502 primer. Enough said.