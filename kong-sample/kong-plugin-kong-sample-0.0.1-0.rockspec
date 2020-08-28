package = "kong-plugin-kong-sample"
version = "0.0.1-0"
source = {
   url = "git://github.com/stone-payments/kong-plugin-url-rewrite",
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.kong-plugin-kong-sample.handler"] = "handler.lua",
    ["kong.plugins.kong-plugin-kong-sample.schema"] = "schema.lua"
   }
}

