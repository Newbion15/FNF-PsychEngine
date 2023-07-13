function onCreate()
	-- background shit
	makeLuaSprite('underwater', 'underwater', -1500, -1400);
        scaleLuaSprite('underwater', 1.3, 1.3);
	setLuaSpriteScrollFactor('underwater', 0.9, 0.9);
        addLuaSprite('underwater', false);

end

function onUpdate(elapsed)    if curStep == 0 then

        started = true

    end

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/60)

doTweenY('waterfloatopponent', 'dad', 400 - 700*math.sin((currentBeat+12*12)*math.pi), 2)

doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

doTweenY('waterfloatplayer', 'boyfriend', 500 - 100*math.sin((currentBeat+12*12)*math.pi), 2)

end

