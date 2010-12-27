﻿-- THIS CONTENTS OF THIS FILE IS AUTO-GENERATED BY THE WOWACE PACKAGER
-- Please use the Localization App on WoWAce to update this
-- at http://www.wowace.com/projects/omen-threat-meter/localization/

-- zhCN localization by Ananhaid.
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Omen", "zhCN")
if not L then return end

L["'My Bar' BG Color"] = "“My Bar”背景颜色"
L["*Not in Party*"] = "*不在队伍中*"
L["<Unknown>"] = "<未知的>"
L["> Pull Aggro <"] = ">获得仇恨<"
L["A collection of help pages"] = "收集的帮助页"
L["AUTO_SHOW/HIDE_NOTE"] = "注意：如果您手动切换 Omen 显示或隐藏，将忽略自动显示/隐藏设置、加入或退出队伍或团队和更改任何自动显示/隐藏设置，切换区域之前它仍将显示或隐藏。"
L["Alpha"] = "透明度"
L["Always Show Self"] = "总是显示自己"
L["Always show your threat bar on Omen (ignores class filter settings), showing your bar on the last row if necessary"] = "总是显示你的 Omen 威胁计量条（忽略职业过滤设置），如需要显示你的计量条位于最后一排。"
L["Animate Bars"] = "动态计量条"
L["Attach to minimap"] = "依附到小地图"
L["Autocollapse"] = "自动收起"
L["Autocollapse Options"] = "自动收起选项"
L["Background Color"] = "背景颜色"
L["Background Options"] = "背景选项"
L["Background Texture"] = "背景材质"
L["Background Tile Size"] = "标题背景尺寸"
L["Bar BG Color"] = "计量条背景颜色"
L["Bar Height"] = "计量条高度"
L["Bar Inset"] = "嵌入计量条"
L["Bar Label Options"] = "计量条标签选项"
L["Bar Settings"] = "计量条设置"
L["Bar Spacing"] = "计量条间距"
L["Bar Texture"] = "计量条材质"
L["Border Color"] = "边框颜色"
L["Border Texture"] = "边框材质"
L["Border Thickness"] = "边框厚度"
L["Causes Omen to play a chosen sound effect"] = "成因时 Omen 播放选择的音效"
L["Causes the entire game world to shake momentarily. This option only works if nameplates are turned off."] = "成因时整个游戏屏幕震动。此选项只有在不启用姓名栏时才可用。"
L["Causes the entire screen to flash red momentarily"] = "成因时整个屏幕闪动红色"
L["Center"] = "居中"
L["Center Omen"] = "Omen 居中"
L["Clamp To Screen"] = "屏幕锁定"
L["Click Through"] = "点击穿越"
L["Click|r to toggle the Omen window"] = "点击|r开/关 Omen 窗口"
L["Collapse to show a minimum number of bars"] = "收起以显示最小数量的计量条"
L["Configure"] = "配置"
L["Configure bar settings."] = "配置计量条设置。"
L["Configure title bar settings."] = "配置标题栏设置"
L["Control the font size of the labels"] = "标签字体大小"
L["Control the font size of the title text"] = "标题文本字体大小"
L["Controls the frame strata of the main Omen window. Default: MEDIUM"] = "控制 Omen 主要窗口的框架阶层。默认：MEDIUM（中）"
L["Controls the scaling of the main Omen window."] = "控制 Omen 主窗口的尺寸。"
L["Controls the transparency of the main Omen window."] = "控制 Omen 主窗口的透明度。"
L["Controls whether the main Omen window can be dragged offscreen"] = "控制 Omen 主要窗口是否可以被拖动到屏幕外。"
L["DEATHKNIGHT"] = "死亡骑士"
L["DISABLE_WHILE_TANKING_DESC"] = "如果在防御姿态、熊形态、正义之怒与鲜血灵气时、不显示警报。"
L["DRUID"] = "德鲁伊"
L["Disable while tanking"] = "当为 Tank 时关闭警报"
L["Display large numbers in Ks"] = "大数字时用千位（K）显示"
L["Enable Screen Flash"] = "开启屏幕闪动"
L["Enable Screen Shake"] = "开启屏幕震动"
L["Enable Sound"] = "开启音效"
L["Enable Warning Message"] = "开启警报消息"
L["FAQ Part 1"] = "FAQ 第1部分"
L["FAQ Part 2"] = "FAQ 第2部分"
L["Font"] = "字体"
L["Font Color"] = "字体颜色"
L["Font Outline"] = "字体轮廓"
L["Font Size"] = "字体大小"
L["Frame Strata"] = "框架阶层"
L["Frame's background color"] = "框体背景颜色"
L["Frame's border color"] = "框体边框颜色"
L["Frequently Asked Questions"] = "常见问题"
L["FuBar Options"] = "FuBar 选项"
L["GENERAL_FAQ"] = [=[|cffffd200Omen3 与 Omen2 的区别|r

Omen3 依据暴雪所提供的仇恨接口，与 Omen2 不一样，Omen3 不会去预测或者计算仇恨，仇恨值是通过接口直接向服务器端获取。

Omen2 使用 Threat-2.0 库，这个库是根据检测的战斗记录、法术、增益与减益、姿态和装备来计算不同的仇恨值。仇恨的计算是根据现有的资料与检测所得到的数据计算的。很多技能是假设值，无法验证（如击退、我们假设击退仇恨降低50%）。

Threat 2.0库也包含了其他人都用这个库的时候同步整个团队的威胁值，这些威胁数据用来提供给整个团队以供参考。

从3.0.2补丁开始 Omen 将不再做这些动作，Threat 库不再需要。Omen3 所使用暴雪内建威胁监视器，并从中获取威胁资料，这也造成 Omen 不再需要同步资料、检测战斗记录与猜测数据。效果因减少资料的传送而提升，包括 CPU 与内存的使用量都会减少，针对特殊首领的威胁变化事件也不再需要。

更进一步说受益包括一些 NPC 对怪物的威胁，比如太阳之井高地人类形态的卡雷苟斯的威胁。但是也有一些不利的地方，威胁数据更新也变得慢了，团队中如果没有人的目标是那个 NPC 的话，他的威胁也无法得到，而你没有直接参与的战斗你也无法获得威胁（如你没有造成任何伤害，或者制造任何威胁你将无法得到威胁值，就算你让你的宠物上去攻击而你没有攻击也一样不能得到威胁值）。

|cffffd200我如何去除中间2条灰色垂直线？|r

锁定 Omen。锁定 Omen 将防止它被移动或调整大小，以及防止栏被调整。如果你没有注意到它，调整两条灰色垂直线。

|cffffd200如何将 Omen3 的外观改成与 Omen2 类似？|r

改变背景材质与边框材质为 Blizzard Tooltip，将背景颜色改成黑色（通过拖动亮度条调节底部颜色），边框颜色改为蓝色。

|cffffd200为什么就算我再战斗中也看不到任何威胁值？|r

除非你对怪有作出任何伤害或者造成任何威胁，否则暴雪威胁接口不会给出任何威胁值，我们猜测这可能是暴雪为了减少网络资料的传送。

|cffffd200有没有办法解决暴雪的这个的限制？攻击之前无法看到我的宠物的威胁。|r

我们没有办法在短期内解决这个限制（正如 Omen2 没有一样）。

Omen3 的目标是提供准确的威胁数据，我们不再打算推测你的数据并降低你的 FPS。你需信任你的宠物/Tank，或者攻击之前等待2秒并用低伤害法术（如冰枪）攻击，这样可以让你可以得到初步的威胁读数。
]=]
L["GENERAL_FAQ2"] = [=[|cffffd200我们能让 AoE 模块回来吗？|r

同样，这是不是真的有可能不猜测威胁值。暴雪的威胁接口仅限我们查询某人的威胁数据于团队目标。这意味着假如20个怪中只有6个被团队选定，那么就没有办法获得其他14个怪的威胁数据。

这也是极其复杂的猜测治疗和增益效果（得到威胁依靠你在与怪战斗）因为怪处于控制效果（变形术、放逐、闷棍）并没有他们的仇恨列表并且插件不能准确的告知正在与多少个怪战斗。Omen2 猜测的几乎总是错误的。

|cffffd200鼠标悬停单位显示了威胁百分比与 Omen3 的仇恨百分比报告并不一致，为什么？|r

暴雪的威胁比例调整为0%至100%，这样你总是在100%是获得仇恨。Omen 报告的没有调整过，获得仇恨百分比为110%，或混战为130%。

普遍认为，怪的主要目标被称为 Tank 并被定义为获得100%的威胁。

|cffffd200威胁资料更新太慢……|r

Omen3 威胁值更新速度与暴雪提供威胁数据给我们的速度是一样的。

事实上，暴雪每秒更新它们一次，这个速度大大超过了 Omen2 的同步频率。在 Omen2，你只是每3秒（Tank 每1.5秒）交换一次威胁数据。

|cffffd200我要去哪里反馈 Bug 或者提出建议？|r

http://forums.wowace.com/showthread.php?t=14249

|cffffd200谁制作了 Omen3？|r

Xinhuan (Blackrock/Barthilas US Alliance) 美服-黑石山-联盟：Xinhuan。

|cffffd200是否接受 Paypal（贝宝）捐助？|r

是的，发送到『xinhuan AT gmail DOT com』。
]=]
L["General Settings"] = "综合设置"
L["Grow bars upwards"] = "计量条向上生长"
L["HUNTER"] = "猎人"
L["Heading BG Color"] = "主标题的背景颜色"
L["Heading background color"] = "主标题的背景颜色"
L["Height of each bar"] = "每个计量条的高度"
L["Height of the title bar. The minimum height allowed is twice the background border thickness."] = "标题栏高度。最小厚度为背景边框厚度的一倍。"
L["Help File"] = "帮助文件"
L["Hide Omen"] = "隐藏 Omen"
L["Hide Omen entirely if it collapses to show 0 bars"] = "当没有计量条时收起隐藏 Omen"
L["Hide Omen on 0 bars"] = "当没有计量条时隐藏 Omen"
L["Hide minimap/FuBar icon"] = "隐藏小地图/FuBar 小图标"
L["However, hide Omen if any of the following are true (higher priority than the above)."] = "但选定其他项时 Omen 将被隐藏（比以上项更具优先级）。"
L["IGNORE_PLAYER_PETS_DESC"] = [=[
让 Omen 忽略敌对玩家宠物以确定显示哪些单位的威胁。

玩家宠物|cffffff78攻击|r或者|cffffff78防御|r状态保持威胁与正常的怪物相同，正被攻击目标具有最高的威胁。如果宠物指定攻击一个具体目标，宠物仍然保持在威胁列表，但保持在指定的目标定义100%威胁之上。可以玩家宠物嘲讽以攻击你。

然而，玩家宠物在|cffffff78被动|r模式并没有威胁列表，嘲讽依然不起作用。它们只攻击指定的目标和指令时没有仇恨列表。

当玩家宠物处于|cffffff78跟随|r状态时，宠物的威胁列表被消除并立刻停止攻击，虽然它可能会立即重新指定目标位于攻击/防御模式。
]=]
L["Ignore Player Pets"] = "忽略玩家宠物"
L["Invert Bar/Text Colors"] = "互换计量条/文本颜色"
L["Left"] = "左边"
L["Lock Omen"] = "锁定 Omen"
L["Locks Omen in place and prevents it from being dragged or resized."] = "锁定 Omen，使其无法移动或拉伸。"
L["MAGE"] = "法师"
L["Makes the Omen window non-interactive"] = "使 Omen 窗口非交互式"
L["Max bars to show"] = "计量条的显示数量"
L["Max number of bars to show"] = "计量条最大显示数量"
L["Name"] = "名字"
L["None"] = "无"
L["OMEN_DESC"] = "Omen 是一个占用少量系统资源监控威胁的 UI，可以显示你和同伴参与战斗中怪物的威胁列表。你可以改变 Omen 的外观，并且根据不同的角色储存不同的设置。"
L["OMEN_SLASH_DESC"] = "这些按钮与斜杠命令有相同的效果（/omen）"
L["OMEN_WARNINGS_DESC"] = "这里可以调整 Omen 何时用何种方式给你提出仇恨警报。"
L["Omen Quick Menu"] = "Omen 快捷菜单"
L["Open Config"] = "打开配置"
L["Open Omen's configuration panel"] = "打开 Omen 配置面板"
L["Open the configuration dialog"] = "打开 Omen 配置窗口"
L["Outline"] = "轮廓"
L["PALADIN"] = "圣骑士"
L["PET"] = "宠物"
L["PRIEST"] = "牧师"
L["Passed %s%% of %s's threat!"] = "已超过>%2$s<的%1$2.0f%%威胁！"
L["Pet Bar Color"] = "宠物计量条颜色"
L["Position"] = "位置"
L["Print a message to screen when you accumulate too much threat"] = "当你仇恨过高时在屏幕上显示警报消息"
L["Profiles"] = "档案"
L["Pull Aggro Bar Color"] = "获得仇恨计量条颜色"
L["ROGUE"] = "潜行者"
L["Right"] = "右边"
L["Right-click|r to open the options menu"] = "右键|r打开选项菜单"
L["SHAMAN"] = "萨满祭司"
L["SHOW_CLASSES_DESC"] = "Omen 将显示以下职业的威胁。除非你点选“不在队伍中”的选项，否则 Omen 将只显示你队伍中的玩家。"
L["Scale"] = "缩放"
L["Sets how far inside the frame the threat bars will display from the 4 borders of the frame"] = "威胁计量条显示的内框与外框之间距离"
L["Short Numbers"] = "简化数字"
L["Show Classes..."] = "显示职业"
L["Show Headings"] = "显示标题"
L["Show Omen"] = "显示 Omen"
L["Show Omen when any of the following are true"] = "当符合以下条件时 Omen 会被显示"
L["Show Omen when you are alone"] = "当你没有队伍时显示 Omen"
L["Show Omen when you are in a 5-man party"] = "当你在5人队伍中显示 Omen"
L["Show Omen when you are in a raid"] = "当你在团队中显示 Omen"
L["Show Omen when you have a pet out"] = "当你的宠物存在时显示 Omen"
L["Show Omen when..."] = "当何时显示 Omen"
L["Show Pull Aggro Bar"] = "显示获得仇恨计量条"
L["Show TPS"] = "显示 TPS"
L["Show Threat %"] = "显示威胁值%"
L["Show Threat Values"] = "显示威胁值"
L["Show Title Bar"] = "显示标题栏"
L["Show When..."] = "当何时显示"
L["Show a bar for the amount of threat you will need to reach in order to pull aggro."] = "显示一个数值威胁计量条，以帮助获得仇恨。"
L["Show bars for these classes"] = "显示的职业条"
L["Show column headings"] = "显示主标题栏"
L["Show icon"] = "显示小图标"
L["Show minimap button"] = "显示小地图图标"
L["Show text"] = "显示文字"
L["Show the Omen Title Bar"] = "显示 Omen 标题栏"
L["Show the Omen minimap button"] = "显示 Omen 小地图图标"
L["Show threat per second values"] = "显示每秒威胁值"
L["Slash Command"] = "斜杠命令"
L["Smoothly animate bar changes"] = "平滑动态计量条"
L["Sound to play"] = "播放音效"
L["Spacing between each bar"] = "计量条之间的距离"
L["Switch the colors so that the bar background colors and the text colors are swapped."] = "将计量条背景颜色与文本颜色进行互换。"
L["TPS"] = "TPS"
L["TPS Window"] = "TPS 窗口"
L["TPS_WINDOW_DESC"] = "每秒威胁值的计算是根据最后X秒窗口内的变化而决定的。"
L["Tank Bar Color"] = "Tank 计量条颜色"
L["Tells Omen to additionally check your 'focus' and 'focustarget' before your 'target' and 'targettarget' in that order for threat display."] = "让 Omen 额外检查您的“焦点”和“焦点目标”位于“目标”和“目标的目标”之前的顺序显示威胁。"
L["Tells Omen to enter Test Mode so that you can configure Omen's display much more easily."] = "让 Omen 进入测试模式，你可以更容易的配置 Omen 显示。"
L["Temp Threat Bar Color"] = "Temp Threat Bar Color" -- Needs review
L["Test Mode"] = "测试模式"
L["Test warnings"] = "测试警报"
L["Texture to use for the frame's background"] = "框体背景材质"
L["Texture to use for the frame's border"] = "框体边框材质"
L["The background color for all threat bars"] = "所有威胁计量条背景颜色"
L["The background color for pets"] = "宠物背景颜色"
L["The background color for players under the effects of Fade, Mirror Image, glyphed Hand of Salvation, Tricks of the Trade and Misdirection"] = "The background color for players under the effects of Fade, Mirror Image, glyphed Hand of Salvation, Tricks of the Trade and Misdirection" -- Needs review
L["The background color for your Pull Aggro bar"] = "获得仇恨计量条背景颜色"
L["The background color for your tank's threat bar"] = "Tank 威胁计量条背景颜色"
L["The background color for your threat bar"] = "威胁计量条的背景颜色"
L["The color of the labels"] = "标签颜色"
L["The color of the title text"] = "标题字体颜色"
L["The font that the labels will use"] = "标签字体"
L["The font that the title text will use"] = "标题文本字体"
L["The outline that the labels will use"] = "标签轮廓"
L["The outline that the title text will use"] = "标题文本字体轮廓"
L["The size used to tile the background texture"] = "标题背景材质尺寸"
L["The texture that the bar will use"] = "计量条材质"
L["The thickness of the border"] = "边框厚度"
L["Thick Outline"] = "加倍轮廓"
L["This section controls when Omen is automatically shown or hidden."] = "这些控制 Omen 何时自动显示或隐藏。"
L["Threat"] = "威胁"
L["Threat [%]"] = "威胁[%]"
L["Tile Background"] = "标题背景"
L["Tile the background texture"] = "标题背景材质"
L["Title Bar Background Options"] = "标题栏背景选项"
L["Title Bar Height"] = "标题栏高度"
L["Title Bar Settings"] = "标题栏设置"
L["Title Text Options"] = "标题文本选项"
L["Toggle Focus"] = "开/关焦点"
L["Toggle Omen"] = "开/关 Omen"
L["Turning this on will cause Omen to hide whenever you are in a battleground or arena."] = "当你位于战场或竞技场时，启用此项会使 Omen 隐藏。"
L["Turning this on will cause Omen to hide whenever you are in a city or inn."] = "当你位于城市或者旅店时，启用此项会使 Omen 隐藏。"
L["Turning this on will cause Omen to hide whenever you are not in combat."] = "如选择此项，离开战斗后 Omen 会被隐藏。"
L["Use !ClassColors"] = "使用 !ClassColors"
L["Use !ClassColors addon for class colors for the background color of threat bars"] = "使用 !ClassColors 职业颜色为威胁条背景颜色。"
L["Use 'My Bar' color"] = "使用“My Bar”颜色"
L["Use Auto Show/Hide"] = "使用自动显示/隐藏"
L["Use Class Colors"] = "使用职业颜色"
L["Use Focus Target"] = "使用焦点目标"
L["Use Same Background"] = "使用相同背景"
L["Use Tank Bar color"] = "使用 Tank 计量条颜色"
L["Use a different colored background for the tank's threat bar in Omen"] = "为 Omen Tank 威胁计量条使用不同背景颜色。"
L["Use a different colored background for your threat bar in Omen"] = "在 Omen 中为威胁计量条使用不同的背景颜色"
L["Use standard class colors for the background color of threat bars"] = "使用标准职业颜色威胁计量条背景颜色"
L["Use the same background settings for the title bar as the main window's background"] = "使用相同背景设置为主窗口标题栏背景"
L["WARLOCK"] = "术士"
L["WARRIOR"] = "战士"
L["WARRIOR_FAQ"] = [=[以下数据来自|cffffd200http://www.tankspot.com/forums/f200/39775-wow-3-0-threat-values.html|r2008年10月2号（Satrina 的功劳）。等级80采集的数据。

|cffffd200状态|r
战斗姿态 ________ x 80
狂暴姿态 _____ x 80
战术掌握 _____ x 121/142/163
防御姿态 _____ x 207.35

请注意，在我们原来估计的威胁（使用魔兽世界2.0），我们把1伤害等同1威胁，并因姿态和挑衅乘以1.495。我们看到暴雪罪的做法未乘以小数点后面的数字，所以在2.x中，将已经x149（或者x149.5）；这是x207（或者207.3）在3.0版本。我想这是允许的传输整数值不是小数值在互联网上的效率。看来，威胁值乘以207.35在服务器上，然后四舍五入。

如果您仍希望使用1伤害=1威胁的方法，姿态为是0.8和2.0735，等等。

|cffffd200威胁值（姿态适用，除非另有说明）：|r
战斗怒吼 _________ 78 (split)
顺劈斩 _______________ damage + 225 (split)
命令怒吼 _____ 80 (split)
震荡猛击 ______ damage only
伤害反射护盾 ________ damage only
挫志怒吼 ___ 63 (split)
毁灭打击 ____________ damage + 5% of AP *** Needs re-checking for 8982 **
躲闪/招架/格挡_____ 1 (in defensive stance with Improved Defensive Stance only)
英勇打击 ________ damage + 259
英勇投掷 _________ 1.50 x damage
怒气获得 ____________ 5 (stance modifier is not applied)
撕裂 _________________ damage only
复仇 ______________ damage + 121
盾击 __________ 36
盾牌猛击 __________ damage + 770
震荡波 ____________ damage only
猛击 _________________ damage + 140
法术反射 ________ damage only (only for spells aimed at you)
社会仇恨 _________ 0
破甲攻击 ________ 345 + 5%AP
雷霆一击 _________ 1.85 x damage
警戒 ____________ 10% of target's generated threat (stance modifier is not applied)

如果你通过加强反弹魔法天赋帮助队友反弹魔法，你不会获得任何仇恨值，相对如果你通过此天赋帮助队友反弹魔法，这个仇恨值将计算在队友身上。
]=]
L["Warning Settings"] = "警报设置"
L["Warning Threshold %"] = "警告阈值（百分比）"
L["Warrior"] = "战士"
L["You are alone"] = "无队伍"
L["You are in a battleground"] = "在战场"
L["You are in a party"] = "有队伍"
L["You are in a raid"] = "有团队"
L["You are not in combat"] = "你不在战斗"
L["You are resting"] = "有空闲"
L["You have a pet"] = "有宠物"
L["|cffff0000Error:|r Omen cannot use shake warning if you have turned on nameplates at least once since logging in."] = "|cffff0000错误：|r 如果您在登录后启动过一次姓名版，Omen 将无法使用震动警报功能。"

