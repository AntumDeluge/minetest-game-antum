
--  The MIT License (MIT)
--  
--  Copyright © 2016 Jordan Irwin
--  
--  Permission is hereby granted, free of charge, to any person obtaining a copy of
--  this software and associated documentation files (the "Software"), to deal in
--  the Software without restriction, including without limitation the rights to
--  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
--  of the Software, and to permit persons to whom the Software is furnished to do
--  so, subject to the following conditions:
--  
--    The above copyright notice and this permission notice shall be included in
--    all copies or substantial portions of the Software.
--  
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--  SOFTWARE.



-- Define function for adding a craft recipe for stained woods
addStainedWoodCraft = function(color)
	local node_name = "stained_wood:" .. color
	local dye_name = "dye:" .. color
	
	-- FIXME: Change stained wood name to "stained_wood:violet"?
	if color == "purple" then
		dye_name = "dye:violet"
	end
	
	minetest.register_craft({
		type = "shapeless",
		output = node_name,
		recipe = {"default:wood", dye_name},
	})
end


-- Register all stained wood craft recipes
for i = 1, wood_colors_count do
	addStainedWoodCraft(wood_colors[i])
end
