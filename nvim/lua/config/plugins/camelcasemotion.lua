return {
  'bkad/CamelCaseMotion',
  event = { 'BufReadPre', 'BufNewFile' },
  init = function()
    vim.api.nvim_set_keymap('', 'w', '<Plug>CamelCaseMotion_w', {})
    vim.api.nvim_set_keymap('', 'b', '<Plug>CamelCaseMotion_b', {})
    vim.api.nvim_set_keymap('', 'e', '<Plug>CamelCaseMotion_e', {})
    vim.api.nvim_set_keymap('', 'ge', '<Plug>CamelCaseMotion_ge', {})
    vim.keymap.set({'x', 'o'}, 'iw', '<Plug>CamelCaseMotion_iw')
    vim.keymap.set({'x', 'o'}, 'ib', '<Plug>CamelCaseMotion_ib')
    vim.keymap.set({'x', 'o'}, 'ie', '<Plug>CamelCaseMotion_ie')
  end
}
