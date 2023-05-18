local data = { -- Table of IDs
  37022,
  37027,
  37028
}

macro(60000, "Drop Items", function()
  for _, container in pairs(getContainers()) do
    for i, item in pairs(container:getItems()) do
        local info = table.find(data, item:getId())
        if info and item:getCount() == 100 then
          return g_game.move(item, player:getPosition(), item:getCount())
          end
      end
    end
end)