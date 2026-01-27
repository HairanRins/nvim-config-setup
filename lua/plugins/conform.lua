return {
	'stevearc/conform.nvim',
	event = { 'BufWritePre' },
	cmd = { 'ConformInfo' },
	keys = {
		{
			'<leader>f',
			function() require('conform').format({ async = true, lsp_format = 'fallback' }) end,
			mode = '',
			desc = '[F]ormat buffer',
		},
	},
	opts = {
		notify_on_error = false,
		format_on_save = {
			lsp_format = 'fallback',
			timeout_ms = 500,
		},
		formatters_by_ft = {
			lua = { 'stylua' },
			javascript = { 'prettierd', 'prettier', stop_after_first = true },
			typescript = { 'prettierd', 'prettier', stop_after_first = true },
			json = { 'jq' },
			markdown = { 'prettier' },
		},
	},
}
