function FIRE:SETUP()
	LogInfo("Starting Fire TV IP USB Driver")
	local ip = Properties["Device IP Address"] or ""
	local uri = "http://" .. ip .. "/status"
	C4:urlGet(uri, {}, false,
	   function(ticketId, strData, responseCode, tHeaders, strError)
		  if responseCode == 200 then
			 UpdateProperty("Status", "Connected")
		  else
			 UpdateProperty("Status", "Not connected")
		  end
	   end)
end

function FIRE:SEND_COMMAND(command)

	local ip = Properties["Device IP Address"] or ""
	local url = "http://" .. ip .. "/" .. command

    C4:urlGet (url, {}, false, function (ticketId, strData, responseCode, tHeaders, strError)
		local output = {'---URL response---'}
		if (strError) then
			table.insert (output, strError)
		else
			table.insert (output, 'Response Code: ' .. tostring (responseCode))
			table.insert (output, 'Returned data: ' .. (strData or ''))
		end
		output = table.concat (output, '\r\n')
		dbg (output)
	
		if (strError) then
			C4:SetVariable ('HTTP_ERROR', strError)
			C4:SetVariable ('HTTP_RESPONSE_DATA', '')
			C4:SetVariable ('HTTP_RESPONSE_CODE', 0)
			C4:FireEvent ('Error')
		else
			C4:SetVariable ('HTTP_ERROR', '')
			C4:SetVariable ('HTTP_RESPONSE_DATA', strData)
			C4:SetVariable ('HTTP_RESPONSE_CODE', responseCode)
			C4:FireEvent ('Success')
		end
	end)
end

function dbg (data)
	if (type (data) == 'table') then
		for k, v in pairs (data) do print (k, v) end
	elseif (type (data) ~= 'nil') then
		print (type (data), data)
	else
		print ('nil value')
	end
end