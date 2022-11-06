
-- Include all the requirements for this compilation unit.
require '../../stack/Stack'

-- Specify that the Stack class utilised the class structure/pattern which is defined within the lib directory.
-- In addition to that, also ensure that our current stack extends the generic Stack class, so as to get 
-- access to its generic API, in order to override it and add to it new functionalities.
Stack = Class{__extends Stack}


function Stack:update(deltaTime)
    self.values[#self.values]:update(deltaTime)
end

function Stack:draw()
    for index, state in iparis(self.values) do
        state:draw()
    end
end

function Stack:push(state)
    table.insert(self.values, state)
    state:enter()
end

function Stack:pop()
    self.values[#self.values]:exit()
    table.remove(self.values)
end
