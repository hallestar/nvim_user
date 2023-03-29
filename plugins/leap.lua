return {
	"ggandor/leap.nvim",
  lazy = false,
	config = function () 
	  local leap = require("leap")
		leap.setup({
		  case_sensitive = false,
		  safe_labels = {},
		  max_phase_one_targets = 0,
		  max_highlighted_traversal_targets = 10,
		})

		leap.set_default_keymaps(true)
		local function leap_current_window()
  		leap.leap({ target_windows = { vim.fn.win_getid() } })
		end

    vim.keymap.set("n", "s", leap_current_window, { silent = true })
    vim.keymap.set("x", "s", leap_current_window, { silent = true })

 	  -- 跳转之前打标记
 	  vim.api.nvim_create_autocmd("User", {
   	 	pattern = "LeapEnter",
   	 	callback = function()
     	 	vim.cmd("normal m'")
   	 	end,
 	  })

 	 	-- 跳转之后回正光标到窗口正中
 	 	vim.api.nvim_create_autocmd("User", {
   	 	pattern = "LeapLeave",
   	 	callback = function()
     	 	vim.cmd("normal zz")
   	 	end,
 	 	})
	end,
}
