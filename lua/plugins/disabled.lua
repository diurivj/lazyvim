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
      picker = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      styles = {
        notification = {},
      },
    },
  },

  -- Lsp custom
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              files = {
                maxSize = 1000000,
                exclude = {
                  "**/.git/**",
                  "**/.svn/**",
                  "**/.hg/**",
                  "**/CVS/**",
                  "**/.DS_Store/**",
                  "**/node_modules/**",
                  "**/bower_components/**",
                  "**/htdocs_customshops/**",
                  "**/htdocs_gearman/**",
                  "**/htdocs/assets/dist/**",
                  "**/tmp/**",
                  "**vendor/*/{!(phpunit)/**}",
                  "translations/**",
                  "**/.phan/**",
                  "**/cron.d/**",
                  "**/generated/**",
                  "**/Generated/**",
                  "**/modules/css/**",
                  "**/__modules__*__src__/**",
                  "vendor/etsy/module-*/**",
                },
              },
              maxMemory = 10192,
            },
          },
        },
      },
    },
  },
}
