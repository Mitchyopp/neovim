-- Vim.options

vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.undofile = true
vim.opt.undodir = vim.fn.expand("$HOME/.config/nvim/undodir")
vim.o.autoread = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.o.scrolloff = 4
vim.o.clipboard = "unnamedplus"
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.confirm = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.breakindent = true
vim.o.linebreak = true
vim.o.smoothscroll = true
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function() vim.highlight.on_yank({ timeout = 120 }) end
})

-- Vim.keymaps

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })
-- vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("n", "<leader>e", ":lua MiniFiles.open()<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set('n', '<leader>ff', ":Pick files<CR>")
vim.keymap.set('n', '<leader>fg', ":Pick grep live<CR>")
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
vim.keymap.set('n', '<leader>tw', ":lua MiniTrailspace.trim()<CR>")
vim.keymap.set('n', '<leader>gg', ":lua MiniGit.show_at_cursor()<CR>")
vim.keymap.set({ "n", "x" }, "d", '"_d') -- Makes it so deleting does not go to clipboard
vim.keymap.set({ "n", "x" }, "c", '"_c') -- Makes it so deleting does not go to clipboard
vim.keymap.set({ "n", "x" }, "x", '"_x') -- Makes it so deleting does not go to clipboard
vim.keymap.set('n', '<leader>tt', ":Twilight<CR>")
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- Vim.Pack

vim.pack.add({
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/nvim-mini/mini.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/mluders/comfy-line-numbers.nvim" },
	{ src = "https://github.com/vyfor/cord.nvim" },
	{ src = "https://github.com/saecki/crates.nvim" },
	{ src = "https://github.com/j-hui/fidget.nvim" },
	{ src = "https://github.com/folke/twilight.nvim" },
	{ src = "https://github.com/mrcjkb/rustaceanvim" },
	{ src = "https://github.com/windwp/nvim-ts-autotag" },
	{ src = "https://github.com/stevearc/conform.nvim" },
})

-- Vim.Lsp

require('mason').setup()
require('mason-lspconfig').setup()
require('mason-tool-installer').setup({
	ensure_installed = {
		"lua_ls",
		"html-lsp",
		"css-lsp",
		"typescript-language-server",
		"bash-language-server",
		"vim-language-server",
		"prettierd",
	}
})

-- Vim.Plugins

require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "vim", "vimdoc", "html", "css", "javascript", "bash", "json", "markdown", "markdown_inline" },
	highlight = { enable = true },
	indent = { enable = true, disable = { "html" } },
})
require "cord".setup({
	editor = {
		tooltip = 'The best way to code ;)'
	},
	idle = {
		timeout = 600000,
		show_status = false,
	},
})
require "crates".setup()
require "fidget".setup()
require "twilight".setup()
require("nvim-ts-autotag").setup()

-- Vim.Mini

-- Needed
require("mini.completion").setup() -- For lsp to auto popup
require("mini.pairs").setup()
require("mini.extra").setup()
do
	local hipatterns = require("mini.hipatterns")
	require("mini.hipatterns").setup({
		highlighters = {
			-- Standalone keywords
			fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
			hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
			todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
			note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

			-- Hex colors → swatch highlight
			hex_color = hipatterns.gen_highlighter.hex_color(),
		},
	})
end
require("mini.icons").setup()
require("mini.indentscope").setup()
require("mini.notify").setup()
require("mini.statusline").setup()
require("mini.trailspace").setup()

-- Maybe
require("mini.ai").setup({
  n_lines = 500,
  custom_textobjects = {
    f = require("mini.ai").gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
    c = require("mini.ai").gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }),
    p = require("mini.ai").gen_spec.treesitter({ a = "@parameter.outer", i = "@parameter.inner" }),
  },
})
require("mini.surround").setup()
require("mini.snippets").setup() -- Need to look into this it looks like i need to make a snippets folder and make my own snippets
require("mini.files").setup({
	mappings = {
		go_in		='<CR>',
	},
})
require("mini.git").setup()
require("mini.cursorword").setup()
require("mini.pick").setup()

require("kanagawa").setup({
	theme = "wave",
	transparent = true,
	colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
})

vim.cmd.colorscheme("kanagawa")
