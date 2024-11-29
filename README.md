This is my working sandbox to develop a functional 6502 dev container for use with ben eater's 6502 projects.
This is targeted for VSCode (See use of extentions)

Dev Containers https://code.visualstudio.com/docs/devcontainers/containers#getstarted-articles
* What are they? Dev containers are self contained containers that contain everything needed to code and compile a project (or really do anything, they are super flexible). You can use this one to code 6502 asm, compile it using cc65, and load it onto the eprom using minipro. You don't actually have to install any of that on your machine, it is all automagically in the dev container for youl
* Why am I using a dev container? I am both meticious and lazy. I want my environment a specific way, but I am far too lazy to document it or recreate it verbatim every time I want to change something. This also lets me share it with you.

What do I need to use this?
* Follow the instructions on https://code.visualstudio.com/docs/devcontainers/containers#getstarted-articles. But basically you need: docker, vscode, and the dev container extension. 

That's all great, how do I use this:
* There are a bunch of ways, but I would suggest:
** clone the folder down yourself using GIT, and use VsCode to Open Folder. It'll automagically recognize there is a dev container, and ask if you want to open it as a dev container. Say yes. Profit
** Use VS Code to

Source Code
* Source file goes in source\ as a file with .s extension (multiple .s will build on top of eachother, be warned)
* Example of blink.s is included

Assembling & Linking
* "make all" to build the source, generated "output.bin" will be placed in build.


