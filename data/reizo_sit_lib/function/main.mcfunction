
# 最初だけの処理。
execute \
unless data storage reizo_sit:_ init run function reizo_sit_lib:init

# プレイヤーの動作。
execute as @a at @s run function reizo_sit_lib:player/main

# entityの動作。
execute as @e at @s run function reizo_sit_lib:entity/main