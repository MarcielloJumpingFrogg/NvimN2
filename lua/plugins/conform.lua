return {
	"stevearc/conform.nvim",

	opts = {},
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				lua = { "stylua" },
				go = { "gofmt" },
				odin = { "odinfmt" },
				javascript = { "oxfmt" },
				typescript = { "oxfmt" },
				json = { "oxfmt" },
				exixir = { "mix" },
				vue = { "oxfmt" },
			},
		})
		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ bufnr = 0 })
		end)
	end,
}
