
# 近くにいるinteractionにTagを付ける。
tag @e[tag=reizo_sit_lib,type=interaction,distance=..8] add reizo_sit_lib.staging

# 近くにいない奴にはなしだ。
tag @e[tag=reizo_sit_lib,type=interaction,distance=8..] remove reizo_sit_lib.staging

# 座っているときは消しておきたい。
execute \
if predicate reizo_sit_lib:ride_interaction run \
tag @e[tag=reizo_sit_lib.staging,sort=nearest] remove reizo_sit_lib.staging