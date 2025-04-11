local module = {}
module.init = function(k)
  k:bind('', 'n', function()
    spoon.SpeedMenu:rescan()
  end)
end

return module
