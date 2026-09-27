vim.g.mapleader = " "

-- install lazy if not already installed

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lazy setup

require("lazy").setup({

	{"folke/which-key.nvim",
		event = "VeryLazy",
		  init = function()
    			vim.o.timeout = true
    			vim.o.timeoutlen = 300
  	end,
  opts = {}}, 

	"nvim-lua/plenary.nvim",

	"nvim-telescope/telescope.nvim",

	"tjdevries/colorbuddy.nvim",

	{ "miikanissi/modus-themes.nvim", priority = 1000 },

	{'akinsho/toggleterm.nvim', version = "*", config = true},

	{ "luukvbaal/nnn.nvim",
  	     config = function() require("nnn").setup() end }

},
{ performance = { rtp = { reset = false } } }
)

local cfg = {
	picker = {cmd ="nnn -H -e"}
}

-- settings

--vim.cmd([[colorscheme modus_operandi]])
vim.cmd([[colorscheme modus_operandi]]) -- modus_operandi, modus_vivendi
termguicolors = true

vim.api.nvim_set_option('mouse', 'a')

vim.opt.undofile = true

vim.o.number = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"

-- keymapping

vim.keymap.set("n", "<leader>ol", ":bro ol<cr>")

vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>',  { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>',    { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>',  { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fa', '<cmd>Telescope find_files hidden=true<cr>',  { noremap = true })

vim.keymap.set("n", "<space>t", ":ToggleTerm dir=%:p:h<CR>") -- open terminal in the directory of the file

vim.keymap.set("n", "<leader>n", ":NnnPicker<CR>")
