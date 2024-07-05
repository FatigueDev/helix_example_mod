---@type Helix.ModInit

json = require("json")
inspect = require("inspect")
hook = require("hook")
inspect = require("inspect")

Helix.ModInit = {
    startPre = {
        require("sh_startPre")
    },
    -- startClientside = {
    --     require("cl_init")
    -- }
}

return Helix.ModInit