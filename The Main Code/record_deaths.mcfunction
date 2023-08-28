# 函数名: record_deaths
# 功能: 记录玩家的死亡次数并以计分板的方式显示出来
# 用法: 在游戏中输入 /function record_deaths 即可执行该函数

# 创建计分板（如果计分板不存在）
scoreboard objectives add deaths deathCount Deaths

# 初始化玩家死亡次数（如果不存在）
execute as @a unless score @s deaths matches 1.. run scoreboard players set @s deaths 0

# 记录玩家的死亡次数
execute as @a[scores={deaths=1..}] store result score @s deaths run data get entity @s DeathCount

# 重置死亡次数，以便下次继续记录
execute as @a[scores={deaths=1..}] run scoreboard players set @s deaths 0

# 显示死亡次数到计分板
execute as @a run scoreboard players list @s