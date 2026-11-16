return {{
	'nvim-telescope/telescope.nvim', version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},

	init = function () 
		local builtin = require('telescope.builtin')

		vim.keymap.set('n', '<leader><leader>', builtin.find_files, {desc = 'Telescope [p]roject [f]iles'})
		vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = 'Telescope git files'})
		vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep > ") }); end)
		vim.keymap.set('n', '<leader>,', builtin.live_grep, {desc = 'Telescope live grep'})

		vim.keymap.set('n', '<leader>pws', function() 
			local word = vim.fn.expand('<cword>')
			builtin.grep_string({search = word })
		end)

		vim.keymap.set('n', '<leader>pWs', function()
			local word = vim.fn.expand('<cWORD>')
			builtin.grep_string({ search = word })
		end)

		vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
	end
}}


