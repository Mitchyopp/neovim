require("config.lazy")
-- Basic settigns
-- This is also a comment

vim.opt.number = true
vim.opt.relativenumber = false -- Not sure how this works yet so it's disabled. 
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- keymaps

vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>e', ':Explore<CR>')

-- telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' })

-- Filetree

vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>')

-- colorscheme

-- vim.cmd('colorscheme slate')
