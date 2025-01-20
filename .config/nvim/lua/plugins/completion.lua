return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
		},
	},
	{
		"onsails/lspkind.nvim", -- For icons
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			local lspkind = require("lspkind")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if require("luasnip").expand_or_jumpable() then
							require("luasnip").expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if require("luasnip").jumpable(-1) then
							require("luasnip").jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "nvim_lsp_signature_help" },
					{ name = "path" },
				}, {
					{ name = "buffer" },
				}),
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol_text",
						-- 						maxwidth = 50,
						-- 						ellipsis_char = "...",
						maxwidth = {
							-- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
							-- can also be a function to dynamically calculate max width such as
							-- menu = function() return math.floor(0.45 * vim.o.columns) end,
							menu = 50, -- leading text (labelDetails)
							abbr = 50, -- actual suggestion item
						},
						ellipsis_char = "...", -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
						show_labelDetails = true, -- show labelDetails in menu. Disabled by default

						-- The function below will be called before any actual modifications from lspkind
						-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
						before = function(entry, vim_item)
							-- ...
							return vim_item
						end,
					}),
				},
			})
		end,
	},
}

-- return {
-- 	{
-- 		"hrsh7th/cmp-nvim-lsp",
-- 	},
-- 	{
-- 		"L3MON4D3/LuaSnip",
-- 		dependencies = {
-- 			"saadparwaiz1/cmp_luasnip",
-- 			"rafamadriz/friendly-snippets",
-- 			"hrsh7th/cmp-nvim-lsp",
-- 			"hrsh7th/cmp-path",
-- 		},
-- 	},
-- 	{
-- 		"hrsh7th/nvim-cmp",
-- 		config = function()
-- 			local cmp = require("cmp")
-- 			require("luasnip.loaders.from_vscode").lazy_load()
-- 			cmp.setup({
-- 				snippet = {
-- 					-- REQUIRED - you must specify a snippet engine
-- 					expand = function(args)
-- 						--						vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
-- 						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
-- 						-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
-- 						-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
-- 					end,
-- 				},
-- 				window = {
-- 					--					completion = cmp.config.window.bordered(),
-- 					--					documentation = cmp.config.window.bordered(),
-- 				},
-- 				mapping = cmp.mapping.preset.insert({
-- 					["<C-b>"] = cmp.mapping.scroll_docs(-4),
-- 					["<C-f>"] = cmp.mapping.scroll_docs(4),
-- 					["<C-Space>"] = cmp.mapping.complete(),
-- 					["<C-e>"] = cmp.mapping.abort(),
-- 					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
-- 				}),
-- 				sources = cmp.config.sources({
-- 					{ name = "nvim_lsp" },
-- 					{ name = "path" }, -- For vsnip users.
-- 					{ name = "luasnip" }, -- For luasnip users.
-- 					-- { name = 'ultisnips' }, -- For ultisnips users.
-- 					-- { name = 'snippy' }, -- For snippy users.
-- 				}, {
-- 					{ name = "buffer" },
-- 				}),
-- 			})
-- 		end,
-- 	},
-- }
