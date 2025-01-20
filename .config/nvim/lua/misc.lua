-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

--format on save
--
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		require("conform").format({
			lsp_fallback = true,
		})
	end,
})

function ColorMyPencils(color)
	color = color or "catppuccin"
	-- "kanagawa-dragon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- ColorMyPencils()
