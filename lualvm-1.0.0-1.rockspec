-- This file was automatically generated for the LuaDist project.

package = "lualvm"
version = "1.0.0-1"
-- LuaDist source
source = {
  tag = "1.0.0-1",
  url = "git://github.com/LuaDist-testing/lualvm.git"
}
-- Original source
-- source = {
--    url = "git://github.com/gilzoide/lualvm",
--    tag = "v1.0.0"
-- }
description = {
   summary = "Lua wrapper for the LLVM-C API",
   detailed = [[
LuaLVM is a Lua wrapper around the LLVM-C API, tested on LLVM 3.9 (should work
with other versions)
]],
   license = "LGPLv3",
   maintainer = "gilzoide <gilzoide@gmail.com>"
}
dependencies = {
   "lua >= 5.2"
}
external_dependencies = {
   LIBLLVM = {
      header = "llvm-c/Core.h"
   }
}
build = {
   type = "cmake",
   variables = {
        CMAKE_INSTALL_PREFIX = "$(PREFIX)",
		LIBDIR = "$(LIBDIR)",
		LUADIR = "$(LUADIR)"
   },
}