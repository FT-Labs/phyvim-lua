local M = {}

function M:load()
	require "phyvim.core.cmp"
	require "phyvim.core.telescope"
	require "phyvim.core.treesitter":setup()
	require "phyvim.core.autopairs":setup()
	require "phyvim.core.comment":setup()
	require "phyvim.core.gitsigns":setup()
	require "phyvim.core.nvimtree":setup()
	require "phyvim.core.bufferline":setup()
end

return M
