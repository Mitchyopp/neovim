return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('dashboard').setup {
      theme = 'hyper', -- Or 'doom'
      config = {
        header = {
          '         Welcome to Neovim ✨         ',
          "         It's time to code!           ",
          ''
        },
        center = {
          {
            icon = '  ',
            desc = 'New File                            ',
            action = 'ene | startinsert',
            key = 'n',
          },
          {
            icon = '  ',
            desc = 'Recent Files                        ',
            action = 'Telescope oldfiles',
            key = 'r',
          },
          {
            icon = '  ',
            desc = 'File Browser                        ',
            action = 'NvimTreeToggle',
            key = 'e',
          },
          {
            icon = '  ',
            desc = 'Find File                           ',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            icon = '  ',
            desc = 'Refresh Session                     ',
            action = 'SessionManager load_session',
            key = 's',
          },
          {
            icon = '  ',
            desc = 'Quit                                ',
            action = 'qa',
            key = 'q',
          },
        },
        footer = { 'The code never sleeps' }
      }
    }
  end,
}

