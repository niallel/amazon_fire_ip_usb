require "common.declares"
require "common.init"
require "common.c4_command"
require "common.c4_notify"
--require "common.c4_diagnostics" --DEBUG
require "proxy"
require "firetv_api"

--Init Functions

function ON_DRIVER_EARLY_INIT.main()
end

function ON_DRIVER_INIT.main()
    --Init Connected Devices
    FIRE:SETUP()
end

function ON_PROPERTY_CHANGED.DeviceIPAddress(propertyValue)
    FIRE:SETUP()
end

function ON_PROPERTY_CHANGED.SkyBoxType(propertyValue)
    FIRE:SETUP()
end