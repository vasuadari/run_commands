hs.window.animationDuration = 0

local k = require("modal").init()
require('screen').init(k)
require('application').init(k)

hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

-- hs.notify.new({ title = "Hammerspoon", informativeText = "Hello World" }):send()
