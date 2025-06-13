return {
  {
    'neovim/nvim-lspconfig',

    dependencies = {
      {
        'folke/lazydev.nvim',
        ft = 'lua',
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()

      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)
      end

      local lspconfig = require('lspconfig')

      local servers = {
        lua_ls = {},
        pyright = {},
        html = {},
        cssls = {},
        ts_ls = {},
        gopls = {},
        clangd = {},
        vimls = {},
        nil_ls = {},
      }

      for name, config in pairs(servers) do
        config.on_attach = on_attach
        lspconfig[name].setup(config)
      end
    end,
  }
}
