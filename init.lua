vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true
vim.o.smartindent = true
vim.o.termguicolors = false -- Needs to be false for some reason to see properly
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

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank({ timeout = 120 }) end
})

vim.pack.add({
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/echasnovski/mini.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mluders/comfy-line-numbers.nvim" },
	{ src = "https://github.com/vyfor/cord.nvim" },
	{ src = "https://github.com/saecki/crates.nvim" },
	{ src = "https://github.com/j-hui/fidget.nvim" },
	{ src = "https://github.com/folke/twilight.nvim" },
	{ src = "https://github.com/mrcjkb/rustaceanvim" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/rmagatti/auto-session" },
})

require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "vim", "vimdoc", "rust", "toml", "bash", "json", "yaml", "markdown", "markdown_inline", "regex", "html", "css" },
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
    },
  },
})
require "mason".setup()

require "mini.pick".setup()
require "mini.ai".setup()
require "mini.align".setup()
require "mini.comment".setup()
require "mini.completion".setup()
require "mini.move".setup()
require "mini.operators".setup()
require "mini.pairs".setup()
require "mini.snippets".setup()
require "mini.splitjoin".setup()
require "mini.surround".setup()
require("mini.clue").setup({
  triggers = {
    { mode = "n", keys = "<Leader>" },
    { mode = "x", keys = "<Leader>" },
    { mode = "n", keys = "g" },
    { mode = "x", keys = "g" },
    { mode = "n", keys = "[" }, { mode = "n", keys = "]" },
  },
})
require "mini.diff".setup()
require "mini.extra".setup()
require "mini.files".setup({
	mappings = {
		go_in_plus = "<CR>",
		go_in = "1",
		go_out = "h",
	},
	windows = {
		preview = true,
		width_focus = 30,
		width_nofocus = 20,
		width_preview = 60,
	},
	options = {
		use_as_default_explorer = false,
	},
})
require "mini.git".setup()

-- require "mini.animate".setup()

require "mini.cursorword".setup()
require "mini.hipatterns".setup()
require "mini.icons".setup()
require "mini.indentscope".setup()
require "mini.notify".setup()
require "mini.starter".setup()
require "mini.statusline".setup()
require "mini.tabline".setup()
require "mini.trailspace".setup()
require "mini.doc".setup()
require "mini.test".setup()

require "comfy-line-numbers".setup()
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
require("auto-session").setup({
  auto_save = true,
  auto_restore = true,
  auto_create = true,
  suppressed_dirs = { "~/", "~/Downloads", "/" },
  show_auto_restore_notif = true,
})

vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
vim.keymap.set('n', '<leader>fg', ":Pick grep live<CR>")
vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
vim.keymap.set('n', '<leader>e', ":lua MiniFiles.open()<CR>")
vim.keymap.set('n', '<leader>tw', ":lua MiniTrailspace.trim()<CR>")
vim.keymap.set('n', '<leader>gg', ":lua MiniGit.show_at_cursor()<CR>")
vim.keymap.set('n', '<leader>t', ":Twilight<CR>")

vim.lsp.enable({ "lua_ls" })
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

-- vim.cmd("colorscheme kanagawa-dragon")
vim.cmd("colorscheme default")
