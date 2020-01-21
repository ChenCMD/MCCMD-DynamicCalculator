# DynamicCalculator
**ハードコーディング不要計算システム**
### 使い方
1. `data modify storage chenbr:dc_data Calc.Base set ~` このコマンドでCalc.Baseに計算元情報を入れる
2. `function dc_chenbr:calc/main`を**必ず**エンティティから実行する
3. (scoreboard)objective: **Calc_ChenBR** name: **実行者**に計算結果が入る
#### 計算元情報
    [
        {
            Operator: "= += -= *= /= %=",
            Target: "A ~ J",
            Value: [int]
        },
        {
            ~
        }
    ]
Operator   : 演算子指定  
Target     : セレクター指定 A~Jを指定する function実行前に$A,$B,…$J に入れる  
Value      : 値 Targetと併用した場合Targetが優先される
- - -
### 使用例
    # ((A+12) % 2)
        data modify storage chenbr:dc_data Calc.Example set value [
            {
                Operator:"=",
                Target:A
            },
            {
                Operator:"+=",
                Value:12
            },
            {
                Operator:"%=",
                Value:2
            }
        ]
    # $Aに$TESTを設定
        scoreboard players operation $A Calc_ChenBR = $TEST Example
    # Calc.Baseに計算元データを移行
        data modify storage chenbr:dc_data Calc.Base set from storage chenbr:dc_data Calc.Example
    # エンティティから実行
        execute as 0-0-0-0-0 run function dc_chenbr:calc/main
    # エンティティのCalc_ChenBRに計算結果が入ってるので自由に取り出す
        scoreboard players operation $TEST Example = 0-0-0-0-0 Calc_ChenBR
