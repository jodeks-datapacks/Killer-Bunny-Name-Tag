#> killerbunnynametag:image/process/generate
#
# This function generates the image data.

data modify storage killerbunnynametag:image current.image_data set from storage killerbunnynametag:image image_data
data modify storage killerbunnynametag:image current.description set from storage killerbunnynametag:image description
data modify storage killerbunnynametag:image current.pixel_character set from storage killerbunnynametag:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data killerbunnynametag.image 0
# Set width
execute store result score $width killerbunnynametag.image run data get storage killerbunnynametag:image width
# Set height
execute store result score $height killerbunnynametag.image run data get storage killerbunnynametag:image height
# Set length
scoreboard players operation $length killerbunnynametag.image = $width killerbunnynametag.image
scoreboard players operation $length killerbunnynametag.image *= $height killerbunnynametag.image
# Clear remaining entries in tellraw
data remove storage killerbunnynametag:image tellraw

# Add spacing on top
function killerbunnynametag:image/process/append/line_break
# Loop over image data
function killerbunnynametag:image/process/loop_over_image_data
# Add spacing on bottom
function killerbunnynametag:image/process/append/line_break