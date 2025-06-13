return {
  'vyfor/cord.nvim',
  build = ':Cord update',
  opts = {
    editor = {
      tooltip = 'The best way to code ;)'
    },
    idle = {
      timeout = 600000,
      show_status = false,
    },
  },
}
