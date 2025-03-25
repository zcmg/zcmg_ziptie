RegisterCommand('alg',function()
    local prop_name = "zcmg_prop_ziptie"
    local playerPed = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(playerPed))
    local prop = CreateObject(joaat(prop_name), x, y, z + 0.10, true, true, true)
    local boneIndex = GetPedBoneIndex(playerPed, 57005)
    AttachEntityToEntity(prop, playerPed, boneIndex, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, true, true, false, true, 1, true)


    lib.requestAnimDict(dict)

    Wait(5000)
    ClearPedTasksImmediately(playerPed)
    ClearPedTasks(playerPed)
    DeleteObject(prop)
    

    TaskPlayAnim(playerPed, dict, clip, 2.0, 2.0, -1, 50, 0, false, false, false)

    print('terminou')



end)