return {
	{
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v3.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
			'nvim-tree/nvim-web-devicons',
		},
		lazy = false,
		keys = {
			{ '<leader>e', ':Neotree reveal <CR>', desc = 'Neotree Reveal', silent = true },
		},
		opts = {
			window = {
				position = 'left',
				popup = {
					size = {
						height = '90%',
						width = '60%',
					},
					position = '50%',
				},
			},
			source_selector = {
				winbar = true,
				statusline = false,
			},
			filesystem = {
				window = {
					mappings = {
						['<leader>e'] = 'close_window',
					},
				},
			},
		},
	},
}
