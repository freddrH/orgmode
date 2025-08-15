a = 'aäi'

for i = 1, #a, 1 do
  local char_start = vim.str_utf_start(a, i)
  local char_end = vim.str_utf_end(a, i)
  local charclass = vim.fn.charclass(a:sub(i + char_start, i + char_end))

  print('----')
  print(vim.fn.charclass(a:sub(i)))
  print(charclass)
  print('----')
end
