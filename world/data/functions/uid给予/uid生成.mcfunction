scoreboard players add @a uid 0
scoreboard players tag @r[score_uid=0,score_uid_min=0] add uid
execute @a[tag=uid] ~ ~ ~ scoreboard players add uid uid 1
execute @a[tag=uid] ~ ~ ~ scoreboard players operation @s uid = uid uid
execute @a[tag=uid] ~ ~ ~ /tellraw @a [{"text":"[系统]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"欢迎","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=uid]","color":"yellow","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"第一次来到我们的服务器！","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"Ta的编号是","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"uid","name":"@s"},"color":"yellow","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false}]
scoreboard players tag @a[tag=uid] remove uid



