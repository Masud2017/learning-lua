print("Hello World!")

Example = {}

function Example.result()
    print("Hello world")
end



Example.result()

print("Now working on inheritance ...")

-- base class
local base = {}

base.new = function()
    local self = {}
    self.publicData = "This is public data msg"
    return self

end

local ExtendingClass  = {}

ExtendingClass.new = function()
    local self = base.new()
    
    -- private property
    local Data = 34

    self.getData = function ()
        return Data
    end

    return self

end



local extendingClassInstance = ExtendingClass.new()

print(extendingClassInstance.publicData)
print(extendingClassInstance.getData()) -- accessing the private data





-- function overloading
local BaseClass = {}

BaseClass.new = function  () 
    local self = {}
    function self.baseFunction()
        print("Inside the baseFunction")
    end

    return self
end

local ExtendedClass1 = {}
ExtendedClass1.new = function()
    local self = BaseClass.new() -- extending the properties of BaseClass
    function self.baseFunction()
        print("Inside overriding function")
    end
end



