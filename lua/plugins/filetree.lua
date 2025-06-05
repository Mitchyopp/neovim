return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function ()
    vim.g.loaded_netrw = nil
    vim.g.loaded_netrwPlugin = nil

    require("nvim-tree").setup ({
      disable_netrw = false,
      hijack_netrw = false,
    })
  end,
}
