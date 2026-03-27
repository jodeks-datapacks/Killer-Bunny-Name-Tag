# Copy current pixel
data modify storage killer_bunny_name_tag:image data.current.pixel_color set \
  from storage killer_bunny_name_tag:image data.current.image_data[0]
data modify storage killer_bunny_name_tag:image data.current.description_text set \
  from storage killer_bunny_name_tag:image data.current.description[0]

scoreboard players add $index.image_data killer_bunny_name_tag.image 1

# Calculate column
scoreboard players operation $index.column killer_bunny_name_tag.image = $index.image_data killer_bunny_name_tag.image
scoreboard players operation $index.column killer_bunny_name_tag.image %= $width killer_bunny_name_tag.image

# Calculate row
scoreboard players operation $index.row killer_bunny_name_tag.image = $index.image_data killer_bunny_name_tag.image
scoreboard players operation $index.row killer_bunny_name_tag.image /= $width killer_bunny_name_tag.image

# Append start spacing
execute if score $index.column killer_bunny_name_tag.image matches 1 run \
  function killer_bunny_name_tag:image/process/append/blank

# Append colored pixel
execute unless data storage killer_bunny_name_tag:image data.current{pixel_color: ''} run \
  function killer_bunny_name_tag:image/process/append/pixel
# Append background pixel
execute if data storage killer_bunny_name_tag:image data.current{pixel_color: ''} run \
  function killer_bunny_name_tag:image/process/append/background

# Append description
execute if score $index.column killer_bunny_name_tag.image matches 0 run \
    function killer_bunny_name_tag:image/process/image_end/description

# Remove first element from the image_data array
data remove storage killer_bunny_name_tag:image data.current.image_data[0]
# Loop over rows
execute if score $index.row killer_bunny_name_tag.image < $height killer_bunny_name_tag.image run \
  function killer_bunny_name_tag:image/process/loop_over_image_data
 