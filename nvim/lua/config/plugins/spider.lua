return {
  'chrisgrieser/nvim-spider',
  event = { 'BufReadPre', 'BufNewFile' },
  keys = {
    { 'w', '<cmd>lua require("spider").motion("w")<CR>', mode = {'n', 'o', 'x'}, desc = 'spider-w' },
    { 'b', '<cmd>lua require("spider").motion("b")<CR>', mode = {'n', 'o', 'x'}, desc = 'spider-b' },
    { 'e', '<cmd>lua require("spider").motion("e")<CR>', mode = {'n', 'o', 'x'}, desc = 'spider-e' }
  }
}
