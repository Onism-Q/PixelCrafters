# 函数名: generate_structure
# 功能: 在玩家面前5格区域生成名为"shuatieji.nbt"的结构
# 用法: 在游戏中输入 /function generate_structure 即可执行该函数

# 输出消息到聊天框
say 结构将在你面前的5格距离生成

# 获取玩家位置
execute as @a at @s positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["structure_marker"],Marker:1b,Invisible:1b,NoGravity:1b}

# 生成结构
execute as @a at @s positioned ^ ^ ^5 run structure load shuatieji ~ ~ ~

# 移除标记实体
kill @e[type=minecraft:armor_stand,tag=structure_marker]

# 输出成功消息到聊天框
say 生成成功