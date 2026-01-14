# Copy current pixel
data modify storage killerbunnynametag:image current.pixel_color set \
  from storage killerbunnynametag:image current.image_data[0]
data modify storage killerbunnynametag:image current.description_text set \
  from storage killerbunnynametag:image current.description[0]

scoreboard players add $index.image_data killerbunnynametag.image 1

# Calculate column
scoreboard players operation $index.column killerbunnynametag.image = $index.image_data killerbunnynametag.image
scoreboard players operation $index.column killerbunnynametag.image %= $width killerbunnynametag.image

# Calculate row
scoreboard players operation $index.row killerbunnynametag.image = $index.image_data killerbunnynametag.image
scoreboard players operation $index.row killerbunnynametag.image /= $width killerbunnynametag.image

# Append start spacing
execute if score $index.column killerbunnynametag.image matches 1 run \
  function killerbunnynametag:image/process/append/blank

# Append colored pixel
execute unless data storage killerbunnynametag:image current{pixel_color: ''} run \
  function killerbunnynametag:image/process/append/pixel
# Append background pixel
execute if data storage killerbunnynametag:image current{pixel_color: ''} run \
  function killerbunnynametag:image/process/append/background

# Append description
execute if score $index.column killerbunnynametag.image matches 0 run \
    function killerbunnynametag:image/process/image_end/description

# Remove first element from the image_data array
data remove storage killerbunnynametag:image current.image_data[0]
# Loop over rows
execute if score $index.row killerbunnynametag.image < $height killerbunnynametag.image run \
  function killerbunnynametag:image/process/loop_over_image_data
 