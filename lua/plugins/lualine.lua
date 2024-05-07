return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "meuter/lualine-so-fancy.nvim",
  },
  opts = {
    options = {
      theme = "auto",
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      globalstatus = true,
      refresh = {
        statusline = 100,
      },
      disabled_filetypes = {
        statusline = {
          "help",
          "NvimTree",
        },
        winbar = {},
      },
    },
    sections = {
      lualine_a = {},
      lualine_b = {
        { "fancy_branch" },
      },
      lualine_c = {
        {
          "filename",
          path = 1, -- 2 for full path
          symbols = {
            modified = "  ",
            readonly = "  ",
            unnamed = "  ",
          },
        },
        {
          "fancy_diagnostics",
          sources = { "nvim_lsp" },
          symbols = { error = " ", warn = " ", info = " " }
        }
      },
      lualine_x = {
        "fancy_lsp_servers",
      },
      lualine_y = {
        "fancy_diff"
      },
      lualine_z = {
        "progress"
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
  },
}
