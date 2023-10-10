local G = require('G')

G.g.python3_host_prog = os.getenv('PYTHON') -- export PYTHON=$(which python3)
G.opt.showcmd = true
G.opt.encoding = 'utf-8'
G.opt.wildmenu = true
G.opt.pumheight = 10
G.opt.conceallevel = 0
G.opt.clipboard = 'unnamed,unnamedplus'
G.opt.hlsearch = true
G.opt.showmatch = true
G.opt.incsearch = true
G.opt.inccommand = ''
G.opt.ignorecase = true
G.opt.smartcase = true
G.opt.timeoutlen = 400
G.opt.backspace = 'indent,eol,start'
G.opt.whichwrap = 'b,s,<,>,h,'
G.opt.mouse = 'a'
G.opt.vb = true
G.opt.hidden = true
G.opt.autoindent = true
G.opt.smartindent = true
G.opt.tabstop = 4
G.opt.softtabstop = 4
G.opt.shiftwidth = 4
G.opt.smarttab = true
G.opt.expandtab = true
G.opt.backup = false
G.opt.swapfile = false
G.opt.wrap = false
G.opt.undofile = true
G.opt.undodir = os.getenv('HOME') .. '/.config/nvim/cache/undodir'
G.opt.viminfo = "!,'10000,<50,s10,h"
G.opt.foldenable = true
G.opt.foldmethod = 'manual'
G.opt.viewdir = os.getenv('HOME') .. '/.config/nvim/cache/viewdir'
G.opt.foldtext = 'v:lua.MagicFoldText()'
G.opt.cmdheight = 1
G.opt.updatetime = 300
G.opt.shortmess = 'filnxtToOcIF'
G.opt.scrolloff = 5
G.opt.showmode = false
G.opt.number = true
G.opt.numberwidth = 2
G.opt.cul = true
G.opt.signcolumn = 'yes'
G.opt.fillchars = 'fold:-,stlnc:#,eob: ,foldsep:='
-- 缩进
G.opt.tabstop = 2
G.opt.shiftwidth = 2
G.opt.expandtab = true
G.opt.autoindent = true
-- 自动换行
G.opt.wrap = true
G.opt.linebreak = true
-- 外观
G.opt.termguicolors = true
G.opt.signcolumn = "yes"
-- 在 copy 后高亮
G.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
