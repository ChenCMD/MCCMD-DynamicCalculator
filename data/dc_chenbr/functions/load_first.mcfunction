#VSCodeExtension: Datapack Helper Plus Define
    #define storage chenbr:dc_data

#通常使用スコアボード
    scoreboard objectives add Calc_ChenBR dummy {"text":"計算処理保存用"}


#ハードコーディング不要計算システム
#使い方: data modify storage chenbr:dc_data Calc.Base set ~
#上記のコマンドでCalc.Baseに計算元情報を入れる
#このfunctionを実行後に実行者のスコアボード: Calc_ChenBRに計算結果が入る
#
#計算元情報
#[
#  {
#    Operator: "= += -= *= /= %=",
#    Target: "A ~ J",
#    Value: [int]
#  },
#  {
#    ~
#  }
#]
#
# Operator   : 演算子指定
# Target : セレクター指定 A~Jを指定する function実行前に$A,$B,…$J に入れる
# Value  : 値 Targetと併用した場合Targetが優先される
#
#
#使用例
#   init : data modify storage chenbr:dc_data Calc.Example set value [{Operator:"=",Target:A},{Operator:"+=",Value:12},{Operator:"%=",Value:2}]
#
#   scoreboard players operation $A Calc_ChenBR = $TEST Example
#   data modify storage chenbr:dc_data Calc.Base set from storage chenbr:dc_data Calc.Example
#   execute as 0-0-0-0-0 run function dc_chenbr:calc/main
#   scoreboard players operation $TEST Example = 0-0-0-0-0 Calc_ChenBR