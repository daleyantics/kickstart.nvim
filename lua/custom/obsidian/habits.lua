local M = {}

-- Toggles a boolean habit in the frontmatter
function M.toggle_habit(habit_key)
  local bufnr = vim.api.nvim_get_current_buf()
  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

  local inside_yaml = false
  local new_lines = {}
  local habit_found = false

  for i, line in ipairs(lines) do
    if line == '---' then
      inside_yaml = not inside_yaml
    end

    if inside_yaml and line:match('^' .. habit_key .. ':') then
      habit_found = true
      local value = line:match ': (.+)'
      local toggled = (value == 'true') and 'false' or 'true'
      table.insert(new_lines, habit_key .. ': ' .. toggled)
    else
      table.insert(new_lines, line)
    end
  end

  if habit_found then
    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, new_lines)
    print('Toggled habit: ' .. habit_key)
  else
    print('Habit not found: ' .. habit_key)
  end
end

return M
