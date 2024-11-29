source="./examples/video3_w_cc65_viafirmware"
sanityfolder1=".vscode"
sanityfolder2=".devcontainer"
containtername="cc65_devcontainer_1"
#starting directory is stage/
cd ..
#we should be in the base of the container
#Look for the expected .vscode and .devcontainer folders. 
#abort if they are missing
if [ ! -d $sanityfolder1 ]
   then 
   echo "$sanityfolder1 not in expected location"
elif [ ! -d $sanityfolder2 ]
   then
   echo "$sanityfolder2 not in expected location"
#IF our directory is the expected containter THEN do the copy
elif [ "$(basename "`pwd`")" = "$containtername" ]
   then
   echo doing copy to stage content
   echo cp $source/* ./ -r
   cp $source/* ./ -r
#ELSE abort
else echo No in expected devcontainer folder $containtername
fi
#cp ../examples/video3_w_cc65_viafirmware ../ -r
