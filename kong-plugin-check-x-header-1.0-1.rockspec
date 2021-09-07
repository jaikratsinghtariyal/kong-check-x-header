package = "kong-plugin-check-x-header"
version = "1.0-1"
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "check-x-header"
source = {
  url = "git://github.com/jaikratsinghtariyal/kong-check-x-header",
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  license = "Apache 2.0",
}

dependencies = {
  "lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
