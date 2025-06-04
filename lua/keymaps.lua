vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File Explorer
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

-- Todo Comments
map("n", "<leader>td", "<cmd>TodoTelescope<CR>", opts)

-- Harpoon (if you're using it)
map("n", "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end, opts)
map("n", "<leader>ha", function() require("harpoon.mark").add_file() end, opts)
map("n", "<leader>hn", function() require("harpoon.ui").nav_next() end, opts)
map("n", "<leader>hp", function() require("harpoon.ui").nav_prev() end, opts)

