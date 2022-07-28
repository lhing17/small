
function keyInput takes nothing returns nothing
	local string s = GetEventPlayerChatString()
	local player p = GetTriggerPlayer()
	local integer i = GetPlayerId(p) + 1

    set p = null
endfunction



function keyInputSystem takes nothing returns nothing
	local trigger t = CreateTrigger()
	local integer i = 1
	loop
		exitwhen i > PLAYER_COUNT
		call TriggerRegisterPlayerChatEvent(t, Player(i - 1), "", true)
		set i = i + 1
	endloop
	call TriggerAddAction(t, function keyInput)
	set t = null
endfunction
