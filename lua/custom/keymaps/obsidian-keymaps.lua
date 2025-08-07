-- [[ Obsidian Custom Keymaps  ]]
vim.keymap.set('n', '<leader>oo', '<cmd>ObsidianOpen<CR>', { desc = 'Open Obsidian app' })
vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianToday<CR>', { desc = "Open today's daily note" })
vim.keymap.set('n', '<leader>oy', '<cmd>ObsidianYesterday<CR>', { desc = "Open yesterday's daily note" })
vim.keymap.set('n', '<leader>ob', '<cmd>ObsidianBacklinks<CR>', { desc = 'View backlinks' })
vim.keymap.set('n', '<leader>of', '<cmd>ObsidianFollowLink<CR>', { desc = 'Follow [[link]]' })
-- Ensure this runs *after* obsidian.nvim is loaded
vim.keymap.set('n', '<leader>ot', '<cmd>ObsidianToday<CR>', { desc = "Open today's daily note" })
vim.keymap.set('n', '<leader>oq', '<cmd>ObsidianQuickSwitch<CR>', { desc = 'Quick open note' })
vim.keymap.set('n', '<leader>ob', '<cmd>ObsidianBacklinks<CR>', { desc = 'Show backlinks' })
vim.keymap.set('n', '<leader>of', '<cmd>ObsidianFollowLink<CR>', { desc = 'Follow [[link]] under cursor' })

-- Habit toggle keymaps
vim.keymap.set('n', '<leader>hm', function()
  require('custom.obsidian.habits').toggle_habit 'mental'
end, { desc = 'Toggle mental habit' })

vim.keymap.set('n', '<leader>hh', function()
  require('custom.obsidian.habits').toggle_habit 'honest_accountability'
end, { desc = 'Toggle journal habit' })

vim.keymap.set('n', '<leader>hp', function()
  require('custom.obsidian.habits').toggle_habit 'physical'
end, { desc = 'Toggle journal habit' })

vim.keymap.set('n', '<leader>hs', function()
  require('custom.obsidian.habits').toggle_habit 'spritual'
end, { desc = 'Toggle journal habit' })

vim.keymap.set('n', '<leader>hj', function()
  require('custom.obsidian.habits').toggle_habit 'journal'
end, { desc = 'Toggle journal habit' })
