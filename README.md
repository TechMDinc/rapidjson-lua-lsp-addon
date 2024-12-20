# RapidJSON Addon
This addon supports the [RapidJSON Lua extension](https://github.com/xpol/lua-rapidjson/blob/master/API.md).

## Usage
Example:
```luals
local rapidjson = require("rapidjson")

local luaTable = {
	key = "value",
	num = 128,
	name = "username",
}

local encodedJson = rapidjson.encode(luaTable)

print(encodedJson)
-- {"key":"value","num":128,"name":"username"}
```
See [RapidJSON in Q-Sys](https://help.qsys.com/q-sys_9.10/#Control_Scripting/Using_Lua_in_Q-Sys/RapidJSON.htm)
or the [RapidJSON API](https://github.com/xpol/lua-rapidjson/blob/master/API.md) for full information on using
RapidJSON.

## Enabling this addon in VSCode
After cloning or downloading this addon, add the following to the settings.json file in the .vscode folder for
your project:
```json
{
	"Lua.workspace.library": [
		"_location/of/this/addon/after/download_/rapidjson/library"
	]
}
```

## Lua Language Server Addon
This addon was created using the [Lua Language Server Addon Template](https://github.com/LuaLS/addon-template).
