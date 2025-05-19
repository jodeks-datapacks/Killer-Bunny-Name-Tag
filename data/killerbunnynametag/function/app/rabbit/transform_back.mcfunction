advancement revoke @s only killerbunnynametag:rename_rabbit

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:name_tag",components:{"minecraft:custom_name":"The Killer Bunny"}}}] run \
  execute as @e[type=rabbit,limit=1,tag=killer_bunny,nbt={RabbitType:99},name=!"The Killer Bunny"] run \
    data modify entity @s RabbitType set from entity @s data.RabbitType

execute as @e[type=rabbit,tag=killer_bunny,nbt={RabbitType:0}] run tag @s remove killer_bunny
execute as @e[type=rabbit,tag=killer_bunny,nbt={RabbitType:1}] run tag @s remove killer_bunny
execute as @e[type=rabbit,tag=killer_bunny,nbt={RabbitType:2}] run tag @s remove killer_bunny
execute as @e[type=rabbit,tag=killer_bunny,nbt={RabbitType:3}] run tag @s remove killer_bunny
execute as @e[type=rabbit,tag=killer_bunny,nbt={RabbitType:4}] run tag @s remove killer_bunny
execute as @e[type=rabbit,tag=killer_bunny,nbt={RabbitType:5}] run tag @s remove killer_bunny

