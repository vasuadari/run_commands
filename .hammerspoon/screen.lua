local module = {}

module.init = function(k)
   k:bind('ctrl', 's', function()
             local win = hs.window.focusedWindow()
             local screen = win:screen()
             if win:isFullScreen() then
                win:setFullScreen(false)
                hs.timer.doAfter(0.6, function()
                                    win:moveToScreen(screen:next())
                                    win:setFullScreen(true)
                end)
             else
                win:moveToScreen(screen:next())
             end
             win:focus()
             k:exit()
   end)

   k:bind('ctrl', 'f', function()
             local win = hs.window.focusedWindow()
             if win:isFullScreen() then
                win:setFullScreen(false)
             else
                win:setFullScreen(true)
             end
             k:exit()
   end)

   k:bind('', 'left', function()
             local win = hs.window.focusedWindow()
             if win:isFullScreen() then
                win:setFullScreen(false)
             end
             win:moveToUnit(hs.layout.left50)
             k:exit()
   end)

   k:bind('', 'right', function()
             local win = hs.window.focusedWindow()
             if win:isFullScreen() then
                win:setFullScreen(false)
             end
             win:moveToUnit(hs.layout.right50)
             k:exit()
   end)

   k:bind('', 'up', function()
             local win = hs.window.focusedWindow()
             if win:isFullScreen() then
                win:setFullScreen(false)
             end

             win:moveToUnit(hs.geometry.unitrect(0,0,1,0.5))
             k:exit()
   end)

   k:bind('', 'down', function()
             local win = hs.window.focusedWindow()
             if win:isFullScreen() then
                win:setFullScreen(false)
             end
             win:moveToUnit(hs.geometry.unitrect(0,0.5,1,1))
             k:exit()
   end)

   k:bind('', '0', function()
             local win = hs.window.focusedWindow()
             if win:isFullScreen() then
                win:setFullScreen(false)
             end
             win:moveToUnit(hs.geometry.unitrect(0,0,1,1))
             k:exit()
   end)
end

return module
