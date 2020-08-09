-- get header from HTML thing --

local args = {...}

local IN = assert(io.open(args[1]))

local data = IN:read("a")
IN:close()

local head = data:match("<h1>(.-)</h1>")
head = head:gsub("\n", "")
head = head:gsub("^[%s]+", "")
print(head)
