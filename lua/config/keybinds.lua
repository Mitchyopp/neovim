-- keymaps

vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>e', ':Explore<CR>')
vim.keymap.set('n', '<leader>p', '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set('n', '<leader>P', '"+P', { desc = "Paste before from system clipboard" })
vim.keymap.set('v', '<leader>p', '"+p', { desc = "Paste from system clipboard (visual)" })
vim.keymap.set('v', '<leader>P', '"+P', { desc = "Paste before from system clipboard (visual)" })

vim.g.mapleader = " "

-- telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' })

-- Filetree

vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>')

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File Explorer
map("n", "<leader>e", ":Ex<CR>", opts)

-- Todo Comments
map("n", "<leader>td", "<cmd>TodoTelescope<CR>", opts)

-- Harpoon (if you're using it)
map("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end, opts)
map("n", "<leader>ha", function() require("harpoon.mark").add_file() end, opts)
map("n", "<leader>hn", function() require("harpoon.ui").nav_next() end, opts)
map("n", "<leader>hp", function() require("harpoon.ui").nav_prev() end, opts)

