local M = {}

function M:load()
  local options = require "phyvim.config.options"
  require "phyvim.keymaps"
  options.load_options()
end

return M
