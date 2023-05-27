vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "j-hui/fidget.nvim",
    run = ":MasonUpdate", -- :MasonUpdate updates registry contents
  }

  use {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("lsp_signature").setup()
    end
  }

  use {
    "nvim-lua/plenary.nvim",
    "jose-elias-alvarez/null-ls.nvim"
  }

  use 'simrat39/rust-tools.nvim'

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

     -- For vsnip users.
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip'
  }

  use 'nvim-treesitter/nvim-treesitter'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons'
  }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use 'folke/tokyonight.nvim'

  use {
  "folke/which-key.nvim",
  config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup()
    end
  }
end)
