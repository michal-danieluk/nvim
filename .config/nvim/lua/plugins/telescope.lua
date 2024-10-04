return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		-- or                              , branch = '0.1.x',
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
			--           vim.keymap.set("n", "<leader>f", builtin.find_files, {})
			--            vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle<CR>", {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					layout_strategy = "vertical",
					layout_config = {
--						preview_height = 0.7,
						vertical = {
							size = {
								width = "95%",
								height = "95%",
							},
						},
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		config = function()
			local fb_actions = require("telescope._extensions.file_browser.actions")
			require("telescope").setup({
				extensions = {
					["file_browser"] = {
						path = "%:p:h",
						theme = "dropdown", --"center",
						hidden = true,
						grouped = true,
						sorting_strategy = "ascending",
						initial_mode = "normal",
						hijack_netrw = true,
						mapping = {
							["i"] = {},
							["n"] = {},
						},
					},
				},
			})
			-- 			-- To get ui-select loaded and working with telescope, you need to call
			-- 			-- load_extension, somewhere after setup function:
			-- 			require("telescope").load_extension("file_browser")
			vim.keymap.set(
				"n",
				"sf",
				":Telescope file_browser <CR>",
				{ desc = "Open File Browser with the path of the current buffer" }
			)
            require("telescope").load_extension("file_browser")
		end,
	},
}
