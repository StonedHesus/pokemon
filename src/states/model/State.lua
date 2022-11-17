--[[
    This here unit contains the interface which a state ought to implement.

    This methods ought to be overriden by each individual state, for by default, 
    they are meant to mimic abstract definition, i.e. they have no preconfigured 
    behaviour.
    
    Author: Andrei-Paul Ionescu.
]]

-- Specify that the State class utilised the class structure/pattern which is defined within the lib directory.
State = Class{}

function State:init() end
function State:enter() end
function State:exit() end
function State:update(deltaTime) end
function State:draw() end