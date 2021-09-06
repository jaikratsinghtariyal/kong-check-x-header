package = "kong-check-x-header"
version = "1.0-1"
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
    ["kong.plugins.kong-check-x-header.handler"] = "plugin/handler.lua",
    ["kong.plugins.kong-check-x-header.schema"] = "plugin/schema.lua",
  }
}