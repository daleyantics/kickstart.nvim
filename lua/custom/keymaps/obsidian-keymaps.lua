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
