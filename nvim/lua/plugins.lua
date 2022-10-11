local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer no se instalo')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'dracula/vim'
  use 'nvim-lualine/lualine.nvim'
  use 'mg979/vim-studio-dark'
  use 'sonph/onehalf'
  use 'sainnhe/everforest'
  use 'preservim/vim-colors-pencil'
  use 'wuelnerdotexe/vim-enfocado'
  use 'sainnhe/sonokai'
  use 'afamadriz/neon'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- LSP and Autocomplete
  use 'neovim/nvim-lspconfig' 
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'glepnir/lspsaga.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'simrat39/symbols-outline.nvim'
  use 'ray-x/lsp_signature.nvim'

  -- Syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'RRethy/nvim-treesitter-endwise'
  use 'p00f/nvim-ts-rainbow'
  use 'm-demare/hlargs.nvim'
  use 'folke/twilight.nvim'

    -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Bufferline
  use 'akinsho/bufferline.nvim'

  -- File Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- startup
  use 'goolord/alpha-nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use 'kdheepak/lazygit.nvim'
  use 'sindrets/diffview.nvim'

  -- Comments
  use 'numToStr/Comment.nvim'

  -- Better move in buffer
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }

  -- Indent
  use 'lukas-reineke/indent-blankline.nvim'

  -- Wichkey
  use 'folke/which-key.nvim' 
  -- use 'mrjones2014/legendary.nvim'

  -- Scrolling
  use 'karb94/neoscroll.nvim'

  -- Notify
  use 'rcarriga/nvim-notify'

end)
