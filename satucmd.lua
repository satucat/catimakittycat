RegisterAdonisCommand("check",1,function(id)
local url = "https://users.roproxy.com/v1/users/"
local response = http.Get(url..id)
local decode = http.JSONDecode(response)
local name2 = decode.name
local description = decode.description
local banned = decode.isBanned
local displayname = decode.displayName
RunAdonisCommand(":timenotify all 10 Display: "..displayname)
task.wait(0.2)
RunAdonisCommand(":timenotify all 10 Banned: "..banned)
task.wait(0.2)
RunAdonisCommand(":timenotify all 10 Description: "..description)
task.wait(0.2)
RunAdonisCommand(":timenotify all 10 Username: "..name2)
end)

RegisterAdonisCommand("getraw",1,function(site)
local result = http.Get(site)
RunAdonisCommand(":sh Raw text: "..result)
end)

RegisterAdonisCommand('tph', 1, function(gg)
    RunAdonisCommand(":tp "..gg.." 1,28,84")
end)

RegisterAdonisCommand('t', 1, function(aa)
    RunAdonisCommand(":m + SaturnCMD +
"..aa)
end)

RegisterAdonisCommand('fn', 1, function(dd)
    RunAdonisCommand(":flynoclip "..dd)
end)

RegisterAdonisCommand("help",1,function(a)
RunAdonisCommand(":chatnotifyc all 0 153 255 + SaturnCMD Commands +")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 :getraw ; Get raw text")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 :check ; Look up someone's User ID")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 :tph ; Teleport to the Admin House")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 :t ; Fancy version of :m")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 :fn ; Alias of Flynoclip")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 :help ; This menu you see right now")
end)

Instance.new("Sound", workspace)
local sound = workspace.Sound
sound.SoundId = "rbxassetid://5072915476"
task.wait(0.1)
RunAdonisCommand(":chatnotifyc all 0 153 255 [ SaturnCMD ] Loaded successfully! In testing stage")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 + Type :help for a list of commands +")
sound.Playing = true
task.wait(4.5)
workspace.Sound:Destroy()
