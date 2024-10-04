vim.keymap.set("i", "jk", "<ESC>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- it makes file executeble form vim
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format)

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionaizer<CR>")

vim.keymap.set("n", "<leader><TAB>", "<CMD>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>ht", "<CMD>Telescope colorscheme<CR>")
vim.keymap.set("n", "<leader><leader>", "<CMD>Telescope find_files<CR>")
-- Tabs
vim.keymap.set("n", "te", ":tabedit")
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
--keymap.set('n', '<TAB>', ':tabNext <CR>')
-- vim.keymap.set('n', '<leader><TAB>', ':tabnew <CR>')
--  vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
--buffers
vim.api.nvim_set_keymap("n", "tk", ":bnext<cr>", { desc = "Next buffer", noremap = false })
vim.api.nvim_set_keymap("n", "tj", ":bprev<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "th", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":blast<enter>", { noremap = false })

-- Split window
vim.keymap.set("n", "ss", ":split<Return><C-w>w")
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w")
vim.keymap.set("n", "se", "<C-w>=")
vim.keymap.set("n", "sx", ":close<CR>", { silent = true })
vim.keymap.set("n", "<leader>w", "<C-w><C-w>")

-- vim-maximazier
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
-- write and quit
-- To jest ważne i będę musiał znowu to wysłać
vim.api.nvim_set_keymap("n", "QQ", ":q!<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "WW", ":w!<enter>", { noremap = false })
-- Git maps
vim.api.nvim_set_keymap("n", "<leader>ga", ":Git add . <CR>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gc", ':Git commit -m "', { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push -u origin HEAD<CR>", { noremap = false })

vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "New Obsidian note" })
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianSearch<cr>", { desc = "Search Obsidian notes" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Quick Switch" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<cr>", { desc = "Show location list of backlinks" })
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<cr>", { desc = "Obsidian Templates" })

vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<cr>", {desc = "ZenMode"})


-- icon picker
vim.keymap.set("n", "<leader>ic", ":IconPickerNormal<cr>", { noremap = true, silent = true, desc = "Icon Picker" })

function ColorMyPencils(color)
    color = color or "catppuccin"
-- "kanagawa-dragon"  
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- ColorMyPencils()
