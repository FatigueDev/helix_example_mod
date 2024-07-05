Note that both:
annotations/
lua_libraries/

Are symbolic links to the same folders in the HelixLib_DevKit build of HelixLib (So, the Debug build task).
You can just a simply use the entire folder, but if you can symbolically link the folders to up in the folder hierarchy to keep your mod path clean that's preferred.
Don't commit the _actual_ annotations and lua_libraries folders with your mod or I'll be grouchy about it.
