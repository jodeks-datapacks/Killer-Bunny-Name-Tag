#> killer_bunny_name_tag:app/setup
# Called on load

scoreboard objectives add jodek.config dummy
execute unless score &killer_bunny_name_tag_load_message jodek.config = &killer_bunny_name_tag_load_message jodek.config run scoreboard players set &killer_bunny_name_tag_load_message jodek.config 1
execute unless score &killer_bunny_name_tag_advancements jodek.config = &killer_bunny_name_tag_advancements jodek.config run scoreboard players set &killer_bunny_name_tag_advancements jodek.config 1

scoreboard objectives add killer_bunny_name_tag.image dummy

# Print the image
function killer_bunny_name_tag:config/image

advancement revoke @a only killer_bunny_name_tag:rename_rabbit_to_killer
advancement revoke @s only killer_bunny_name_tag:rename_rabbit