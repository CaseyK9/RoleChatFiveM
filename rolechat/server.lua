--[[
      /$$$$$$                                                /$$      /$$                                             /$$ /$$       /$$           /$$                  
     /$$__  $$                                              | $$$    /$$$                                            | $$| $$      | $$          | $$                  
    | $$  \__/  /$$$$$$   /$$$$$$$  /$$$$$$  /$$   /$$      | $$$$  /$$$$  /$$$$$$  /$$   /$$ /$$  /$$  /$$  /$$$$$$ | $$| $$      | $$          | $$      /$$$$$$$    
    | $$       |____  $$ /$$_____/ /$$__  $$| $$  | $$      | $$ $$/$$ $$ |____  $$|  $$ /$$/| $$ | $$ | $$ /$$__  $$| $$| $$      | $$          | $$     /$$_____/    
    | $$        /$$$$$$$|  $$$$$$ | $$$$$$$$| $$  | $$      | $$  $$$| $$  /$$$$$$$ \  $$$$/ | $$ | $$ | $$| $$$$$$$$| $$| $$      | $$          | $$    | $$          
    | $$    $$ /$$__  $$ \____  $$| $$_____/| $$  | $$      | $$\  $ | $$ /$$__  $$  >$$  $$ | $$ | $$ | $$| $$_____/| $$| $$      | $$          | $$    | $$          
    |  $$$$$$/|  $$$$$$$ /$$$$$$$/|  $$$$$$$|  $$$$$$$      | $$ \/  | $$|  $$$$$$$ /$$/\  $$|  $$$$$/$$$$/|  $$$$$$$| $$| $$      | $$$$$$$$ /$$| $$ /$$|  $$$$$$$ /$$
     \______/  \_______/|_______/  \_______/ \____  $$      |__/     |__/ \_______/|__/  \__/ \_____/\___/  \_______/|__/|__/      |________/|__/|__/|__/ \_______/|__/
                                             /$$  | $$                                                                                                                 
                                            |  $$$$$$/                                                                                                                 
                                             \______/     
                                             
   Role chat was originally developed by Tazio, updated and continued support by Casey Maxwell. 

   In order to add roles to people, use the following information:

   [Owner]
   add_ace group.[specifiedrole] taz.owner allow
   add_principal identifier.steam:[hexid] group.[specifiedrole]

   [Management]
   add_ace group.[specifiedrole] taz.management allow
   add_principal identifier.steam:[hexid] group.[specifiedrole]

   [Senior Admin]
   add_ace group.[specifiedrole] taz.snradmin allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

   [Admin]
   add_ace group.[specifiedrole] taz.admin allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

   [Moderator]
   add_ace group.[specifiedrole] taz.mod allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

   [Trial Moderator]
   add_ace group.[specifiedrole] taz.tmod allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

   [Intern]
   add_ace group.[specifiedrole] taz.intern allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

   [Donator]
   add_ace group.[specifiedrole] taz.donator allow
   add_principal identifier.steam:[hexid] group.[specifiedrole] 

   In order to update to provide additional support, submit a pull request or issue on the github page: https://github.com/CaseyK9/RoleChatFiveM

--]]

local Owner = "taz.owner"
local Management = "taz.management"
local Senior_Admin = "taz.snradmin"
local Admin = "taz.admin"
local Moderator = "taz.mod"
local Tmod = "taz.tmod"
local Intern = "taz.intern"
local Charles = "taz.charles"
local Donator = "taz.donator"

AddEventHandler('chatMessage', function(source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
    else
          if IsPlayerAceAllowed(source, Owner) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^6Owner ^7] (^5 " .. Name.." ^7)", "^1"..Msg }, color = 255, 0, 0 })
          elseif IsPlayerAceAllowed(source, Management) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^5Management ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
          elseif IsPlayerAceAllowed(source, Senior_Admin) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8Senior Admin ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
          elseif IsPlayerAceAllowed(source, Admin) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8Admin ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
	        elseif IsPlayerAceAllowed(source, Moderator) then
             TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8Moderator ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
	        elseif IsPlayerAceAllowed(source, Tmod) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^8T-Mod ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
            elseif IsPlayerAceAllowed(source, Intern) then
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^5Intern ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
            elseif IsPlayerAceAllowed(source, Charles) then
                TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^5Managing Director ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
            elseif IsPlayerAceAllowed(source, Donator) then
                TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^1Donator ^7] (^3 " .. Name.." ^7)", Msg }, color = 0,0,255 })
          else
              TriggerClientEvent('chat:addMessage', -1, { args = { "^7[ ^4Member ^7] (^3 " .. Name.." ^7)", Msg }, color = 255,255,255 })
          end
        end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
