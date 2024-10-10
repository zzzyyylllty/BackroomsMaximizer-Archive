scoreboard players add @a pay 0
scoreboard players enable @a[score_pay=0] pay
scoreboard players enable @a pay.money
scoreboard players reset * pay.rs
execute @a ~ ~ ~ scoreboard players add pay pay.rs 1
scoreboard players operation @a[score_pay_min=1] pay.rs = pay pay.rs
execute @a[score_pay_min=1] ~ ~ ~ tellraw @s[score_pay.rs=1] [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"【转钱失败】当前只有您在线呢","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_pay_min=1] ~ ~ ~ scoreboard players reset @s[score_pay.rs=1] pay
scoreboard players add @a[score_pay_min=1] pay.id 0
execute @a[score_pay_min=1] ~ ~ ~ scoreboard players add pay pay.id 1
scoreboard players tag @a[score_pay.id=0,score_pay_min=1] add pays
scoreboard players operation @a[tag=pays] pay.id = pay pay.id
scoreboard players tag @a[tag=pays] remove pays
tellraw @a[score_pay.id_min=2] [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"【无法使用】当前有人使用转钱哦awa","color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players reset @a[score_pay.id_min=2] pay
scoreboard players reset @a[score_pay.id_min=2] pay.id
execute @a ~ ~ ~ scoreboard players operation @s pay.uid = @s uid
scoreboard players operation @a pay.uid -= @a[score_pay_min=1] pay
scoreboard players reset * pay.cz
execute @a ~ ~ ~ scoreboard players add pay pay.cz 1
scoreboard players reset @a[score_pay_min=1] pay.cz
execute @a[score_pay.uid=-1] ~ ~ ~ scoreboard players add @a[score_pay_min=1] pay.cz 1
execute @a[score_pay.uid_min=1] ~ ~ ~ scoreboard players add @a[score_pay_min=1] pay.cz 1
execute @a[score_pay_min=1] ~ ~ ~ scoreboard players operation @s pay.cz -= pay pay.cz
execute @a[score_pay.cz_min=0] ~ ~ ~ tellraw @s [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"【查找UID失败】此人可能不在线或没有人注册此UID","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_pay.cz_min=0] ~ ~ ~ scoreboard players reset @s pay
execute @a[score_pay.cz_min=0] ~ ~ ~ scoreboard players reset * pay.id
execute @a[score_pay_min=1,score_pay.uid_min=0,score_pay.uid=0] ~ ~ ~ tellraw @s [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您不能给自己转钱呢","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_pay_min=1,score_pay.uid_min=0,score_pay.uid=0] ~ ~ ~ scoreboard players reset * pay.id
execute @a[score_pay_min=1,score_pay.uid_min=0,score_pay.uid=0] ~ ~ ~ scoreboard players reset @s pay
execute @a[score_pay_min=1] ~ ~ ~ scoreboard players tag @s[tag=!pay查找已经提示] add pay查找提示
scoreboard players tag @a[score_pay_min=1] add pay1
scoreboard players tag @a[score_pay.uid_min=0,score_pay.uid=0,score_pay=0,score_uid_min=1] add pay2
scoreboard players reset @a[score_pay=0] pay.money
execute @a[tag=pay1] ~ ~ ~ execute @a[score_pay_min=1,tag=pay查找提示,score_pay.cz=-1] ~ ~ ~ tellraw @a [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[score_pay_min=1]","color":"yellow","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"正在使用转钱","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[tag=pay1] ~ ~ ~ execute @a[score_pay_min=1,tag=pay查找提示,score_pay.cz=-1] ~ ~ ~ tellraw @s [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您正在向","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[score_pay.uid=0,score_pay.uid_min=0]","color":"yellow","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"使用转钱","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"(请核实一下哟^_^)","color":"light_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[tag=pay1] ~ ~ ~ execute @a[score_pay_min=1,tag=pay查找提示,score_pay.cz=-1] ~ ~ ~ tellraw @s [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"点我输入金额awa","color":"gold","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"suggest_command","value":"/trigger pay.money set "}},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[tag=pay1] ~ ~ ~ execute @a[score_pay_min=1,tag=pay查找提示,score_pay.cz=-1] ~ ~ ~ tellraw @a[tag=pay2,score_pay=0] [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[score_pay_min=1]","color":"yellow","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"正在向您使用转钱","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"(不会是转错了吧^_^)","color":"light_purple","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players tag @a[tag=pay查找提示] add pay查找已经提示
scoreboard players tag @a[tag=pay查找提示] remove pay查找提示
execute @a[score_pay.cz_min=0] ~ ~ ~ scoreboard players tag @a[tag=pay查找已经提示] remove pay查找已经提示
execute @a[score_pay.cz_min=0] ~ ~ ~ scoreboard players reset @a pay.cz
scoreboard players reset * pay.tc
execute @a[score_pay_min=1] ~ ~ ~ scoreboard players set pay pay.tc 1
scoreboard players operation @a pay.tc = pay pay.tc
execute @a[tag=pay2] ~ ~ ~ execute @r[score_pay.tc=0] ~ ~ ~ scoreboard players tag @s add pay重置
execute @a[tag=pay2] ~ ~ ~ scoreboard players set pay2 pay.tc 1
scoreboard players operation @a pay.tc = pay2 pay.tc
execute @a[tag=pay1] ~ ~ ~ execute @r[score_pay.tc=0] ~ ~ ~ scoreboard players tag @s add pay重置
execute @a[score_pay.money_min=1,tag=pay查找已经提示] ~ ~ ~ scoreboard players operation @s money -= @s pay.money
execute @a[score_money=-1,tag=pay查找已经提示] ~ ~ ~ scoreboard players tag @s add money不足
scoreboard players operation @a[tag=money不足] money += @a[tag=money不足] pay.money
scoreboard players tag @a[tag=money不足] add pay重置
execute @a[tag=money不足] ~ ~ ~ tellraw @s [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"【转钱失败】很抱歉,您的money不足哦qwq","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_pay.money_min=1,tag=!money不足] ~ ~ ~ scoreboard players operation @a[tag=pay2] money += @s pay.money
execute @a[score_pay.money_min=1,tag=!money不足] ~ ~ ~ tellraw @s [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[score_pay.uid=0,score_pay.uid_min=0]","color":"yellow","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"收到了来自您的","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"pay.money","name":"@s"},"color":"gold","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"money","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_pay.money_min=1,tag=!money不足] ~ ~ ~ tellraw @a[tag=pay2] [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您收到了来自","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[score_pay_min=1]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"的","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"pay.money","name":"@s"},"color":"gold","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"money","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_pay.money_min=1,tag=pay1] ~ ~ ~ scoreboard players tag @a[tag=pay1] add pay重置
execute @a[tag=pay重置] ~ ~ ~ scoreboard players reset * pay
execute @a[tag=pay重置] ~ ~ ~ scoreboard players reset * pay.money
execute @a[tag=pay重置] ~ ~ ~ scoreboard players reset * pay.id
execute @a[tag=pay重置] ~ ~ ~ scoreboard players reset * pay.js
execute @a[tag=pay重置] ~ ~ ~ scoreboard players reset * pay.uid
execute @a[tag=pay重置] ~ ~ ~ scoreboard players tag @a remove pay1
execute @a[tag=pay重置] ~ ~ ~ scoreboard players tag @a remove pay2
execute @a[tag=pay重置] ~ ~ ~ scoreboard players tag @a remove pay查找已经提示
execute @a[tag=pay重置] ~ ~ ~ scoreboard players reset * pay.rs
execute @a[tag=pay重置] ~ ~ ~ scoreboard players tag @a remove money不足
execute @a[tag=pay重置] ~ ~ ~ tellraw @a [{"text":"[pay] ","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"> > > | ","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"转钱使用完毕,恢复正常","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" | < < <","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[tag=pay重置] ~ ~ ~ scoreboard players tag @s remove pay重置
execute @a[score_pay_min=1] ~ ~ ~ scoreboard players add @s pay.js 1
execute @a[score_pay.js_min=600] ~ ~ ~ scoreboard players tag @s add pay重置






































