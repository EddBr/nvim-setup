return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = {{'nvim-lua/plenary.nvim'} }
	},
	{ "catppuccin/nvim", 
	as = "catppuccin",
	config = function()
		vim.cmd('colorscheme catppuccin-macchiato')
	end
},
{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
'nvim-treesitter/playground',
"nvim-lua/plenary.nvim", -- don't forget to add this one if you don't have it yet!
'mbbill/undotree',
{
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon"):setup()
	end,
	keys = {
		{"<leader>a", function() require("harpoon"):list():add() end},
		{"<C-e>", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end},

		{"<C-h>", function() require("harpoon"):list():select(1) end},
		{"<C-t>", function() require("harpoon"):list():select(2) end},
		{"<C-n>", function() require("harpoon"):list():select(3) end},
		{"<C-s>", function() require("harpoon"):list():select(4) end},

		-- Toggle previous & next buffers stored within Harpoon list
		{"<C-S-P>", function() require("harpoon"):list():prev() end},
		{"<C-S-N>", function() require("harpoon"):list():next() end},

	},
},
'tpope/vim-fugitive',

{
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	dependencies = {
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
}
