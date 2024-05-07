return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        ensure_installed = {
          -- "bash",
          "css",
          "csv",
          "dockerfile",
          "gitignore",
          "html",
          "javascript",
          "json",
          "latex",
          "lua",
          "luadoc",
          "luap",
          "markdown",
          "markdown_inline",
          "regex",
          "ruby",
          "tmux",
          "toml",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "yaml",
        },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end
  }
}
