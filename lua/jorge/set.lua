--vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

--vim.opt.guifont = { "Source Code Pro", ":h50" }

--vim.opt.clipboard:append("unnamedplus") -- Use system clipboard as default register
--vim.opt.backspace = "indent,eol,start" -- allow backspace on indent end of line or instert
--vim.opt.background = "dark" -- Colorscheme that can be light or dark will be made dark

-- overrides por filetype
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "yml", "json", "javascript", "typescript", "html", "css", "terraform", "hcl" },
  callback = function()
    vim.opt_local.shiftwidth  = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.tabstop     = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "lua", "c", "cpp", "java", "sh", "bash", "dockerfile" },
  callback = function()
    vim.opt_local.shiftwidth  = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.tabstop     = 4
  end,
})

