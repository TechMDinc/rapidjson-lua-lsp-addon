---@meta


---
---Use the RapidJSON module to quickly encode and decode large Lua tables to
---and from JSON documents (strings).
---
---@class rapidjson
---@field _NAME string
---@field _VERSION string
---@field null fun() A placeholder for JSON null values
local rapidjson = {}


---@alias jsonValue boolean|number|string|table|nil


---@class jsonOptions
---@field pretty boolean Set true to make output string to be pretty formated. Default is false.
---@field sort_keys boolean Set true to make JSON object keys be sorted. Default is false.
---@field empty_table_as_array boolean Set true to make empty table encode as JSON array. Default is false.


---
---Encode a Lua table to JSON string. JSON object keys can be sorted by this function.
---
---@param value jsonValue
---@param options? jsonOptions
---@return string|nil error
function rapidjson.encode(value, options) end


---
---Decode JSON to a Lua table.
---
---@param jsonString string A JSON value string to be decoded.
---@return jsonValue|nil error
function rapidjson.decode(jsonString) end


---
---Load JSON file into Lua table.
---
---@param filename string The name of the JSON file to be loaded.
---@return jsonValue|nil error
function rapidjson.load(filename) end


---@class Document


return rapidjson
