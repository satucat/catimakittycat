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

RegisterAdonisCommand('t', 1, function(ee)
    RunAdonisCommand(":m + SaturnCMD +
"..ee)
end)

RegisterAdonisCommand('fn', 1, function(ee)
    RunAdonisCommand(":flynoclip "..ee)
end)

RegisterAdonisCommand('jre', 1, function(ee)
    RunAdonisCommand(":jail "..ee.." | :re "..ee.." | !wait 0.1 | :unjail "..ee)
end)

RegisterAdonisCommand('ref', 1, function(ee)
    RunAdonisCommand(":refresh "..ee)
end)

RegisterAdonisCommand('crazy', 1, function(ee)
    RunAdonisCommand(":r6 "..ee)
    task.wait(1)
    RunAdonisCommand(":animation "..ee.." 33796059 true 1e4")
    RunAdonisCommand(":charaudio "..ee.. " 133393010375601")
end)

RegisterAdonisCommand('satudance', 1, function(kk)
    RunAdonisCommand(":r6 "..kk)
    task.wait(1)
    RunAdonisCommand(":animation "..kk.." 84600312930102")
    RunAdonisCommand(":charaudio "..kk.. " 132000587153375 true 1 0.2 false 1 10 80")
end)

RegisterAdonisCommand("iff", 1, function(x)
    local players = GetPlayersFromAdonis(x)
    for _, player in players do
    local chr = player.Character
    local ff = Instance.new("ForceField", chr)
    ff.Visible = false
  end
end)

RegisterAdonisCommand('satuclear', 1, function(veryangryWHYDOINEEDTHISUSELESSFUNCTIONbrooooo)
    RunAdonisCommand(":runahsl workspace.ClearAllChildren()")
    task.wait(0.2)
    RunAdonisCommand(":refresh all")
    task.wait(0.5)
    RunAdonisCommand(":music 132759098234718 true 1 2")
    RunAdonisCommand(":sm Workspace was cleared. If nothing happened,
it's a problem with AHSL Anti Abuse.")
end)

RegisterAdonisCommand("help",1,function(a)
RunAdonisCommand(":chatnotifyc all 0 153 255 Please wait, the commands list will take a bit to load!")
RunAdonisCommand(":chatnotifyc all 0 153 255 + SaturnCMD Commands +
:getraw ; Get raw text
:check ; Look up someone's User ID
:tph - REMOVED ; Teleport to the AH
:t ; Fancy version of :m
:fn ; Alias of Flynoclip
:ref ; Alias of :refresh
:jre ; :re, but you keep your spot
:crazy ; that catnip was great
:iff ; Better :god + Credit to Lorelynx
:satudance ; My version of :dance
:help ; This menu you see right now")
end)

Instance.new("Sound", workspace)
local sound = workspace.Sound
sound.SoundId = "rbxassetid://5072915476"
task.wait(0.1)
RunAdonisCommand(":image all 8401596858 | !wait 0.2 | :itransparency all 1 2 Sine InOut | :wait 2 | :unimage all")
RunAdonisCommand(":chatnotifyc all 0 153 255 [ SaturnCMD ] Loaded! You are on version Release.14.09")
task.wait(0.5)
RunAdonisCommand(":chatnotifyc all 255 255 255 + Type :help for a list of commands +")
sound.Volume = 3
sound.PlaybackSpeed = 1.1
sound.Playing = true
task.wait(4.5)
workspace.Sound:Destroy()
