return {
  {
    "neanias/everforest-nvim",
    config = function()
      require("everforest").setup({
        background = "hard",
        italics = false,
        disable_italic_comments = true,
        transparent_background_level = 2,
        on_highlights = function(hl)
          hl.Normal = { bg = "NONE" }
          hl.NormalFloat = { bg = "NONE" }
          hl.SignColumn = { bg = "NONE" }
          hl.EndOfBuffer = { bg = "NONE" }
        end,
        sign_column_background = "none",
        ui_contrast = "low",
        dim_inactive_windows = false,
        diagnostic_line_highlight = false,
        diagnostic_text_highlight = false,
        diagnostic_virtual_text = "coloured",
        spell_foreground = false,
        show_eob = true,
        float_style = "bright",
        inlay_hints_background = "none",
        colours_override = function() end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
