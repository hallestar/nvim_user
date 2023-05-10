-- set vim options here (vim.<first_key>.<second_key> = value)
local home_dir = vim.fn.expand('$HOME')

return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    mouse = "",            -- 禁用鼠标功能
    fileencodings = "utf-8,ucs-bom,bg18030,gbk,gb2313,cp936",
    termencoding = "utf-8",
    encoding = "utf-8",
    cscopeprg = 'gtags-cscope',
    colorcolumn="80",
  },
  g = {
    mapleader = " ",                                                                                      -- sets vim.g.mapleader
    autoformat_enabled = true,                                                                            -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,                                                                                   -- enable completion at start
    autopairs_enabled = true,                                                                             -- enable autopairs at start
    diagnostics_mode = 3,                                                                                 -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,                                                                                 -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true,                                                                      -- disable notifications when toggling UI elements
    gutentags_project_root = { ".root", ".svn", ".git", ".hg", ".project" },                              -- 搜索工程的标志
    gutentags_ctags_tagfile = ".tags",                                                                    -- 数据文件的名称
    gutentags_modules = { "gtags_cscope" },                                                               -- 只开启gtags模式
    gutentags_cache_dir = home_dir .. "/" .. ".cache/tags",                                               -- gtags全部放到指定目录, 避免污染工程目录
    gutentags_ctags_extra_args = { "--fields=+niazS", "--extra=+q", "--c++-kinds=+px", "--c-kinds=+px" }, -- ctags参数
    gutentags_auto_add_gtags_cscope = 0,
    gutentags_define_advanced_commands = 1,                                                               -- 开启日志
    -- gutentags_resolve_symlinks = 1,
  },
  env = {
    GTAGSLABEL = "native",
    GTAGSCONF = home_dir .. "/" .. ".globalrc",
    DEBUG_PLENARY = "trace",
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
