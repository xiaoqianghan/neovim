local lsp_config = require("lspconfig")

-- lua/lsp/config/lua.lua
local lua_opts = require("lsp.config.lua")
lsp_config.sumneko_lua.setup(lua_opts)
-- pyright
lsp_config.pyright.setup{}
-- ruby
lsp_config.sorbet.setup{}
