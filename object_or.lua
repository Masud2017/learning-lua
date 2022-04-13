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

    return self
end


local ExtendedClass2 = {}

ExtendedClass2.new = function()
    local self = BaseClass.new()
    local parentBaseFunction = self.baseFunction

    function self.baseFunction()
        parentBaseFunction()
        print("Inside overriding function class 2")
    end

    return self
end


local exntededClass1Instance = ExtendedClass1.new()
exntededClass1Instance.baseFunction()

local exntededClass2Instance = ExtendedClass2.new()
exntededClass2Instance.baseFunction()




-- Adding abstract function

local BClass = {} -- BaseClass

BClass.new = function()
    local self = {}

    function self.baseFunction()
        -- error("I am abstract!!")
    end

    return self
end

local ExtendedClassAbstract1 = {}
ExtendedClassAbstract1.new = function()
    local self = BClass.new()
    return self
end

local ExtendedClassAbstract2 = {}
ExtendedClassAbstract2.new = function()
    local self = BClass.new()

    function self.baseFunction()
        print("Inside overriding function")
    end

    return self
end

local ExtendedClassAbstract1Instance = ExtendedClassAbstract1.new()
ExtendedClassAbstract1Instance.baseFunction()

local ExtendedClassAbstract2Instance = ExtendedClassAbstract2.new()
ExtendedClassAbstract2Instance.baseFunction()



-- Meta class
Rectangle = {area = 0, length = 0, breadth = 0}

-- Derived class method new

function Rectangle:new (o, length,breadth)
    o = o or {}
    
    setmetatable(o,self)

    self.__index = self
    self.length = length or 0
    self.breadth = breadth or 0
    self.area = length * breadth

    return o
end

function Rectangle:printArea()
    print("The are of Rectangle is : ",self.area)
end

object = Rectangle:new(nil,10,20)
print(object.o)

object:printArea()


require("FileHandler")

collectgarbage("collect")
print("Space that this program is taking while run time : ",collectgarbage("count"),"KB")
local fileInstance = FileClass.new()

fileInstance.createFile("log.txt")
fileInstance.writeSomething("Hello world this is my first lua file handling program")
-- fileInstance.readSomething()
fileInstance.closeFilePointer()