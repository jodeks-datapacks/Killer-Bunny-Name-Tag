# Append blank
function killer_bunny_name_tag:image/process/append/blank

data modify storage killer_bunny_name_tag:image data.tellraw append \
  from storage killer_bunny_name_tag:image data.current.description_text

# Append blank
function killer_bunny_name_tag:image/process/append/blank

# Append line_break
execute unless score $index.image_data killer_bunny_name_tag.image = $length killer_bunny_name_tag.image \
  run function killer_bunny_name_tag:image/process/append/line_break

# Remove first element from the description
data remove storage killer_bunny_name_tag:image data.current.description[0]
 