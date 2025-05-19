#> killerbunnynametag:uninstall
# Function to uninstall the datapack

data remove storage killerbunnynametag:image image_data
data remove storage killerbunnynametag:image width
data remove storage killerbunnynametag:image height
data remove storage killerbunnynametag:image background_color
data remove storage killerbunnynametag:image description
data remove storage killerbunnynametag:image tellraw

advancement revoke @a only jodek:killer_bunny_name_tag
advancement revoke @a only jodek:utility
advancement revoke @a only jodek:root

advancement revoke @a only killerbunnynametag:rename_rabbit_to_killer

say Successfully uninstalled Killer Bunny Name Tag