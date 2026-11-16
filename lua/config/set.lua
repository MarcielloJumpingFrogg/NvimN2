
do

	vim.g.have_nerd_font = true

	vim.o.number = true
	vim.o.relativenumber = true

	vim.o.wrap = false 
	vim.o.cursorline = true

	vim.api.nvim_create_autocmd("InsertEnter", {command = [[set norelativenumber]] })
	vim.api.nvim_create_autocmd("InsertLeave", {command = [[set relativenumber]] })


	vim.o.mouse = "a"

	vim.o.showmode = false

	vim.schedule(function() 
		vim.o.clipboard = "unnamedplus"
	end)

	vim.o.breakindent = true 

	vim.o.undofile = true 

	vim.o.ignorecase = true
	vim.o.smartcase = true 

	vim.o.signcolumn = "yes"

	vim.o.updatetime = 250

	vim.o.timeoutlen = 300

	vim.o.splitright = true
	vim.o.splitbelow = true 

	vim.o.list = true

	vim.opt.listchars = { tab = "  ", trail = " ", nbsp = "␣" }

	vim.o.inccommand = "split"

	vim.o.scrolloff = 15

	vim.o.confirm = true 


	vim.diagnostic.config({
		update_in_insert = false,
		severity_sort = true,
		float = { border = 'rounded', source = 'if_many' },
		underline = { severity = { min = vim.diagnostic.severity.WARN } },

		virtual_text = true,
		virtual_lines = false,

		jump = {
			on_jump = function(_, bufnr)
				vim.diagnostic.open_float({
					bufnr = bufnr,
					scope = 'cursor',
					focus = false,
				})
			end,
		}
	})

	vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

	vim.opt.tabstop = 2
	vim.opt.softtabstop = 2
	vim.opt.shiftwidth = 2
	vim.opt.expandtab = false

	vim.opt.hlsearch = false
	vim.opt.incsearch = true

	vim.opt.colorcolumn = "80"


end
