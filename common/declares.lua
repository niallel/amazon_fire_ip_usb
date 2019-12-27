require "lib.c4_object"

FIRE = inheritsFrom(nil)

-- Command Handler Tables
EX_CMD = {}
PRX_CMD = {}
UI_REQ = {}
NOTIFY = {}
DEV_MSG = {}
LUA_ACTION = {}

ON_DRIVER_INIT = {}
ON_DRIVER_EARLY_INIT = {}
ON_DRIVER_LATEINIT = {}
ON_DRIVER_DESTROYED = {}
ON_PROPERTY_CHANGED = {}

-- Constants
DEFAULT_PROXY_BINDINGID = 5001

function ON_DRIVER_EARLY_INIT.p8init()
	-- Create a logger
	LOG = c4_log:new("Amazon Fire IP USB")
end