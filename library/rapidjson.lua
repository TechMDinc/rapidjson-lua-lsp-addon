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


---
---Dump a Lua value to a JSON file.
---
---@param value jsonValue
---@param filename string The file path of where to save the JSON string.
---@param options? jsonOptions
---@return boolean|boolean error
function rapidjson.dump(value, filename, options) end


---
---Create a new empty table that has the metatable field __jsontype set as 'object' so that the encode
---and dump function will encode it as a JSON object.
---
---@param t? table An optional table to set as a JSON object type.
---@return table
function rapidjson.object(t) end


---
---Create a new empty table that has the metatable field __jsontype set as 'array' so that the encode
---and dump function will encode it as a JSON array.
---
---@param t? table An optional table to set as a JSON array type.
---@return table
function rapidjson.array(t) end


---@class Document
local Document = {}


---
---Create a rapidjson Document object.  Optionally uses a table of JSON string for the document.
---
---@param doc? table|string
---@return Document
function rapidjson.Document(doc) end


---
---Parse a JSON document contained in the given string.
---
---@param jsonString string
---@return boolean|boolean error
function Document:parse(jsonString) end


---
---Get a member from the Document by the given JSON pointer.
---
---@param pointer string
---@param default? any The default value to return if the document does not contain value(s) at the pointer.
---@return any|nil Returns the value if found, otherwise returns default or nil if no default given.
function Document:get(pointer, default) end


---
---Set a JSON Document member value by JSON pointer.
---
---@param pointer string
---@param value any
function Document:set(pointer, value) end


---@class SchemaDocument
local SchemaDocument = {}


---
---Creates a SchemaDocument from Document or a Lua table or a string contains a JSON schema.
---
---@param doc Document|table|string
---@return SchemaDocument
function rapidjson.SchemaDocument(doc) end


---@class SchemaValidator
local SchemaValidator = {}


---
---Creates a SchemaValidator from a SchemaDocument.
---
---@param sd SchemaDocument
---@return SchemaValidator
function rapidjson.SchemaValidator(sd) end


---
---Validate a given JSON document using the SchemaValidator.
---
---@param doc Document
---@return boolean|boolean error
function SchemaValidator:validate(doc) end


return rapidjson
