local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Put cursor on latest position in the buffer
vim.api.nvim_create_autocmd('BufReadPost', {
	callback = function(args)
		local mark = vim.api.nvim_buf_get_mark(args.buf, '"')
		local line_count = vim.api.nvim_buf_line_count(args.buf)
		if mark[1] > 0 and mark[1] <= line_count then
			vim.api.nvim_win_set_cursor(0, mark)
			vim.schedule(function() vim.cmd('normal! zz') end)
		end
	end,
})

-- Highlight on yank
autocmd('TextYankPost', {
	group = augroup('highlight_yank', { clear = true }),
	callback = function() vim.highlight.on_yank() end,
})

-- Resize splits when window is resized
autocmd('VimResized', {
	group = augroup('resize_splits', { clear = true }),
	command = 'tabdo wincmd =',
})
