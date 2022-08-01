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
    
    -- telescope  depend on rigrep
    -- install ripgrep
    -- sudo add-apt-repository ppa:x4121/ripgrep
    -- sudo apt-get update
    -- sudo apt install ripgrep
    use {'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    -- uncessary plugin
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    
    -- treesitter grammer highlight
    -- :TSInstallInfo
    -- :TSInstall <language_to_install>
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
    -- :CocInstall coc-elixir
    -- depends node > 12
    -- modify coc-settings.json elixir ls path
    use {'neoclide/coc.nvim', branch = 'release'}
    -- Packer
    use { "williamboman/mason.nvim" }
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

