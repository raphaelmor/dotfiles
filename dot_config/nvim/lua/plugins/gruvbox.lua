-- return {
--   -- add gruvbox
--   {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     config = function()
--       require("gruvbox").setup({
--         overrides = {
--           Directory = { link = "GruvboxBlueBold" }
--
--         }
--       })
--     end,
--   },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "gruvbox",
--     },
--   },
-- }
--
return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = 'hard'
      vim.cmd.colorscheme('gruvbox-material')
    end
  },
  {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "gruvbox-material",
      },
    },

  }
}
