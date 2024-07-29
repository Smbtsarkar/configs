local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_INSTALL = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  }
  print("Installing packer - close and reopen once done.")
  vim.cmd [[ packadd packer.nvim ]]
end

-- Reload neovim once plugins.lua is saved
vim.cmd [[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Check if packer is installed
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("Packer is not installed!")
  return
end

-- Use a pop-up window instead of full screen
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end
  }
}

-- Install the plugins
return packer.startup(function(use)
  -- required plugins
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  -- colorshemes
  use 'bluz71/vim-moonfly-colors'
  use 'bluz71/vim-nightfly-colors'
  use 'nyoom-engineering/nyoom.nvim'
  use 'catppuccin/nvim'
  use 'oxfist/night-owl.nvim'
  use 'dasupradyumna/midnight.nvim'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'

  -- LSP 
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  -- Fuzzy finder
  use 'nvim-telescope/telescope.nvim'
  
  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- Automatically setup the config
  if PACKER_INSTALL then
    require("packer").sync()
  end
end)
