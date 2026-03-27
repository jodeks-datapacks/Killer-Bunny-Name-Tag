advancement revoke @a only killer_bunny_name_tag:rename_rabbit_to_killer

data modify entity @e[type=rabbit,name="The Killer Bunny",limit=1,tag=!killer_bunny,nbt=!{RabbitType:99}] data.RabbitType set from entity @e[type=rabbit,name="The Killer Bunny",limit=1,tag=!killer_bunny,nbt=!{RabbitType:99}] RabbitType

tag @e[type=rabbit,name="The Killer Bunny",tag=!killer_bunny,nbt=!{RabbitType:99}] add killer_bunny

data modify entity @e[type=rabbit,name="The Killer Bunny",limit=1,tag=killer_bunny,nbt=!{RabbitType:99}] RabbitType set value 99


