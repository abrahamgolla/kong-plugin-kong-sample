local BasePlugin = require "kong.plugins.base_plugin"

local kongSample = BasePlugin:extend()

kongSample.PRIORITY = 700

function kongSample:new()
  kongSample.super.new(self, "kong-sample")
end

function kongSample:access(config)
  kongSample.super.access(self)
  kong.log.inspect(config.validate_url)
end

return kongSample
