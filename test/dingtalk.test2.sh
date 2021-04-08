#! /usr/bin/env bash

. dingtalk

dingtalk.bot.new a "https://oapi.dingtalk.com/robot/send?access_token=3aa24e28b280b5f0576d7c77a6ff86c36c5f7be32a8491fd1a2b751459031cdd"

# a.send_text_msg "test case for send_text_msg"

text="
## test case for send_markdown_msg

1. 等你来了之后，我才有换行的欲望
3. 这个是 dingtalk 库的测试，大家可以将这个群屏蔽一下 

#### 杭州天气 @150XXXXXXXX \n> 9度，西北风1级，空气良89，相对温度73%\n> ![screenshot](https://img.alicdn.com/tfs/TB1NwmBEL9TBuNjy1zbXXXpepXa-2400-1218.png)\n> ###### 10点20分发布 [天气](https://www.dingtalk.com) \n
"

a.send_markdown_msg --title "test send markdown msg" --text "${text}"  --at "+86-15018419761" # --atAll false 

exit 0

a.send_link_msg --title "test link msg" \
    --text "test case for send_link_msg" \
    --picurl "https://images.hdqwalls.com/download/captain-america-cosplay-8k-jc-7680x4320.jpg" \
    --msgurl "https://hdqwalls.com/wallpaper/7680x4320/captain-america-cosplay-8k"

a.send_action_card_msg \
    --title "test send_action_card_msg" \
    --text "test case for send action card msg
        ![screenshot](https://gw.alicdn.com/tfs/TB1ut3xxbsrBKNjSZFpXXcXhFXa-846-786.png) 

        ### 乔布斯 20 年前想打造的苹果咖啡厅 
        Apple Store 的设计正从原来满满的科技感走向生活化，而其生活化的走向其实可以追溯到 20 年前苹果一个建立咖啡馆的计划
        " \
    --linktitle "阅读全文" \
    --linkurl "https://www.dingtalk.com/"

a.send_multiple_action_card_msg \
    --title "test send_multiple_action_card_msg" \
    --text "![screenshot](https://gw.alicdn.com/tfs/TB1ut3xxbsrBKNjSZFpXXcXhFXa-846-786.png) 
        ### 乔布斯 20 年前想打造的苹果咖啡厅 
        Apple Store 的设计正从原来满满的科技感走向生活化，而其生活化的走向其实可以追溯到 20 年前苹果一个建立咖啡馆的计划" \
    --orientation 0 \
    aaa aaaUrl bbb bbbUrl

a.feed_card_msg  \
    --title "test feed_card_msg" \
    --msgurl   "https://www.dingtalk.com/s?__biz=MzA4NjMwMTA2Ng==&mid=2650316842&idx=1&sn=60da3ea2b29f1dcc43a7c8e4a7c97a16&scene=2&srcid=09189AnRJEdIiWVaKltFzNTw&from=timeline&isappinstalled=0&key=&ascene=2&uin=&devicetype=android-23&version=26031933&nettype=WIFI" \
    --picurl  "https://gw.alicdn.com/tfs/TB1ayl9mpYqK1RjSZLeXXbXppXa-170-62.png"

a.send_text_msg -h

