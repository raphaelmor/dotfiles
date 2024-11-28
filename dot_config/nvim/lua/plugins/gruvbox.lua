return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "medium"
      vim.g.gruvbox_material_transparent_background = true
      vim.g.gruvbox_material_enable_bold = true
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
