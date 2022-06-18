module = {}

module.constant = "This is const"
function module.func1()
    io.write("This is global function")
end

local function func2()
    print("This is local function")
end

function module.func3()
    func2()
end

return module