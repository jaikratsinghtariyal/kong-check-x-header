local typedefs = require "kong.db.schema.typedefs"

-- Grab pluginname from module name
local plugin_name = "check-x-header"

local schema = {
  name = plugin_name,
  fields = {
    {
      route = typedefs.no_route,
    },
    {
      service = typedefs.no_service,
    },
    {
      consumer = typedefs.no_consumer,
    },
    {
      protocols = typedefs.protocols_http,
    },
    { config = {
        type = "record",
        fields = {
          {
            X-Auth-Token = {
              type = "string",
              required = true,
            },
          }
        }
      },
    },
  },
}

return schema
