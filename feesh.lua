windower.add_to_chat(167, 'FEESH loaded! Happy fishing! -Grem')
windower.register_event('incoming text', function(original, modified, color)
    if original:match("You have a good feeling about this one!") then
        return "Good feeling!", 6
    elseif original:match("You have a terrible feeling about this one.") then
        return "TERRIBLE FEELING!!", 3
	elseif original:match("You have a bad feeling about this one.") then
        return "Bad feeling." , 2
	elseif original:match("Something clamps onto your line ferociously!") then
        return "MONSTER!" , 3
	elseif original:match("Something caught the hook!") then
        return "Small fish!" , 6
	elseif original:match("Something caught the hook!!!") then
        return "BIG FISH!!!" , 6
	elseif original:match("You feel something pulling at your line.") then
        return "Item..." , 4
    end
    return original, color
end)