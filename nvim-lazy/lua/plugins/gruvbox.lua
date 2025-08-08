return {
  {
    "sainnhe/gruvbox-material",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_enable_bold = true
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_diagnostic_line_highlight = 0
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    {
      "LazyVim/LazyVim",
      opt = {
        colorscheme = "gruvbox-material",
      },
    },
  },
}
