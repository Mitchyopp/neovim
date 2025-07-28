return {
  "echasnovski/mini.nvim",
  version = false,
  config = function ()
   require("mini.pairs").setup()
   require("mini.ai").setup()
   require("mini.align").setup()
   require("mini.comment").setup()
   require("mini.completion").setup()
   require("mini.move").setup()
   require("mini.operators").setup()
   require("mini.surround").setup()
   require("mini.animate").setup()
  end,
}
