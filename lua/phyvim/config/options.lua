local M = {}

M.load_options = function()
  local options = {
	mouse = "a",
	hidden = true,
	number = true,
	hlsearch = false,
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,
	smartindent = true,
	completeopt = { "menuone", "menu" },
	wildmode = { "longest", "list", "full" },
	ignorecase=true,
	conceallevel = 0,
	concealcursor = "vin",
	cursorline = true,
	cursorlineopt = "number",
	pumheight = 20,
	scrolloff = 8,
	sidescrolloff = 8,
	updatetime = 300,
	undofile = true,
	splitbelow = true,
	splitright = true,
	signcolumn = "yes",
}

vim.opt.shortmess:append "c"
vim.opt.whichwrap:append "<,>,[,],h,l"

-- Make compatible with st, truecolors
vim["&t_8f"] = "\\<Esc>[38;2;%lu;%lu;%lum"
vim["&t_8b"] = "\\<Esc>[48;2;%lu;%lu;%lum"
vim.opt.termguicolors = true

-- Macros
vim.cmd [[set formatoptions-=cro]]

  for k, v in pairs(options) do
    vim.opt[k] = v
  end
end

return M

