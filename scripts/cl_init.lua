local module, m = {}, {}
setmetatable(module, m)

function m.__call()

    ---@type ICoreClientAPI
    local api = api or {}

    api.Event.RegisterGameTickListener(function(deltaTime)
        -- helloModule.PrintHello()
    end, 500)

end

return module



