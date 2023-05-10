local telescope = require('telescope')

return {
  -- "myplugin.nvim",
  dir = "~/projects/myplugin.nvim",
  dependencies = "nvim-telescope/telescope.nvim",
  opts = function()
    return {
      path_display = {
        "shorten"
      },
    }
  end,
  config = function()
    telescope.load_extension('myplugin')
    -- telescope.setup {
    --   defaults = {
    --     path_display = {
    --       -- "shorten",
    --       -- "absolute",
    --     },
    --   }
    -- }
    -- require("telescope").setup{
    --   extensions = {
    --     myplugin = {
    --     }
    --   }
    -- }
  end,
  dev = true,
  lazy = true,
}
