--[[
    This here compilation unit contains the Stack class.

    The class is designed in such a way that it will resemble abstract definitions in more advanced and 
    verbose OOP languages.

    Its role is to define the underlying API which each stack object ought to implement, therefore 
    achieving a common language for the object despite them having cells of different types.

    Author : Andrei-Paul Ionescu.
]]

-- Specify that the Stack class utilised the class structure/pattern which is defined within the lib directory.
Stack = Class{}


--[[
    This is the constructor/initialiser routine for the class.
    Its role is to simply create a new table which it then assigns to the values field of the class.
]]
function Stack:init()
    self.values = {}
end

--[[
    The reset function's role is to assign to the attribute of the current object a new table, so as 
    to essentially wipe out the previously existed data, if any existed.
]]
function Stack:reset()
    self.values = {}
end

--[[
    param : value - a value which we wish to push on the stack.

    The push routine simply pushes the value passed as the argument of the method to the top of the stack.
    In our chosen way of modelling the stack, this will be the end of the table.
]]
function Stack:push(value)
    table.insert(self.values, value)
end

--[[
    The pop routine is responsible for retrieving and extracting the top value.
    Once again, due to the way in which we model the stack, this value will be the tail of the table, i.e.
    the furthest value apart from the initial address, in an array like sequential structure. 
    Since a table in Lua is a hashed based structure the narrative differs a tad but it achieves the same 
    underlying effect.  
]]
function Stack:pop()
    value = table.remove(self.values)

    return value
end

--[[
    The last member function of the class, and implicitly component of the Stack's API is the 
    size() routine which will return the cardinal, i.e. the number of elements which are currently 
    present within the stack.
]]
function Stack:size()
    return #self.values
end