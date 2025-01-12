-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		requires = {{'nvim-lua/plenary.nvim'} }
	}
	use { "catppuccin/nvim", 
	as = "catppuccin",
	config = function()
		vim.cmd('colorscheme catppuccin-macchiato')
	end
}
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
use('mbbill/undotree')
use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}
use('tpope/vim-fugitive')

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    {'L3MON4D3/LuaSnip'},     -- Required
    {'rafamadriz/friendly-snippets'}
  }
}
end)
