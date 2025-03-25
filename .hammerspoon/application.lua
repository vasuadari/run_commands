local module = {}
module.init = function(k)
   local applications = {
      a = 'Alacritty',
      d = 'Dash',
      s = 'Slack',
      p = 'Postman',
      z = 'zoom.us',
      i = 'Preview',
      f = 'Finder',
      n = 'Numi',
      m = 'Sequel Pro',
      x = 'Firefox'
   }

   for key, application in pairs(applications) do
      k:bind('', key, function()
                hs.application.launchOrFocus(application)
                hs.application.open(application)
                k:exit()
      end)
   end
end
return module
