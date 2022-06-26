local packer = require("packer")
packer.startup(
  function(use)
    -- Packer 可以管理自己本身
    use 'wbthomason/packer.nvim'
    -- theme tokyonight
    use("folke/tokyonight.nvim")
    -- gruvbox
    use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
    -- nvim-tree project file tree
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline reminder
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }}) 
    -- telescope
    use {'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    -- treesitter grammer highlight
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    -- hop quick remove
    use {
      'phaazon/hop.nvim',
      branch = 'v1', -- optional but strongly recommendSed
      config = function()
      -- you can configure Hop the way you like here; see :h hop-config
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }
    -- lsp client
    use({"neovim/nvim-lspconfig" })
    -- autocomplete and snippets
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")
    use("onsails/lspkind-nvim")
    -- Packer
    end)

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)

