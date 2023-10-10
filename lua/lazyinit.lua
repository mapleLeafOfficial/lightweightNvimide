local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://gitclone.com/github.com/folke/lazy.nvim",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
},
    "yianwillis/vimcdoc",--中文help doc
    {
        "nvim-lualine/lualine.nvim", -- 状态栏
        config = function ()
require('lualine').setup({
  options = {
    theme = 'tokyonight'
  }
})

        end
    },
    {
      'mg979/vim-visual-multi',
        event = 'CursorHold',
        opt = true                   -- 将插件配置为lazy加载
    },
    "preservim/nerdtree",            --文档树
    "ryanoasis/vim-devicons",
  {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  enabled = true,
  ft = "markdown",
  },
  "voldikss/vim-floaterm",
    "dhruvasagar/vim-table-mode",    --markdowntable
    "christoomey/vim-tmux-navigator", -- 用ctl-hjkl来定位窗口
    "nvim-treesitter/nvim-treesitter", -- 语法高亮
    "windwp/nvim-autopairs",         -- 自动补全括号
    "akinsho/bufferline.nvim",       -- buffer分割线
    "lewis6991/gitsigns.nvim",-- 左则git提示
    {
        "folke/persistence.nvim",
        event = "BufReadPre", -- this will only start session saving when an actual file was opened
    },
    {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 300
	end,
	opts = {
	},
},
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',                              -- 文件检索
        dependencies = { { 'nvim-lua/plenary.nvim' } } -- requires要改为dependencies
    },
    {
    'neoclide/coc.nvim',
    branch = 'release',
    },
    "terryma/vim-expand-region",
    "yaocccc/nvim-hlchunk",-- {}区间高亮
    "yaocccc/vim-comment", -- 快速注释
    "yaocccc/vim-surround",-- 快速包裹内容
}
local opts = {} -- 注意要定义这个变量

require("lazy").setup(plugins, opts)

vim.cmd[[colorscheme tokyonight-storm]]
