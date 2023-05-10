local telescope = require('telescope')

return {
  dir = "~/projects/nvgtags.nvim",
  dependencies = "nvim-telescope/telescope.nvim",
  opts = function()
    return {
      path_display = {
        "shorten"
      },
    }
  end,
  config = function()
    telescope.load_extension('nvgtags')
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
    --     nvgtags = {
    --     }
    --   }
    -- }
  end,
  dev = true,
  lazy = true,
}
