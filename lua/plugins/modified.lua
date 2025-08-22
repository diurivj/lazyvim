-- Disabled
return {
  -- Bufferline
  { "akinsho/bufferline.nvim", enabled = false },

  -- Snacks
  {
    "snacks.nvim",
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = false },
      explorer = { enabled = false },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = {
        enabled = true,
        timeout = 3000,
      },
      picker = {
        enabled = true,
        hidden = false,
        ignored = false,
        grep = {
          respect_gitignore = true,
          case_sensitive = false,
        },
        find = {
          respect_gitignore = true,
        },
      },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      styles = {
        notification = {},
      },
    },
    keys = {
      {
        "<leader>sg",
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep (respects gitignore, case insensitive)",
      },
    },
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
