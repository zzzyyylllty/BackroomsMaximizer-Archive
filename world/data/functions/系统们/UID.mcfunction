#将没有计分板分数的玩家的uid设置为0

scoreboard players add @a uid 0

#随机选中一名uid为0的玩家并给予标签
scoreboard players tag @r[score_uid=0,score_uid_min=0] add uid

#给uid的uid分数加1
execute @a[tag=uid] ~ ~ ~ scoreboard players add uid uid 1

#将标签玩家的uid=uid的uid
scoreboard players operation @a[tag=uid] uid = uid uid

#第一次进入欢迎
execute @a[tag=uid] ~ ~ ~ /tellraw @a [{"text":"[系统]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"欢迎","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=uid]","color":"aqua","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"第一次来到我们的服务器！","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Ta的编号是","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"uid","name":"@s"},"color":"yellow","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}]

#去掉标签
scoreboard players tag @a[tag=uid] remove uid