# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appMeteo4_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appMeteo4_autogen.dir\\ParseCache.txt"
  "appMeteo4_autogen"
  "content\\CMakeFiles\\contentLib_autogen.dir\\AutogenUsed.txt"
  "content\\CMakeFiles\\contentLib_autogen.dir\\ParseCache.txt"
  "content\\CMakeFiles\\contentLibplugin_autogen.dir\\AutogenUsed.txt"
  "content\\CMakeFiles\\contentLibplugin_autogen.dir\\ParseCache.txt"
  "content\\CMakeFiles\\contentLibplugin_init_autogen.dir\\AutogenUsed.txt"
  "content\\CMakeFiles\\contentLibplugin_init_autogen.dir\\ParseCache.txt"
  "content\\contentLib_autogen"
  "content\\contentLibplugin_autogen"
  "content\\contentLibplugin_init_autogen"
  )
endif()
