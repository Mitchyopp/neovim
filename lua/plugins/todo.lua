return {
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = true,
      comments_only = false,
      keywords = {
        TODO = { icon = "", color = "info" },
        FIX =  { icon = "", color = "error", alt = { "FIXME", "BUG", "FIXIT" } },
        WARN = { icon = "", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = "", color = "default", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = "", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      highlight = {
        keyword = "wide",
        after = "fg",
        pattern = [[.*<(KEYWORDS)]],
        comments_only = false,
      },
    },
  }
}
