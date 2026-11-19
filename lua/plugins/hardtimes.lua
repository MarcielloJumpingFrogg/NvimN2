return{
   "m4xshen/hardtime.nvim",
   lazy = false,
   dependencies = { "MunifTanjim/nui.nvim" },
   opts = {
		 disabled_keys = {
			 ["<Up>"] = false,
			 ["<Right>"] = false,
			 ["<Left>"] = false,
			 ["<Down>"] = false,
		 },
		 disable_mouse = false,
		 max_count = 5,
	 },
}
