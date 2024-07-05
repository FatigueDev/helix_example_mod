local module, m = {}, {}
setmetatable(module, m)

function m.__call()

    local result = json.encode({test = 1, thing = 2})

    Helix.Log.Json(result)

    print("Hello")

    ---@type ICoreServerAPI | ICoreClientAPI
    api = api or {}

    if api.Side == EnumAppSide.Server then
        print("HELIX: Serverside start pre ran!")
    elseif api.Side == EnumAppSide.Client then

        api.Event.RegisterGameTickListener(function(deltaTime)

            Counter = require("client.cl_counter")
            Counter:DoCount()

        end, 5000)

        ---@param keyEvent KeyEvent
        api.Event.KeyDown(function(keyEvent)
            if keyEvent.KeyCode == GlKeys.D then
                api.ShowChatMessage("Pressed D.")
            end
        end)
    end
end

return module



