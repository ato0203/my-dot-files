return {
  'nvim-lualine/lualine.nvim',
  dependenvies = {
    'sainnhe/everforest',
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    options = {
      theme = 'everforest',
      component_separators = "|",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = {
        { "mode" },
      },
      lualine_b = { "filename" },
      lualine_c = {
        {
          "diagnostics",
          sources = { "nvim_diagnostic", "coc" },
          symbols = { error = " ", warn = " ", info = " " },
          diagnostics_color = {
            color_error = { fg = "#e67a80" },
            color_warn = { fg = "#dbbc7f" },
            color_info = { fg = "#7fbbb3" }
          },
          colored = true
        }
      },
      lualine_x = {},
      lualine_y = { "filetype", "encoding", "fileformat" },
      lualine_z = {
        { "location" },
      },
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { "location" },
    },
    tabline = {},
    extensions = {},
  }
}
