local status_ok, _ = pcall(require, "diaglist")

if not status_ok then
  return
end

local diaglist = require("diaglist")

diaglist.init({
  -- optional settings
  -- below are defaults
  debug = false,

  -- increase for noisy servers
  debounce_ms = 150,
})
