# Iterate through space

scoreboard players operation #index_tree_y_layer_2 nexus.value *= #16 nexus.value
scoreboard players operation #index_tree_y nexus.value -= #index_tree_y_layer_2 nexus.value
scoreboard players set #index_tree_y_layer_2 nexus.value 0

scoreboard players add #index_tree_z nexus.value 64
scoreboard players add #index_tree_z_layer_3 nexus.value 1

execute if score #index_tree_range nexus.value matches ..64 run function nexus:generic/tree/index/zy/layer/end

scoreboard players set #index_tree_overflow_boolean nexus.value 0
execute if score #index_tree_z nexus.value < #index_tree_z_range nexus.value if score #index_tree_y nexus.value < #index_tree_y_range nexus.value run scoreboard players set #index_tree_overflow_boolean nexus.value 1
execute if score #index_tree_overflow_boolean nexus.value matches 0 run function nexus:generic/tree/index/zy/layer/block/z/3
execute if score #index_tree_z_layer_3 nexus.value matches 4.. run function nexus:generic/tree/index/zy/layer/block/z/3