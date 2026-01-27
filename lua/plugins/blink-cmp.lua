return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },
	version = '1.*',
	opts = {
		keymap = { preset = 'default' },
		appearance = {
			use_nvim_cmp_as_default = false,
			nerd_font_variant = 'normal',
		},

		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 150,
				treesitter_highlighting = true,
				window = { border = 'rounded' },
			},
		},
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
		fuzzy = { implementation = 'prefer_rust_with_warning' },
	},
	opts_extend = { 'sources.default' },
}
