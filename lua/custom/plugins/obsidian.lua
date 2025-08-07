-- ~/.config/nvim/lua/custom/plugins/obsidian.lua
return {
  'epwalsh/obsidian.nvim',
  lazy = true,
  ft = 'markdown', -- more reliable than path-based events
  opts = {
    workspaces = {
      {
        name = 'lms',
        path = '/home/kj/GIT/personal/lms/',
      },
    },
    daily_notes = {
      folder = '50_Daily',
      date_format = '%Y-%m-%d',
      alias_format = '%A, %B %-d, %Y',
      template = '30_Resources/Templates/daily-note.md',
    },
    templates = {
      subdir = '30_Resources/Templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
    },
    completion = {
      nvim_cmp = true,
    },
  },
}
