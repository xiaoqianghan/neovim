-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")
-- 快捷键映射
require("keybindings")
-- 主题设置 
require("colorscheme")
-- 插件配置 tree project
require("plugin-config.nvim-tree")
-- bufferline error reminder
require("plugin-config.bufferline")
-- telescope fuzzy search
require("plugin-config.telescope")
-- treesitter grammer highlight
require("plugin-config.nvim-treesitter")
-- 内置LSP
require("lsp.setup")
