#> killerbunnynametag:app/setup
# Called on load

scoreboard objectives add killerbunnynametag.image dummy

# Print the image
function killerbunnynametag:config/image

advancement revoke @a only killerbunnynametag:rename_rabbit_to_killer
advancement revoke @s only killerbunnynametag:rename_rabbit