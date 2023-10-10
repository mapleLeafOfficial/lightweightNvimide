require('profile')  -- 基础配置
require('lazyinit') -- 插件配置
require('keymap')   -- 按键配置

-- require('autocmd')  -- 自动命令配置
-- 插件
require("plugins/coc")
require("plugins/nerdtree")
require("plugins/persistence")
require("plugins/treesitter")
require("plugins/gitsigns")
require("plugins/telescope")
require("plugins/vim-tmux-navigator")
require("plugins/bufferline")
require("plugins/vim-visual-multi")
require("plugins/markdown")
require("plugins/vim-floaterm")
require("plugins/vim-expand-region").setup()
