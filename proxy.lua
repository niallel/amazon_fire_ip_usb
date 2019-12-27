--[[=============================================================================
    ReceivedFromProxy(idBinding, sCommand, tParams)

    Description
    Function called for any actions executed by the user from the Actions Tab
    in Composer.

    Parameters
    idBinding(int)   - Binding ID of the proxy that sent a BindMessage to the
                       DriverWorks driver.
    sCommand(string) - Command that was sent
    tParams(table)   - Lua table of received command parameters

    Returns
    Nothing
===============================================================================]]
function ReceivedFromProxy(idBinding, sCommand, tParams)

	if (sCommand ~= nil) then

		-- initial table variable if nil
		if (tParams == nil) then
			tParams = {}
		end
		
		LogTrace("ReceivedFromProxy(): " .. sCommand .. " on binding " .. idBinding .. "; Call Function PRX_CMD." .. sCommand .. "()")
		--LogInfo(tParams)
		if ((PRX_CMD[sCommand]) ~= nil) then
			LogInfo("Code: " .. sCommand)
			local status, err = pcall(PRX_CMD[sCommand], idBinding, tParams)
			if (not status) then
				LogError("LUA_ERROR: " .. err)
			end
		else
			LogInfo("ReceivedFromProxy: Unhandled command = " .. sCommand)
		end
	end
end

function PRX_CMD.UP(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/up")
end

function PRX_CMD.END_UP(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.DOWN(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/down")
end

function PRX_CMD.END_DOWN(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.LEFT(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/left")
end

function PRX_CMD.END_LEFT(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.RIGHT(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/right")
end

function PRX_CMD.END_RIGHT(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.PLAY(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/hold/play")
end

function PRX_CMD.END_PLAY(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/release")
end

function PRX_CMD.STOP(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/play")
end

function PRX_CMD.END_STOP(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.PAUSE(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/hold/play")
end

function PRX_CMD.END_PAUSE(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/release")
end

function PRX_CMD.ENTER(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/enter")
end

function PRX_CMD.END_ENTER(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.SCAN_FWD(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/forward/hold")
end

function PRX_CMD.END_SCAN_FWD(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/release")
end

function PRX_CMD.END_SCAN_REV(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/release")
end

function PRX_CMD.SCAN_REV(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/rewind/hold")
end

function PRX_CMD.SKIP_FWD(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/forward")
end

function PRX_CMD.SKIP_REV(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/rewind")
end

function PRX_CMD.RECORD(idBinding, tParams)
    return
end

function PRX_CMD.CANCEL(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/escape")
end

function PRX_CMD.RECALL(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/escape")
end

function PRX_CMD.PROGRAM_A(idBinding, tParams)
    return
end

function PRX_CMD.PROGRAM_B(idBinding, tParams)
    return
end

function PRX_CMD.PROGRAM_C(idBinding, tParams)
    return
end

function PRX_CMD.PROGRAM_D(idBinding, tParams)
    return
end

function PRX_CMD.PAGE_UP(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/up")
end

function PRX_CMD.END_PAGE_UP(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.PAGE_DOWN(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/down")
end

function PRX_CMD.END_PAGE_DOWN(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.PULSE_CH_UP(idBinding, tParams)
    return
end

function PRX_CMD.PULSE_CH_DOWN(idBinding, tParams)
    return
end

function PRX_CMD.GUIDE(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/hold/home")
end

function PRX_CMD.END_GUIDE(idBinding, tParams)
    FIRE:SEND_COMMAND("consumer/release")
end

function PRX_CMD.INFO(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/application")
end

function PRX_CMD.END_INFO(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.MENU(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/hold/application")
end

function PRX_CMD.END_MENU(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/release")
end

function PRX_CMD.NUMBER_1(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/1")
end

function PRX_CMD.NUMBER_2(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/2")
end

function PRX_CMD.NUMBER_3(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/3")
end

function PRX_CMD.NUMBER_4(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/4")
end

function PRX_CMD.NUMBER_5(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/5")
end

function PRX_CMD.NUMBER_6(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/6")
end

function PRX_CMD.NUMBER_7(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/7")
end

function PRX_CMD.NUMBER_8(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/8")
end

function PRX_CMD.NUMBER_9(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/9")
end

function PRX_CMD.NUMBER_0(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/0")
end

function PRX_CMD.STAR(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/*")
end

function PRX_CMD.POUND(idBinding, tParams)
    FIRE:SEND_COMMAND("keyboard/#")
end

function PRX_CMD.PVR(idBinding, tParams)
    return
end

function PRX_CMD.CUSTOM_1(idBinding, tParams)
    return
end

function PRX_CMD.CUSTOM_2(idBinding, tParams)
    return
end

function PRX_CMD.CUSTOM_3(idBinding, tParams)
    return
end

function PRX_CMD.OFF(idBinding, tParams)
    return
end

function PRX_CMD.ON(idBinding, tParams)
    return
end

function EX_CMD.LUA_ACTION(tParams)
    return
end

function PRX_CMD.SELECT_SOURCE(idBinding, tParams)
--Ignored
end

function PRX_CMD.GET_VIDEO_PATH(idBinding, tParams)
--Ignored
end

function PRX_CMD.GET_AUDIO_PATH(idBinding, tParams)
--Ignored
end

function PRX_CMD.REQUEST_CURRENT_MEDIA_INFO(idBinding, tParams)

end