local countTable = {
    counter = 0,
    message = "5 grundle have bacon ",
    increment = 1
}

api.ShowChatMessage("Reloaded the cl_counter file")

function countTable:DoCount()
    self.counter = self.counter + self.increment
    -- print(self.message..self.counter)
    api.ShowChatMessage(self.message..self.counter.." tomato.")
end

return countTable
