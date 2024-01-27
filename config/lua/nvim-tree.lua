local api = require("nvim-tree.api")

local Event = api.events.Event
api.events.subscribe(Event.TreeOpen, function()
  api.tree.expand_all()
end)

require('nvim-tree').setup()
