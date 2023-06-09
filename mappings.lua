-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)


return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>fx"] = { "<cmd>Telescope nvgtags find_definition<cr>", desc = "Find definition" },
    ["<leader>fz"] = { "<cmd>Telescope nvgtags find_definition_under_cursor<cr>", desc = "Find definition under cursor" },
    ["<leader>fp"] = { "<cmd>Telescope nvgtags find_reference<cr>", desc = "Find reference" },
    ["<leader>fq"] = { "<cmd>Telescope nvgtags find_reference_under_cursor<cr>", desc = "Find reference under cursor" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<S-Insert>"] = { "<C-R>+", desc = "shift insert " }, -- paste
    -- map! k<S-Insert> <C-R>+
  },
  c = {
    ["<S-Insert>"] = { "<C-R>+", desc = "shift insert " }, -- paste
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
