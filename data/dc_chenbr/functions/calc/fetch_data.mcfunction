#計算データ読み込み
    execute unless data storage chenbr:dc_data {Calc:{Base:[]}} run data modify storage chenbr:dc_data Calc.RegisterData.Operator set from storage chenbr:dc_data Calc.Base[0].Operator
    execute unless data storage chenbr:dc_data {Calc:{Base:[]}} store success score $isSuccess GlobalVer_CB run data modify storage chenbr:dc_data Calc.RegisterData.Value set from storage chenbr:dc_data Calc.Base[0].Value
    execute if score $isSuccess GlobalVer_CB matches 0 run data modify storage chenbr:dc_data Calc.RegisterData.Value set value 0
    execute unless data storage chenbr:dc_data {Calc:{Base:[]}} store success score $isSuccess GlobalVer_CB run data modify storage chenbr:dc_data Calc.RegisterData.Target set from storage chenbr:dc_data Calc.Base[0].Target
    execute if score $isSuccess GlobalVer_CB matches 0 run data modify storage chenbr:dc_data Calc.RegisterData.Target set value "null"
#実計算部へ
    function dc_chenbr:calc/core
#計算が残ってたらループ
    execute if data storage chenbr:dc_data Calc.Base[0] run function dc_chenbr:calc/fetch_data