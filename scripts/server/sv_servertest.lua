-- Untested at the moment.

print("Test")
print("Hello World from Lua")
print("Beans!!")
local newCommandName = "banana"

-- if ServerCoreAPI.get_ChatCommands().Get(newCommandName) then return end


api.ChatCommands.Create(newCommandName)
    .WithDescription("Broadcast that you sent banana")
    .HandleWith(function(args)
            local allPlayers = ServerCoreAPI.Server().get_Players()

            for p in allPlayers do
                p.SendMessage(GlobalConstants.GeneralChatGroup, args.Caller.Player.get_PlayerName(), EnumChatType.Notification, nil)                
            end

            result = TextCommandResult.ctor()
            result.Status = EnumCommandStatus.Success
            return result
        end)