vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '/home/kj/GIT/personal/lms/**.md',
  callback = function()
    vim.opt_local.conceallevel = 2
    vim.opt_local.concealcursor = 'nc'
  end,
})
