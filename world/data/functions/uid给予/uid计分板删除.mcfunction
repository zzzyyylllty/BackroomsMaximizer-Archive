scoreboard objectives add ��ʱ���� dummy ["��ʱ����"]
scoreboard objectives add ��ʱˢ�� dummy ["��ʱˢ��"]
gamemode 2 @a[tag=!op,m=!2]
tp @a[tag=!ע��] 100045.5 50 99990.5 -180 0
scoreboard players tag @a[tag=!ע��] add ע��
effect @e[type=villager] 11 10 254
scoreboard teams join ���� @a[team=]
scoreboard players add @e[type=item] ��ʱ���� 1
kill @e[type=item,score_��ʱ����_min=1000]
scoreboard players add @e ��ʱˢ�� 1