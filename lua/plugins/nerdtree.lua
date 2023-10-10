-- nnoremap <leader>n :NERDTreeFocus<CR>
-- nerdtree
vim.keymap.set("n", "<leader>e", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>f", ":NERDTreeFind<cr>")
-- require("NERD-tree-2").setup({
--    dependencies = {
--			"ryanoasis/vim-devicons"
--		},
--- })
--  自动更新NERDTree的路径为当前文件所在的目录
-- au BufEnter * NERDTreeFind
