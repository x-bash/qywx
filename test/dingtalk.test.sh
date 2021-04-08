#! /usr/bin/env bash

. dingtalk

dingtalk.bot.new a "https://oapi.dingtalk.com/robot/send?access_token=8a87f39c58cf15142a6d3728eb6eef7baa793632098bcc1d0a62ab1c61724e8a"
a.send_text_msg hi


a.send_text_msg -h
