
# UIを表示するのかい？しないのかい？どっちなんだい！
    # もう出ているなら出ないようにするか聞いてみる
    execute \
    if data storage reizo_sit:_ {Setting:{UI_Visualization:true}} run \
    tellraw @s \
    {\
    "text": "[UIを見えないようにする。]",\
    "color": "green",\
    "clickEvent": \
        {\
        "action": "run_command",\
        "value": "/data modify storage reizo_sit:_ Setting.UI_Visualization set value false"\
        },\
    "hoverEvent": \
        {\
        "action": "show_text",\
        "contents": "クリックして変更"\
        }\
    }
    # まだ出ていないなら出るようにするか聞く。
    execute \
    if data storage reizo_sit:_ {Setting:{UI_Visualization:false}} run \
    tellraw @s \
    {\
    "text": "[UIを見えるようにする。]",\
    "color": "green",\
    "clickEvent": \
        {\
        "action": "run_command",\
        "value": "/data modify storage reizo_sit:_ Setting.UI_Visualization set value true"\
        },\
    "hoverEvent": \
        {\
        "action": "show_text",\
        "contents": "クリックして変更"\
        }\
    }
