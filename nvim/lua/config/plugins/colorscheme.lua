return {
  'sainnhe/everforest',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.everforest_background = 'hard'
    -- For better performance
    vim.g.everforest_better_performance = 1
    vim.cmd.colorscheme('everforest')
  end
}
