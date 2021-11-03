--
-- hashdeep 4.4 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Other"
-- "Description: This is hashdeep, a set of cross-platform tools to compute hashes, or message digests, for any number of files while optionally recursively digging through the directory structure."

whatis("Name: hashdeep")
whatis("Version: 4.4")
whatis("Category: Other")
whatis("Description: This is hashdeep, a set of cross-platform tools to compute hashes, or message digests, for any number of files while optionally recursively digging through the directory structure.")

help([[
This is hashdeep, a set of cross-platform tools to compute hashes, or message digests, for any number of files while optionally recursively digging through the directory structure.

To load the module, type

> module load hashdeep/4.4

To unload the module, type

> module unload hashdeep/4.4

Documentation
-------------
For help, type

> hashdeep -h

Tools included in this module are

* hashdeep
]])

local package = "hashdeep"
local version = "4.4"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
