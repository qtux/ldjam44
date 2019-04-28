--[[
Snakevasion (Ludum Dare 44 - Your life is currency)

Copyright (C) 2019  Annemarie Mattmann, Matthias Gazzari

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
]]--

local suit = require "lib.suit"
local sti = require "lib.sti.sti"

local game = {}

function game:enter()

	w = love.graphics.getWidth()
	h = love.graphics.getHeight()

	love.physics.setMeter(32)

	map = sti("assets/maps/map_00.lua", {"box2d"}) -- use bump instead of box2d?

	world = love.physics.newWorld(0, 0)
	map:box2d_init(world)

end

function game:update(dt)
	map:update(dt)
end

function game:keypressed(key)

end

function game:draw()
	love.graphics.setColor(1, 1, 1)
	map:draw()
	love.graphics.setColor(1, 0, 0)
	map:box2d_draw()
end

return game
