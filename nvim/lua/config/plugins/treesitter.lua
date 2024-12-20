return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    ensure_installed = {
      "c",
      "cpp",
      "lua",
      "vim",
      "vimdoc",
      "java",
      "rust",
      "json",
      "javascript",
      "typescript",
      "vue",
      "html",
      "css",
      "scss"
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    }
  }
}
