local ffi = require("ffi")
local inspect = require("inspect")

require("allegro52")

local retval = false

local allegro = ffi.load("allegro_monolith-debug-5.2.dll")

local ALLEGRO_VERSION_INT = ffi.cast("int", 84018176)
retval = allegro.al_install_system(ALLEGRO_VERSION_INT, nil)
assert(retval == true)

retval = allegro.al_install_keyboard()
print(retval)

local display = allegro.al_create_display(800, 600)
assert(display ~= nil)

while true do
    allegro.al_clear_to_color(allegro.al_map_rgb(255, 255, 255))
    allegro.al_flip_display()
end
