local hook, meta_hook = {}, {}
setmetatable(hook, meta_hook)

meta_hook.__call = function(...)

    ---@type ICoreClientAPI
    capi = select(2, ...)

    capi.Logger.Event("Player is ready!")

    return true;

    -- ---@type ActiveSlotChangeEventArgs
    -- eventArgs = select(3, ...)
    
    -- capi.Event.RegisterCallback(function(dt) capi.ShowChatMessage("beans") end, 1000)

    -- capi.ShowChatMessage("Moved from "..tostring(eventArgs.FromSlot).." to "..tostring(eventArgs.ToSlot))
end

return hook;
