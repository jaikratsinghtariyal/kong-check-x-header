local typedefs = require "kong.db.schema.typedefs"

-- Grab plugin name from module name
local plugin_name = ({...})[1]:match("^kong%.plugins%.([^%.]+)")


local schema = {
  name = plugin_name,
  fields = {
    -- { route = typedefs.no_route },
    -- { service = typedefs.no_service },
    { consumer = typedefs.no_consumer },
    { protocols = typedefs.protocols_http },
    { config = {
      type = "record",
      fields = {
        { X_Auth_Token = { type = "string", required = true, default  = "true" }, }
      }
    }, },
  },
}

return schema
