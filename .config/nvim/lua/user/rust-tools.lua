local status_ok, _ = pcall(require, 'rust-tools')
if not status_ok then
  return
end

local rust = require('rust-tools')

rust.setup({})
