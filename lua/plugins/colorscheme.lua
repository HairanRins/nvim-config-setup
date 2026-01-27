-- return {
-- 	'uloco/bluloco.nvim',
-- 	lazy = false,
-- 	priority = 1000,
-- 	dependencies = { 'rktjmp/lush.nvim' },
-- 	config = function()
-- 		require('bluloco').setup({
-- 			style = 'dark',
-- 			transparent = false,
-- 			italics = false,
-- 			terminal = vim.fn.has('gui_running') == 1,
-- 			guicursor = true,
-- 			rainbow_headings = false,
-- 		})
-- 		vim.opt.termguicolors = true
-- 		vim.cmd('colorscheme bluloco')
-- 	end,
-- }
return {
	'folke/tokyonight.nvim',
	lazy = false,
	priority = 1000,
	opts = {
		transparent = true,
	},
}

-- return {
-- 	'catppuccin/nvim',
-- 	name = 'catppuccin',
-- 	priority = 1000,
-- 	config = function() vim.cmd('colorscheme catppuccin') end,
-- }
-- Using Lazy
-- return {
-- 	'navarasu/onedark.nvim',
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- 	config = function()
-- 		require('onedark').setup({
-- 			style = 'deep',
-- 			transparent = true,
-- 		})
-- 		require('onedark').load()
-- 	end,
-- }
-- local M = {
-- 	'neanias/everforest-nvim',
-- 	lazy = false,
-- 	priority = 1000, -- make sure to load this before all the other start plugins
-- }
--
-- function M.config()
-- 	local everforest = require('everforest')
-- 	everforest.setup({
-- 		ui_contrast = 'high',
-- 		background = 'hard',
-- 		transparent_background_level = 0,
-- 		italics = true,
-- 		disable_italic_comments = false,
-- 		inlay_hints_background = 'dimmed',
-- 		on_highlights = function(hl, palette)
-- 			hl['@string.special.symbol.ruby'] = { link = '@field' }
-- 			hl['DiagnosticUnderlineWarn'] = { undercurl = true, sp = palette.yellow }
-- 		end,
-- 	})
-- 	everforest.load()
-- end
--
-- return M
