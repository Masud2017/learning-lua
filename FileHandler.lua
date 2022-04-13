FileClass = {}

FileClass.new = function ()
    local self = {}
    
    self.createFile = function(file_name)
        self.file = io.open(file_name,"w")
        self.file_reader = io.open(file_name,"r")

        io.output(self.file)
    end

    self.writeSomething = function(text)
        io.write(text)
    end

    self.readSomething = function()
        io.input(self.file_reader)

        print(io.read())

    end

    self.closeFilePointer = function()
        io.close(self.file)
    end

    return self

end

local fileInstance = FileClass.new()

fileInstance.createFile("log.txt")
fileInstance.writeSomething("Hello world this is my first lua file handling program")
fileInstance.readSomething()
fileInstance.closeFilePointer()