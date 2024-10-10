#设置物品兑换汇率
scoreboard players set @p ratio 每个物品兑换的数额

#加计分板
execute @p ~ ~ ~ scoreboard players add @s retrieve 0

#统计
execute @p ~ ~ ~ stats entity @s set AffectedItems @s retrieve

#清理物品
execute @p ~ ~ ~ clear @s 物品id

#计算金额
scoreboard players operation @p retrieve *= @p ratio
scoreboard players operation @p 计分板 += @p retrieve

#提示一共兑换金额
execute @p ~ ~ ~ /tellraw @s [{"text":"[兑换系统]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您这次一共兑换了","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"retrieve","name":"@s"},"color":"gold","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"money哦","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"\n|||又是一笔大的收益awa|||","color":"light_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#清除统计信息
stats entity @p clear AffectedItems