RegisterAdonisCommand('stealmesh', 1, function(abcdefghijklmnopqrstuvwxyzunneededfunction)

var player = GetLocalPlayer()
var mouse = player:GetMouse()

RunAdonisCommand(":delpart 99999 | :makepart 99999 | :setcollision 99999 false | :settransparency 99999 1")

while true do
    if mouse ~= nil and mouse.Active == true then
        var hitPos = mouse.Hit.Position
        RunAdonisCommand(":setvar MousePosition vector3:" .. tostring(hitPos))
        RunAdonisCommand(":movepart 99999 exact var:MousePosition")

        var part99999 = GetChild(Workspace, "Part (Index: 99999)", true)
        if part99999 ~= nil then
            var partPos = Get(part99999, "Position")

            var allObjects = GetDescendants(Workspace)
            var total = #allObjects

            for i = 1, total do
                var obj = allObjects[i]
                pcall(function()
                    if IsA(obj, "BasePart") and obj ~= part99999 then
                        var objPos = Get(obj, "Position")
                        var dx = objPos.X - partPos.X
                        var dy = objPos.Y - partPos.Y
                        var dz = objPos.Z - partPos.Z
                        var dist = math.sqrt(dx*dx + dy*dy + dz*dz)

                        if dist <= 5 then
                            var children = GetChildren(obj)
                            var count = #children
                            for j = 1, count do
                                var child = children[j]
                                pcall(function()
                                    if IsA(child, "SpecialMesh") or IsA(child, "FileMesh") then
                                        var meshId = Get(child, "MeshId")
                                        if meshId ~= "" then
                                            Print("Mesh found:")
                                            Print("Part Name:", Get(obj, "Name"))
                                            Print("MeshId:", meshId)
                                        end
                                    end
                                end)
                            end
                        end
                    end
                end)
            end
        end
    end
    Wait(0.5)
end

end)