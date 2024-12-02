# Notice #
The 6502 development evironment has been moved into a Dev Container Template. This makes its intended use case (providing a starting point for your own projects) a lot easier.  I am leaving this repository, and its dev container, up in case folks were following my work here. I have made this dev container basically a shell, it'll try to overwrite itself and apply the new Dev Container Template upon itself.

**WARNING** BACK UP YOUR CODE BEFORE TRYING TO APPLY THIS UPDATE TO AN EXISTING CONTAINER VOLUME, APPLYING THE TEMPLATE MIGHT OVERWRITE ANY LOCAL CHANGES

# How do get this dev container on my machine?
As you have probably noticed, there isn't much in this repo anymore. I moved it all into a template to its use case (you using it to code your own projects, in your own repos) easier. The remaining container is just a shell.

I can offer two ways to use this:
* **RECOMMENDED**: Use the VS Code task (F1) "Dev Containers: New Dev Container" to load the template directly (https://github.com/dhirsch1138/cc65_template)
  * When prompted for the container, type in "ghcr.io/dhirsch1138/cc65_template/cc65_buildrules" without the quotes. I encourage you to check out this repo before doing so, as you will be prompted to trust this container (as it'll be running code). 
* I shared this repo first, so I tried to leave a shell here that loads the new template. Once this dev container is opened, it'll pull down the template https://github.com/dhirsch1138/cc65_template automatically. You'll be prompted to rebuild the container, say yes. If you aren't prompted you can invoke a rebuild using the VS Code task (F1) "Dec Containers: Rebuild Container".
  * If you want everything in a container (including your source code) to keep stuff nice and tidy use the VS Code task (F1) "Dev Containers: Clone Repository in Container Volume". Provide this repo.
  * If you want the code easily accessible outside the container use the native VS Code task (F1) "Git: Clone". Provide this repo and open the folder after cloning. VS Code will notice it is a dev container and prompt you to connect.
  * Any other method. Just get this repo's contents in a folder and open it as a Dev Container in VS Code.


**Recommended**: Use your own repo to track your changes and push them somewhere outside of the container. I don't know how permenant docker containers are, I wouldn't trust a lot of work to one without having it backed up.
