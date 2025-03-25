local module = {}

module.init = function()
  local k = hs.hotkey.modal.new('ctrl', 't')
  local CANCEL_DELAY_SECONDS = 1.0
  local exitModalTimer = hs.timer.delayed.new(CANCEL_DELAY_SECONDS, function()
    k:exit()
  end)

  function k:entered()
    exitModalTimer:start()
  end

  function k:exited()
    exitModalTimer:stop()
  end

  k:bind('ctrl', 't', function()
    k:exit()
    k.k._hk:disable()
    hs.eventtap.keyStroke({ 'ctrl' }, 't', 0)
    k.k._hk:enable()
  end)

  k:bind('ctrl', 'r', function()
    hs:reload()
    k:exit()
  end)

  k:bind('', 'escape', function()
    k:exit()
  end)

  return k
end

return module
