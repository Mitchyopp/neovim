return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')

    telescope.setup {
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
        layout_strategy = "horizontal",
        layout_config = {
          width = 0.9,
          height = 0.85,
          prompt_position = "top",
          preview_cutoff = 120,
        },
        sorting_strategy = "ascending",
        file_ignore_patterns = { "node_modules", ".git/", "dist/", "target/" },
        mappings = {
          i = {
            ["<esc>"] = require('telescope.actions').close,
          },
        },
      },
      pickers = {
        find_files = {
          theme = "dropdown",
          previewer = false,
        },
        live_grep = {
          theme = "dropdown",
        },
      },
    }
  end,
}

