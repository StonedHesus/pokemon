-- Include all the requirements for this compilation unit.
require '../../stack/Stack'

-- Specify that the Stack class utilised the class structure/pattern which is defined within the lib directory.
-- In addition to that, also ensure that our current stack extends the generic Stack class, so as to get 
-- access to its generic API, in order to override it and add to it new functionalities.
Stack = Class{__extends Stack}

--[[
    This here routine is responsible for updating the topmost element of the 
    stack, which can also be seen as the state which is current active.

    Due to the nature of our design, we will solely update one state at 
    a time.

    Author: Andrei-Paul Ionescu.
]]
function Stack:update(deltaTime)
    self.values[#self.values]:update(deltaTime)
end

--[[
    This here routine is responsible for drawing all the states which are stored 
    within the stack in the order in which they were inserted, i.e. from 
    the oldest to the newest state added.

    In order to achieve this, we utilise the ipairs() standard library 
    method.

    Author: Andrei-Paul Ionescu.
]]
function Stack:draw()
    for _, state in ipairs(self.values) do
        state:draw()
    end
end

--[[
    This routine is responsible for pushing a new state upon the stack.

    The routine differs from the standard stack API push method by one 
    sole aspect: it enters within the state which we pushed, hence 
    activating it, and ensuring that the user will immediately enter 
    in contatct with that state.

    Author: Andrei-Paul Ionescu.
]]
function Stack:push(state)
    table.insert(self.values, state)
    state:enter()
end

--[[
    This here routine is responsible for popping the top-most element of 
    the stack.

    In addition to popping it, the routine will also exit the state so as 
    to ensure that the game reverts back to the previous state.

    Author: Andrei-Paul Ionescu.
]]
function Stack:pop()
    self.values[#self.values]:exit()
    table.remove(self.values)
end
