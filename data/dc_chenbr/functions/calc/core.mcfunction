#Targetがある場合
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"A"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $A Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"B"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $B Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"C"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $C Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"D"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $D Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"E"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $E Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"F"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $F Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"G"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $G Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"H"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $H Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"I"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $I Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"J"}}} run scoreboard players operation $RegisterData Calc_ChenBR = $J Calc_ChenBR
#TargetがnullならValueを$RegisterDataに入れる
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Target:"null"}}} store result score $RegisterData Calc_ChenBR run data get storage chenbr:dc_data Calc.RegisterData.Value
#実際の計算部
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Operator:"="}}} run scoreboard players operation @s Calc_ChenBR = $RegisterData Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Operator:"+="}}} run scoreboard players operation @s Calc_ChenBR += $RegisterData Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Operator:"-="}}} run scoreboard players operation @s Calc_ChenBR -= $RegisterData Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Operator:"*="}}} run scoreboard players operation @s Calc_ChenBR *= $RegisterData Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Operator:"/="}}} run scoreboard players operation @s Calc_ChenBR /= $RegisterData Calc_ChenBR
    execute if data storage chenbr:dc_data {Calc:{RegisterData:{Operator:"%="}}} run scoreboard players operation @s Calc_ChenBR %= $RegisterData Calc_ChenBR
#ちゃんとリセットしようね
    scoreboard players reset $RegisterData Calc_ChenBR
    data remove storage chenbr:dc_data Calc.RegisterData
    data remove storage chenbr:dc_data Calc.Base[0]