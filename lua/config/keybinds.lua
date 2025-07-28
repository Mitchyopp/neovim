vim.g.mapleader = " "

-- keymaps

vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
-- vim.keymap.set('n', '<leader>e', ':Explore<CR>')

-- telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help Tags' })

-- Filetree

-- vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>')

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File Explorer
--map("n", "<leader>e", ":Ex<CR>", opts)

-- Todo Comments
map("n", "<leader>td", "<cmd>TodoTelescope<CR>", opts)

-- Harpoon

local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)

vim.keymap.set("n", "<leader>h", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end)

vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end)

vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end)

vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end)

vim.keymap.set("n", "<leader>n", function()
  harpoon:list():next()
end)

vim.keymap.set("n", "<leader>p", function()
  harpoon:list():prev()
end)

-- Mini.nvim

map("n", "<leader>e", function ()
 require("mini.files").open(vim.api.nvim_buf_get_name(0))
end, { desc = "File explorer" })

map("n", "<leader>J", function ()
 require("mini.jump").jump()
end, { desc = "Jump to word" })

map("n", "s", function ()
 require("mini.jump2d").start()
end, { desc = "Jump 2D" })

map("n", "<leader>gg", function ()
 require("mini.git").show_at_cursor()
end, { desc = "Show git hunk" })

map("n", "<leader>tw", function ()
 require("mini.trailspace").trim()
end, { desc = "Trim whitespace" })

map("n", "<leader>S", function ()
 require("mini.starter").open()
end, { desc = "Dashboard" })
