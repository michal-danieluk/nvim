return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				go = { "gofmt" }, -- Go formatter
				ruby = { "rubocop" }, -- Ruby formatter
				erb = { "erb_lint" }, -- Rails ERB templates
			},
			format_on_save = {
				timeout_ms = 500, -- Timeout for formatting on save
				lsp_fallback = true, -- Use LSP formatting if no formatter is defined
			},
		})
	end,
	lazy = false, -- Load the plugin immediately
}
