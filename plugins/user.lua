return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "vim-scripts/a.vim",
    lazy = false,
    config = function()
      -- 去掉a.vim 默认映射
      vim.keymap.del('i', '<leader>ih')
      vim.keymap.del('n', '<leader>ih')
      vim.keymap.del('i', '<leader>is')
      vim.keymap.del('n', '<leader>is')
      vim.keymap.del('i', '<leader>ihn')
      vim.keymap.del('n', '<leader>ihn')
    end,
  },
  {
    "ggandor/flit.nvim"
  },
}
