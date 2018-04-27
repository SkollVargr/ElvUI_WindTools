local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("ElvUI", "enUS", true);
if not L then return; end
L["WindTools"] = true
L["%s version: %s"] = true
L["%s is a collection of useful tools."] = true
L["Release / Update Link"] = true
L["You can use the following link to get more information (in Chinese)"] = true
L["Author Info"] = true
L["Credit"] = true
L["Visual"] = true
L["Trade"] = true
L["Interface"] = true
L["Chat"] = true
L["Quest"] = true
L["More Tools"] = true
L["Masque Skin"] = true
L["iShadow"] = true
L["No Effect"] = true
L["Already Known"] = true
L["Artifact Frame Tab"] = true
L["Artifact Button"] = true
L["Chat Link Level"] = true
L["Tab Chat Mod"] = true
L["Quest Progress"] = true
L["Quest List Enhanced"] = true
L["Quest Announcment"] = true
L["Fast Loot"] = true
L["Announce System"] = true
L["Friend Color"] = true
L["Speedy Load"] = true
L["Masque Skin enhanced."] = true
L["Movie effect for WoW."] = true
L["Disable some effect."] = true
L["Change item color if learned before."] = true
L["Add tab to your artifact frame."] = true
L["Add a button to your character information frame."] = true
L["Add a tiny icon and basic information to chat link."] = true
L["Use tab to switch channel."] = true
L["Add the level information in front of the quest name."] = true
L["Add quest progress to tooltip."] = true
L["Let you know quest is completed."] = true
L["Loot items quickly."] = true
L["A simply announce system."] = true
L["Add the class color to friend frame."] = true
L["Load world quickly."] = true
L["Battle.net Tag: %s"] = true
L["Main character in Taiwan Server: %s"] = true
L["Enable"] = true
L["Information"] = true
L["Setting"] = true
L["Artifact"] = true
L["No Weapon"] = true
L["Currently equipped weapon is not an Artifact."] = true
L["Speed Setting"] = true
L["Fast Loot Speed"] = true
L["Default is 0.3, DO NOT change it unless Fast Loot is not worked."] = true
L["Auto Delete"] = true
L["Enter DELETE automatically."] = true
L["Shadow Level"] = true
L["Default is 50."] = true
L["Glow Effect"] = true
L["Death Effect"] = true
L["Nether Effect"] = true
L["Whisper Cycle"] = true
L["Officer Channel"] = true
L["Raid Progression"] = true
L["Add progression info to tooltip."] = true
L["EmN"] = true
L["NH"] = true 
L["ToV"] = true
L["ToS"] = true
L["ABT"] = true
L["Mythic"] = true 
L["Heroic"] = true 
L["Normal"] = true
L["LFR"] = true
L["Raid Setting"] = true
L["Disable"] = true
L["EasyShadow"] = true
L["Add shadow to frames."] = true
L["Frame Setting"] = true
L["Bar 1"] = true
L["Bar 2"] = true
L["Bar 3"] = true
L["Bar 4"] = true
L["Bar 5"] = true
L["Bar 6"] = true
L["Game Tooltip"] = true
L["MiniMap"] = true
L["Game Menu"] = true
L["Interface Options"] = true
L["Video Options"] = true
L["W"] = true
L["Y"] = true
L["Tag Enhanced"] = true
L["Add some customized tags."] = true
L["Automatically Loaded."] = true
L["Example:"] = true
L["Quest details level"] = true
L["Tracker Level"] = true
L["Class Color"] = true
L["Title fontsize"] = true
L["Link Enhance"] = true
L["Keystone Enhance"] = true
L["Link Icon"] = true
L["Add a bar to contain minimap buttons."] = true
L["Minimap Button Bar"] = true
L['Skin Style'] = true
L['Reversed'] = true
L['Layout Direction'] = true
L['Change settings for how the minimap buttons are skinned.'] = true
L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = true
L['The size of the minimap buttons.'] = true
L['No Anchor Bar'] = true
L['Horizontal Anchor Bar'] = true
L['Vertical Anchor Bar'] = true
L["Instance"] = true
L["Raid"] = true
L["Party"] = true
L["Solo"] = true
L["BeQuiet"] = true
L["Disable TalkingHeadFrame."] = true
L["Display level info in quest title (Tracker)"] = true
L["Display level info in quest title (Quest details)"] = true
L["Color"] = true
L["Interrupt"] = true
L["Solo Yell"] = true
L["Include Pet"] = true
L["Res And Threat"] = true
L["Res Thanks"] = true
L["Raid Useful Spells"] = true
L["Ignore high level"] = true
L["Tracker width"] = true
L["Chinese W/Y"] = true
L["Enable Miss"] = true
L["Player Smart"] = true
L["Pet Smart"] = true
L["Other Tank Smart"] = true
L["Include Pet"] = true
L["Include Other Tank"] = true

if GetLocale() == "enUS" then return end

local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "zhTW")
if L then
	-- zhTW Translation Fixed
	L["Class Totems"] = "職業圖騰"
	-- Main
	L["WindTools"] = "Wind百寶箱"
	L["%s version: %s"] = "%s 版本：%s"
	L["%s is a collection of useful tools."] = "%s 是一個易用功能的整合包。\n整合包內的插件大部分為網路上搜集而來。\n在中文化之余，還進行了多次自定義修改。\n部分功能和設置項可能和原版功能存在較大出入。\n\n十分感謝所有的魔獸世界插件開發者！"
	L["Release / Update Link"] = "發佈 / 更新鏈接"
	L["You can use the following link to get more information (in Chinese)"] = "你可以用下方的鏈接查看更多相關訊息（簡體中文）"
	L["Author Info"] = "作者訊息"
	L["Credit List"] = "鳴謝名單"
	L["Visual"] = "視覺增強"
	L["Trade"] = "商店交易"
	L["Interface"] = "介面增強"
	L["Chat"] = "聊天相關"
	L["Quest"] = "任務相關"
	L["More Tools"] = "其他功能"
	L["Masque Skin"] = "Masque皮膚"
	L["iShadow"] = "屏幕景深"
	L["No Effect"] = "畫面效果"
	L["Already Known"] = "已學提示"
	L["Artifact Frame Tab"] = "神兵切換"
	L["Artifact Button"] = "神兵按鈕"
	L["Chat Link Level"] = "聊天鏈接"
	L["Tab Chat Mod"] = "頻道切換"
	L["Quest List Enhanced"] = "任務列表"
	L["Quest Progress"] = "任務進度"
	L["Quest Announcment"] = "任務通告"
	L["Fast Loot"] = "光速拾取"
	L["Announce System"] = "技能通告"
	L["Friend Color"] = "好友上色"
	L["Speedy Load"] = "加速載入"
	L["Masque Skin enhanced."] = "一些自己修改或是覺得不錯的Masque皮膚。"
	L["Movie effect for WoW."] = "讓魔獸世界看起來有電影般的效果。"
	L["Disable some effect."] = "關閉部分效果，比如死亡黑白畫面。"
	L["Change item color if learned before."] = "如果學習過了，那麼商品會被上色。"
	L["Add tab to your artifact frame."] = "在神兵介面添加一個小標籤頁。"
	L["Add a button to your character information frame."] = "在人物信息框架上添加一個神兵按鈕"
	L["Add a tiny icon and basic information to chat link."] = "為聊天鏈接添加一個小圖標，并提示部位。"
	L["Use tab to switch channel."] = "可以使用 Tab 來快速切換頻道。"
	L["Add the level information in front of the quest name."] = "讓任務列表有等級提示功能并自動縮短部分任務名。"
	L["Add quest progress to tooltip."] = "添加任務進度到鼠標提示。"
	L["Let you know quest is completed."] = "當任務完成之時會通告。"
	L["Loot items quickly."] = "進一步加快拾取物品的速度。"
	L["A simply announce system."] = "一個很簡單的通告系統"
	L["Add the class color to friend frame."] = "為好友名單中上線的好友添加職業顏色。"
	L["Load world quickly."] = "加速載入的速度。"
	L["Enable"] = "開啟"
	L["Information"] = "簡介"
	L["Author: %s, Edited by %s"] = "原作者：%s， 修改者：%s"
	L["Setting"] = "設定"
	L["Artifact"] = "神兵"
	L["No Weapon"] = "你還沒有裝備武器"
	L["Currently equipped weapon is not an Artifact."] = "當前武器不是神兵武器。"
	L["Speed Setting"] = "速度設定"
	L["Fast Loot Speed"] = "光速拾取速度"
	L["Default is 0.3, DO NOT change it unless Fast Loot is not worked."] = "預設數值為0.3，除非光速拾取功能出錯，你不用修改它。"
	L["Auto Delete"] = "自動填入DELETE"
	L["Enter DELETE automatically."] = "在摧毀物品時自動填入DELETE。"
	L["Shadow Level"] = "陰影等級"
	L["Default is 50."] = "預設值為50。"
	L["Glow Effect"] = "全屏泛光"
	L["Death Effect"] = "死亡畫面"
	L["Nether Effect"] = "隱身術特效"
	L["Whisper Cycle"] = "密語獨立循環"
	L["Officer Channel"] = "幹部頻道"
	L["Raid Progression"] = "團本進度提示"
	L["Add progression info to tooltip."] = "添加團隊副本進度到滑鼠提示。"
	L["EmN"] = "翡翠"
	L["NH"] = "暗夜" 
	L["ToV"] = "勇氣"
	L["ToS"] = "薩墓"
	L["ABT"] = "王座"
	L["Raid Setting"] = "副本設置"
	L["Mythic"] = "傳奇"
	L["Heroic"] = "英雄"
	L["Normal"] = "普通"
	L["LFR"] =  "隨團"
	L["Disable"] = "關閉"
	L["Frame Setting"] = "框架設定"
	L["EasyShadow"] = "簡單陰影"
	L["Add shadow to frames."] = "為框架添加陰影效果。"
	L["Bar 1"] = "快捷列 1"
	L["Bar 2"] = "快捷列 2"
	L["Bar 3"] = "快捷列 3"
	L["Bar 4"] = "快捷列 4"
	L["Bar 5"] = "快捷列 5"
	L["Bar 6"] = "快捷列 6"
	L["Game Tooltip"] = "滑鼠提示"
	L["MiniMap"] = "小地圖"
	L["Game Menu"] = "遊戲菜單"
	L["Interface Options"] = "介面選項"
	L["Video Options"] = "視頻設定"
	L["W"] = "萬"
	L["Y"] = "億"
	L["Tag Enhanced"] = "Tag增強"
	L["Add some customized tags."] = "添加一些自定義Tags。"
	L["Automatically Loaded."] = "已自動載入。"
	L["Example:"] = "範例："
	L["Quest details level"] = "任務詳細顯示等級"
	L["Tracker Level"] = "任務追蹤顯示等級"
	L["Class Color"] = "標題職業顏色"
	L["Title fontsize"] = "標題字體大小"
	L["Link Enhance"] = "鏈接增強"
	L["Keystone Enhance"] = "傳奇鑰石等級"
	L["Link Icon"] = "鏈接圖標"
	L["Add a bar to contain minimap buttons."] = "添加一個條來管理小地圖按鈕。"
	L["Minimap Button Bar"] = "小地圖按鈕條"
	L['Skin Style'] = "美化風格"
	L['Reversed'] = "翻轉"
	L['Layout Direction'] = "佈局方向"
	L['Change settings for how the minimap buttons are skinned.'] = "修改小地圖按鈕的風格"
	L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "普通的話會自右向左或者從上至下， 選擇翻轉的話將倒過來放置。"
	L['The size of the minimap buttons.'] = "小地圖按鈕的大小"
	L['No Anchor Bar'] = "不對齊"
	L['Horizontal Anchor Bar'] = "水平對齊"
	L['Vertical Anchor Bar'] = "垂直對齊"
	L["Instance"] = "副本"
	L["Raid"] = "團隊副本"
	L["Party"] = "隊伍"
	L["Solo"] = "個人"
	L["BeQuiet"] = "關閉視訊"
	L["Disable TalkingHeadFrame."] = "關閉任務視訊功能。"
	L["Display level info in quest title (Tracker)"] = "在任務追蹤標題上顯示等級信息"
	L["Display level info in quest title (Quest details)"] = "在任務詳細訊息的標題上顯示等級信息"
	L["Color"] = "顏色"
	L["Interrupt"] = "斷法"
	L["Solo Yell"] = "單人的時候大喊"
	L["Include Pet"] = "包括寵物斷法"
	L["Res And Threat"] = "戰復及誤導"
	L["Res Thanks"] = "復活感謝"
	L["Raid Useful Spells"] = "副本常用技能（機器人等）"
	L["Ignore high level"] = "忽略最高等級顯示"
	L["Tracker width"] = "任務追蹤寬度"
	L["Chinese W/Y"] = "中文 萬/億 單位"
	L["Enable Miss"] = "開啟 Miss 通告"
	L["Player Smart"] = "玩家智能通告"
	L["Pet Smart"] = "寵物智能通告"
	L["Other Tank Smart"] = "其他坦克智能通告"
	L["Include Pet"] = "包括寵物"
	L["Include Other Tank"] = "包括其他坦克"
end

local L = LibStub("AceLocale-3.0"):NewLocale("ElvUI", "zhCN")
if L then
	L["WindTools"] = "Wind工具箱"
	L["%s version: %s"] = "%s 版本：%s"
	L["%s is a collection of useful tools."] = "%s 是一个易用功能的整合包。\n整合包内的插件大部分为网络上搜集而来。\n在中文化之余，还进行了多次自定义修改。\n部分功能和设置项可能和原版功能存在较大出入。\n\n十分感谢所有的魔兽世界插件开发者！"
	L["Release / Update Link"] = "发布 / 更新链接"
	L["You can use the following link to get more information (in Chinese)"] = "你可以用下方的链接查看更多相关讯息"
	L["Author Info"] = "作者讯息"
	L["Credit List"] = "鸣谢名单"
	L["Visual"] = "视觉增强"
	L["Trade"] = "商店交易"
	L["Interface"] = "界面增强"
	L["Chat"] = "聊天相关"
	L["Quest"] = "任务相关"
	L["More Tools"] = "其他功能"
	L["Masque Skin"] = "Masque皮肤"
	L["iShadow"] = "屏幕景深"
	L["No Effect"] = "画面效果"
	L["Already Known"] = "已学提示"
	L["Artifact Frame Tab"] = "神器切换"
	L["Artifact Button"] = "神器按钮"
	L["Chat Link Level"] = "聊天链接"
	L["Tab Chat Mod"] = "频道切换"
	L["Quest List Enhanced"] = "任务列表"
	L["Quest Progress"] = "任务进度"
	L["Quest Announcment"] = "任务通告"
	L["Fast Loot"] = "光速拾取"
	L["Announce System"] = "技能通告"
	L["Friend Color"] = "好友上色"
	L["Speedy Load"] = "加速载入"
	L["Masque Skin enhanced."] = "一些自己修改或是觉得不错的Masque皮肤。"
	L["Movie effect for WoW."] = "让魔兽世界看起来有电影般的效果。"
	L["Disable some effect."] = "关闭部分效果，比如死亡黑白画面。"
	L["Change item color if learned before."] = "如果学习过了，那么商品会被上色。"
	L["Add tab to your artifact frame."] = "在神器界面添加一个小标签页。"
	L["Add a button to your character information frame."] = "在人物信息框架上添加一个神器按钮"
	L["Add a tiny icon and basic information to chat link."] = "为聊天链接添加一个小图标，并提示部位。"
	L["Use tab to switch channel."] = "可以使用 Tab 来快速切换频道。"
	L["Add the level information in front of the quest name."] = "让任务列表有等级提示功能并自动缩短部分任务名。"
	L["Add quest progress to tooltip."] = "添加任务进度到鼠标提示。"
	L["Let you know quest is completed."] = "当任务完成之时会通告。"
	L["Loot items quickly."] = "进一步加快拾取物品的速度。"
	L["A simply announce system."] = "一个很简单的通告系统"
	L["Add the class color to friend frame."] = "为好友名单中上线的好友添加职业颜色。"
	L["Load world quickly."] = "加速载入的速度。"
	L["Enable"] = "开启"
	L["Information"] = "简介"
	L["Author: %s, Edited by %s"] = "原作者：%s， 修改者：%s"
	L["Setting"] = "设定"
	L["Artifact"] = "神器"
	L["No Weapon"] = "你还没有装备武器"
	L["Currently equipped weapon is not an Artifact."] = "当前武器不是神器。"
	L["Speed Setting"] = "速度设定"
	L["Fast Loot Speed"] = "光速拾取速度"
	L["Default is 0.3, DO NOT change it unless Fast Loot is not worked."] = "预设数值为0.3，除非光速拾取功能出错，你不用修改它。"
	L["Auto Delete"] = "自动填入DELETE"
	L["Enter DELETE automatically."] = "在摧毁物品时自动填入DELETE。"
	L["Shadow Level"] = "阴影等级"
	L["Default is 50."] = "预设值为50。"
	L["Glow Effect"] = "全屏泛光"
	L["Death Effect"] = "死亡画面"
	L["Nether Effect"] = "隐身术特效"
	L["Whisper Cycle"] = "密语独立循环"
	L["Officer Channel"] = "干部频道"
	L["Raid Progression"] = "团本进度提示"
	L["Add progression info to tooltip."] = "添加团队副本进度到鼠标提示。"
	L["EmN"] = "翡翠"
	L["NH"] = "暗夜" 
	L["ToV"] = "勇气"
	L["ToS"] = "萨墓"
	L["ABT"] = "王座"
	L["Raid Setting"] = "副本设置"
	L["Mythic"] = "史诗"
	L["Heroic"] = "英雄"
	L["Normal"] = "普通"
	L["LFR"] =  "随团"
	L["Disable"] = "关闭"
	L["Frame Setting"] = "框架设定"
	L["EasyShadow"] = "简单阴影"
	L["Add shadow to frames."] = "为框架添加阴影效果。"
	L["Bar 1"] = "技能栏 1"
	L["Bar 2"] = "技能栏 2"
	L["Bar 3"] = "技能栏 3"
	L["Bar 4"] = "技能栏 4"
	L["Bar 5"] = "技能栏 5"
	L["Bar 6"] = "技能栏 6"
	L["Game Tooltip"] = "鼠标提示"
	L["MiniMap"] = "小地图"
	L["Game Menu"] = "游戏菜单"
	L["Interface Options"] = "界面选项"
	L["Video Options"] = "视频设定"
	L["W"] = "万"
	L["Y"] = "亿"
	L["Tag Enhanced"] = "Tag增强"
	L["Add some customized tags."] = "添加一些自定义Tags。"
	L["Automatically Loaded."] = "已自动载入。"
	L["Example:"] = "范例："
	L["Quest details level"] = "任务详细显示等级"
	L["Tracker Level"] = "任务追踪显示等级"
	L["Class Color"] = "标题职业颜色"
	L["Title fontsize"] = "标题字体大小"
	L["Link Enhance"] = "链接增强"
	L["Keystone Enhance"] = "传奇钥石等级"
	L["Link Icon"] = "链接图标"
	L["Add a bar to contain minimap buttons."] = "添加一个条来管理小地图按钮。"
	L["Minimap Button Bar"] = "小地图按钮条"
	L['Skin Style'] = "美化风格"
	L['Reversed'] = "翻转"
	L['Layout Direction'] = "佈局方向"
	L['Change settings for how the minimap buttons are skinned.'] = "修改小地图按钮的风格"
	L['Normal is right to left or top to bottom, or select reversed to switch directions.'] = "普通的话会自右向左或者从上至下， 选择翻转的话将倒过来放置。"
	L['The size of the minimap buttons.'] = "小地图按钮的大小"
	L['No Anchor Bar'] = "不对齐"
	L['Horizontal Anchor Bar'] = "水平对齐"
	L['Vertical Anchor Bar'] = "垂直对齐"
	L["Instance"] = "副本"
	L["Raid"] = "团队副本"
	L["Party"] = "队伍"
	L["Solo"] = "个人"
	L["BeQuiet"] = "关闭视频通话"
	L["Disable TalkingHeadFrame."] = "关闭任务的视频通话功能。"
	L["Display level info in quest title (Tracker)"] = "在任务追踪的标题上显示等级信息"
	L["Display level info in quest title (Quest details)"] = "在任务详细信息的标题上显示等级信息"
	L["Color"] = "颜色"
	L["Interrupt"] = "打断"
	L["Solo Yell"] = "单人的时候大喊"
	L["Include Pet"] = "包含宠物打断"
	L["Res And Threat"] = "战复及误导"
	L["Res Thanks"] = "复活感谢"
	L["Raid Useful Spells"] = "副本常用技能（机器人等）"
	L["Ignore high level"] = "忽略最高等级提示"
	L["Tracker width"] = "任务追踪宽度"
	L["Chinese W/Y"] = "中文 万/亿 单位"
	L["Enable Miss"] = "开启 Miss 通告"
	L["Player Smart"] = "玩家智能通告"
	L["Pet Smart"] = "宠物智能通告"
	L["Other Tank Smart"] = "其他坦克智能通告"
	L["Include Pet"] = "包括宠物"
	L["Include Other Tank"] = "包括其他坦克"
end