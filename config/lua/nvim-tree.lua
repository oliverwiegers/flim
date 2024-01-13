local api = require("nvim-tree.api")

local Event = api.events.Event
api.events.subscribe(Event.TreeOpen, function()
  api.tree.expand_all()
end)

require('nvim-tree').setup()

-- Plugin related bindings.
vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<CR>", {silent=true})
