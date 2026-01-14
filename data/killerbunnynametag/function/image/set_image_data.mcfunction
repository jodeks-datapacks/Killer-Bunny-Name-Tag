#> killerbunnynametag:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage killerbunnynametag:image image_data  
# @writes storage killerbunnynametag:image width  
# @writes storage killerbunnynametag:image height  
# @writes storage killerbunnynametag:image background_color  
# @writes storage killerbunnynametag:image description  
# @writes storage killerbunnynametag:image pixel_character.blank  
# @writes storage killerbunnynametag:image pixel_character.chat  
# @writes storage killerbunnynametag:image pixel_character.lore

data remove storage killerbunnynametag:image image_data
data remove storage killerbunnynametag:image width
data remove storage killerbunnynametag:image height
data remove storage killerbunnynametag:image background_color
data remove storage killerbunnynametag:image description

$data modify storage killerbunnynametag:image image_data set value $(image_data)
$data modify storage killerbunnynametag:image width set value $(width)
$data modify storage killerbunnynametag:image height set value $(height)
$data modify storage killerbunnynametag:image background_color set value "$(background_color)"
$data modify storage killerbunnynametag:image description set value $(description)

data modify storage killerbunnynametag:image pixel_character.blank set value "　"
data modify storage killerbunnynametag:image pixel_character.pixel set value "▌▌"
data modify storage killerbunnynametag:image pixel_character.line_break set value '\n'

function killerbunnynametag:image/process/generate
