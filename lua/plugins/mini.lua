return {
  "echasnovski/mini.nvim",
  version = false,
  config = function ()
   -- Text editing
   require("mini.ai").setup()
   require("mini.align").setup()
   require("mini.comment").setup()
   require("mini.completion").setup()
   require("mini.move").setup()
   require("mini.operators").setup()
   require("mini.pairs").setup()
   require("mini.snippets").setup()
   require("mini.splitjoin").setup()
   require("mini.surround").setup()
   -- Workflow
   require("mini.clue").setup()
   require("mini.diff").setup()
   require("mini.extra").setup()
   require("mini.files").setup({
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
   require("mini.git").setup()
   require("mini.jump").setup()
   require("mini.jump2d").setup()
   -- Appearance
   require("mini.animate").setup()
   require("mini.colors").setup()
   require("mini.cursorword").setup()
   require("mini.hipatterns").setup()
   --require("mini.hues").setup()
   require("mini.icons").setup()
   require("mini.indentscope").setup()
   require("mini.notify").setup()
   require("mini.starter").setup()
   require("mini.statusline").setup()
   require("mini.tabline").setup()
   require("mini.trailspace").setup()
   -- ETC
   require("mini.doc").setup()
   require("mini.test").setup()
  end,
}



