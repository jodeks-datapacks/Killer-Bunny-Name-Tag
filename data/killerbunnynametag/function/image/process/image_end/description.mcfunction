# Append blank
function killerbunnynametag:image/process/append/blank

data modify storage killerbunnynametag:image tellraw append \
  from storage killerbunnynametag:image current.description_text

# Append blank
function killerbunnynametag:image/process/append/blank

# Append line_break
execute unless score $index.image_data killerbunnynametag.image = $length killerbunnynametag.image \
  run function killerbunnynametag:image/process/append/line_break

# Remove first element from the description
data remove storage killerbunnynametag:image current.description[0]
 