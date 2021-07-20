return STRING.split([=[
未来模式:
		任务生存; 对称; 无摩擦; 拼方形; 限高无尽挖掘; 连击练习; backfire对战
		极简教程/考试; 大爆炸; 音游模式; 教学关; 术语问答; 仅4lPC模式
		OSD; 强制Misdrop; 涂色模式(模仿喷喷, designed by teatube)
未来大游戏:
		Puyo; Bubble; 2048; 花仙子方块
未来Mod:
		修改颜色配置; 只显示场地边框线/顶线
未来按键:
		移动左4~右5(+硬降) (共18键)
		临时启用瞬间移动; 临时禁用das
		深降到底; 空中锁定; 场地平移; 切换攻击模式
		重置块; 丢弃块; 交换块
		临时切换高镜头/低镜头
		切换影子镜头/方块镜头
未来小游戏:
		Tetro-1010(四/五连块, 2C2N, 若干回合改变重力方向)
		Tetra-link; 速算(前缀后缀表达式,二八十六进制)
		连连看; 求合体; 坦克大战; 扫雷; 接水管
其他未来内容:
		可调场地宽度; 可调攻击系统; 组队战; 实时统计数据可视化
		重做模式选择UI; 重做模组UI; 高级自定义序列
		全部方块位移动画; 更好的手柄支持; 场地格子边缘线
		spike相关统计数据; 模式数据分析; 简单TAS工具
		音效包; 手势操作; 特殊控件(虚拟摇杆等)
		区分各种消除(隔断/架空/混合/彩色/穿墙)
		更复杂的攻击(数量/可抵消延时/不可抵消延时/反击/攻击/防御/洞数/连接/炸弹/厚度)
		更细节的DAS选项; 成就系统; 拓展主题系统
		工程编译到字节码; task-Z(新AI)
		等级系统; 收集向抽奖玩法; 自适应UI
		自动跳帧; 多方块; 超60帧

0.16.0: 空间站 Space station
		新增:
				新BGM:shift(用于生存第三/四难度)
				新BGM:here(用于生存第五难度)
				新BGM:beat5th(用于竞速五连块)
				新增小亚(xiaoya)语音包
				旋转系统新增ZRS(实验性),ASC,ASCplus(添加180度踢墙,实验性)
				新增noInitSZO模式参数,自动跳过开局SZO(目前仅用于马拉松/20G模式) #121
		改动:
				微调BGM:nil
				更换更简洁的加载动画,合并intro场景
				声音设置界面添加静音按钮
				修改debug模式鼠标位置显示方式
				开启msaa(实验性)
				增加滑条控件测试声音的间隔
				master-u模式的500限制时间为183秒
				resetall命令最后一瞬间才删除文件 #133
		代码:
				重构WS模块,可能解决部分联网游戏中的概率thread error问题
				升级BGM/IMG/SKIN模块,资源不再需要启动时加载好,提升加载速度节约资源占用
		修复:
				只有屏幕宽度异常时自动刷新窗口尺寸 #120
				20G不会禁用各种软降n格键
				das为0时预览动画不正确
				存档转换时两个20G模式数据弄反了
				marathon_bfmax死亡判定不合适 #127
				粘贴序列检测到损坏时后续操作出现问题 #89
				控制台print命令输入非文件报错 #124
				限制最大自定义序列长度(2600) #122

0.15.6: 强化装甲 Reinforced Armor
		新增:
				新BGM:Nil(用于主菜单)
				新BGM:Secret7th Remix(用于master-ultimate,by 柒栎流星)
				新模式:Attack竞速
				master-ultimate模式新增500~1000
				支持调整录像回放速度和逐帧播放
				方块和场地的亮度参数调整
				ghost样式预览 #95
				模式地图支持按住ctrl或alt后方向键功能变为缩放
				控制台新增resetall命令 #111
		改动:
				TRS中T的踢墙表2→1(2→3)新增-1,-1(+1,-1) #98
				回放模式下显示隐形的当前方块和ghost #105
				ultra模式倒计时改为帧数
				微调暂停界面布局
				微调线框ghost样式
				简化点击特效
				调整Zen模式后三个模式位置
				键盘可以控制地图缩放 #101
		代码:
				修改几个master模式的内部名称
		修复:
				录像回放成绩会进入排行 #96
				不能加载开启了mod的录像
				IRS生效后不会自动松开旋转键 #114
				TRS中p和q进不去stsd洞
				消除特效关闭后溅射特效不会显示
				房间内非游戏状态下设置按钮可见性错误
				设置界面的ui小问题
				镜头上移(和垃圾行下压高度)会导致目标消除线位置不正确 #97
				从暂停场景返回时会把当前时间计入当日游戏时间
				从回放菜单进入回放时还显示重开按钮并且重开键有用
				键盘控制滑条或者选择器时报错
				切换场景时隐藏的控件闪过一帧 #116

0.15.5: 姿态调整 RCS Control
		新增:
				新增录像回放菜单,自动升级旧版本录像格式,可以看以前保存的录像了
				可选六种阴影样式
				攻击缓冲条中的攻击显示时间刻度(0.5秒一格)
				新BGM:Rectification(用于master-final的前500台)
		改动:
				玩家准备颜色改为天蓝色,连接成功改为半透明填充
				MES模块的默认消息类型会带上颜色
				调整房间内准备状态文本颜色
				优化sysFX模块绘制性能,新的点击特效
				极简菜单开关放到屏幕外减少误触
				减轻误硬降打断音量
		代码:
				REPLAY不再需要保存到本地的数据,每次启动自动刷新录像文件列表
				字符串拓展模块和DATA模块新增方法
		修复:
				DOGC模块创建超过系统限制大小的画布导致报错
				玩家退出房间时移除键错误导致崩溃

0.15.4: 近地轨道 Low Earth Orbit
		新增:
				自定义房间支持设置密码,允许任何人开大房间
				房间列表ui调整
				新增误硬降打断延迟机制
		改动:
				同时允许进入0.15.2/3/4版本的房间
				自定义游戏重置功能会重置场地/序列/任务了
				文件保存时一般不再弹出保存成功的消息
				更好地响应系统长按
				控件被隐藏时会自动失去焦点
				微调输入框边框样式
				修改自定义游戏默认背景和自定义房间默认bgm
				小程序tap不再认为鼠标左右键为同一个键
				移除20G极限难度400~500背景 #86
				所有mod都会让成绩无效 #90
		代码:
				MES模块升级,文件保存或json编解码失败时会有代码位置指示消息
				修改房间准备状态变量修改条件,减少出现问题状态的可能性
				控件模块升级,优化交互体验
				略微优化ws模块性能
		修复:
				c4w模式一直响警报
				1/30的概率死亡后濒死音效错误播放
				服务器传来警告/错误信息时弹出消息的奇怪格式
				序列编辑粘贴不当格式数据会导致后续错误 #89
				开启3D方块时消行特效也会有两个叠在一起
				hold被禁用时虚拟按键不消失
				科研模式评级错误
				自定义模式进入消除模式后不再恢复正常无尽模式 #91
				点击联网游戏按钮后可以切去其他场景然后引发问题
				ws模块连接流程可以被read打断
				ws模块trigChn无条件一直push占用内存

0.15.3: 卫星 Satellite
		新增:
				开房支持自定义参数
				房间内玩家框会按照排名排序,右侧显示数据,鼠标放上显示更多信息
				新BGM:Moonbeam(用于pc挑战两个最难难度)
				云存档(统计-数据管理菜单)
				使用MES模块替换LOG模块
				新模式:无摩擦(隐藏,在一级设置菜单)
		改动:
				滚轮也可以控制屏幕滚动
				房间内消息提示标记样式修改
				选语言界面按钮添加颜色
				增加震动档位数
				ui在非默认长宽比下也会贴边了
				简化staff场景键盘进隐藏的操作,移除赞助id颜色
				更长的尝试连接ws时间
				隐形模式背景更不干扰
				优化注册菜单交互
				移除省流模式
		代码:
				升级SCR模块,整理大量坐标系变换代码
				控制台添加切换/管理服务器的命令
				string/table扩展模块升级
				收ws消息的task不再永久停留于任务队列
				控件模块允许不提供控件名
		修复:
				NX模组不会让成绩无效
				数据保存到统计的时机错误
				加载没有翻译名称的模式时报错
				输入框交互问题
				加载不出的错误格式头像文件会导致崩溃
				开启3D场地后shader覆盖了贴图透明度
				软降das设为0时需要按住两帧才能触发0arr #76
				复活和联网玩家进入挂起状态的触发顺序错误
				非极简/非任务判负后仍继续检测后续其他判定
				ws连接失败时不能正确显示消息
				联网房间从设置返回后背景错误
				声音设置cv控件值不同步
				test场景不能退出

0.15.2: 天线 Antenna
		新增:
				新BGM:Memory(用于ultra)
				新BGM:Space(用于主菜单)
				新BGM:Exploration(用于排位战菜单)
				排位战菜单(只是菜单,没有功能)
				部分场景可以滚动屏幕(简化视频设置/触摸设置/自定义游戏界面)
		改动:
				观战结束后保留观战状态
				移除initSkip
				修复音乐super7th的循环问题并减小低音部分音量
				降低所有背景的亮度
				返回按钮改为图标
				控制台添加一个移除设置项的命令
		代码:
				整理主循环代码,略微提升性能
		修复:
				进入房间时其他玩家的准备状态显示不正确
				pc练习模式可以在场地未出现时落块
				不能正确粘贴序列
				节日判定表达式错误

0.15.1: 耀斑 Flare
		新增:
				允许开局跳过若干next时,倒计时数字颜色会略有不同
		改动:
				微调联网房间内准备前ui,修改键盘准备/观战快捷键
				混战模式和联网对战允许开局跳块
				优化爆发累计和缓冲预警的画面效果
				优化开局倒计时画面效果
				修复自定义-消除模式左侧信息显示问题
		修复:
				一处cc库相关的报错
				[服务器]观战玩家会影响游戏结束判定

0.15.0: 超新星 Supernova
		新增:
				[双端]观战功能
				spike计数器
				全新房间列表ui
				重新启用临界时间(基于帧)
				新增虚拟按键形状设置
		改动:
				主菜单按钮行为更容易理解,添加连接音效和连接成功音效
				移除next和hold栏上的文本
				聊天窗交互更自然
				词典添加游戏官网词条
				修改默认空用户名
				更新cc模块
		代码:
				升级控件模块
				升级本地和服务器提供的房间数据格式
		修复:
				结算显示胜利者时可能报错
				"游戏中"标记会被带到别的房间
				命令行执行空白字符串报错 #63

0.14.8: 冰激凌 Icecream
		新增:
				新增无尽pc挑战模式
				联网对战游戏开始前可以显示其他玩家的连接状态
		改动:
				增加自定义游戏锁延刷新次数挡位
				减少生存模式最高两个难度的锁延刷新次数
		代码:
				简化LOG模块用法
				textBox控件在隐藏时也会自动滚动
		修复:
				聊天窗带空格的消息会被截断

0.14.7: 烈日 Burn
		新增:
				屏幕下方版本号常驻显示
				全新动态玩家布局,房间内显示房间信息
				房间内按回车键聊天
				加入hisPool序列模式
				新增垃圾行缓冲条总数警告
				添加模式环境变量bufferLimit,攻击缓冲上限可以调整
				添加模式环境变量heightLimit,允许超屏最大高度可以调整
				添加模式环境变量initSkip,允许开局前用hold跳过若干个方块
				玩家个人信息栏下部显示在线玩家数量
				登录界面可选保存密码
				添加两个虚拟按键预设槽位
		改动:
				优化性能
				词典新增两个方块游戏词条
				换了个细一些的字体
				超高场地默认不再判负
				删除虚拟按键颜色
				本地玩家也会显示用户名
				单挑模式的bgm全都换成battle
				拆分全员准备和连接ws准备开局的提示
				取消软件锁功能
				简化击杀标记
				控制台支持滚轮和键盘导航
				缩短联网ping间隔和自我认定掉线时间
				调整rnd出块算法的一些细节
				更新naki立绘
		代码:
				控件系统hide机制大改
				场景模块支持拖拽文件(夹)事件
				允许模式给每个玩家初始化多个任务
				升级table扩展模块
		修复:
				联网对战对手画面经常失去同步
				本地混战模式ai死亡时报错
				hold会让锁延刷新次数超出上限
				netPlayer模块重大问题
				低帧率下录像播放时间差会不断增加

0.14.6: 午 Noon
		新增:
				联网对战房间内添加设置入口,未准备就能修改设置
				房间列表界面支持点选和平滑滚动
				未获取到用户头像时显示默认方块头像(uid对应),设置添加省流开关(不加载头像)
				新BGM:Hope(用于master-ex)
				新背景:Blockfall(用于无尽和自定义游戏默认)
				新背景:Blockspace(用于master-ex)
				旧皮肤:Matte(MrZ)
				自定义游戏菜单新增重置按钮
				自定义场地三个鼠标键均可自定义颜色
		改动:
				存档管理功能移至命令行改为手动删文件清除,说明位于词典内
				微调网战房间内ui,全员准备后会有提示
				自定义场地三个鼠标键均可自定义颜色
				简化进入控制台的方法,增加新命令
				取消鼠标右键返回
				更改游戏图标
				Ospin
		代码:
				升级doGC模块,调整命令集
				升级控件模块,支持给部分控件开关声音,属性配置代码整理
				整理代码习惯,常量字符串全部改用单引号
		修复:
				触屏虚拟按键松开后按钮还亮着
				旋转机制的一个错误设计导致高速经典转不动
				科研模式不会结束游戏
				ospin表和JL测试顺序的问题
				模式禁止mod也会显示开了什么mod
				谜题数据解析时错误解析最后的空白符
				blackhole和blockrain背景不适配大小屏幕
				游戏结束相关文本问题
				Ospin

0.14.5: 晨 Morn
		新增:
				新增BGM:Empty(用于节日主题,by ERM)
				新增BGM:Battle(用于单挑L/U难度,by Aether)
				增加玩家个人信息显示框
				音乐室显示音乐作者
				新增开5人房的按钮
				小程序dtw增加街机模式
		改动:
				微调TRS中PQT5J5L5的踢墙表
				加强消四,增加b2b点数(100→150)
				增强hpc攻击力(2→4),修改pc和hpc对b2b点数的影响
				自定义游戏设置会自动保存,默认设置为无重力科研
				调低竞速模式部分评价要求,科研模式通关条件改为100攻击(原200)
				调整master-ph命数奖励
				对战背景改为主题默认背景
				修改硬降音效
				主菜单语言按钮改为地球图标,移到左上角
				词典修改部分词条,调整词条顺序(意见来自群友 库德里尔)
				移除词典中两个不必要的个人词条
				词典支持左右键翻页,添加触屏可用的翻页按钮
				"命令行"改名控制台
				更新词典中的茶服域名
		代码:
				文件模块升级
				控件系统升级,部分控件的text属性改为任意可绘制对象
				新增users模块用来管理网络用户缓存信息
				play场景改名game
				重构GAME.frame相关内容
				大规模整理代码
		修复:
				登录界面邮箱格式判定错误
				调整主菜单点击联网游戏按钮代码的逻辑
				没开ihs的时候提前hold会死
				修复锁延刷新次数比显示(设置)的多一次
				网络玩家倒计时阶段按键会让别人看到的录像播放不正确
				c4w模式回放时初始地形会不一样
				上踢无限悬空

0.14.4: 日出 Sunrise
		新增:
				添加触摸/点击特效开关
				新增BGM:super7th(用于master-ph模式)
				新增BGM:vacuum(用于节日主题)
		改动:
				自定义场地默认使用智能画笔
				对战房间的准备按钮颜色和文本会随状态改变
				联网对战时禁用鼠标右键返回
				添加触摸/点击特效开关
				修改隐形模式BGM配置
				更换催促等待提示音
				不再接受过老版本的存档
		修复:
				玩家死亡消息以服务器为准,录像不同步不再影响结算
				O块在变形后hold失去名字和颜色属性
				master-ph错误
				注册时部分合法邮箱格式会被判错
				his序列模式算法错误
				小程序2048出新格的逻辑错误
				小程序15p盲打颜色配置错误
				一个小程序入口名错误

0.14.3: 曙光 Morning Twilight
		改动:
				尝试进联网菜单的两步都完成前再次点击按钮无效
				自动登录时机修改为ws-app连接成功并且版本是最新
				微调玩家准备相关的交互
				进房固定1.26秒cd
				文本框控件不再有新消息提示音
		修复:
				修复test场景触屏点击报错

0.14.2: 破晓 Dawn
		新增:
				重新启用注册菜单
		改动:
				优化一些联网对战相关内容
				攻击特效从全局改为玩家设置项一部分
		修复:
				一些联网对战问题
				马拉松模式忘了删测试用代码

0.14.1: 拂晓 Daybreak
		改动:
				为了更好的游戏体验,手机只能开单挑房,电脑开多人房(不建议),特殊用户可以开更大的房
				增加联网对战模式的垃圾行上涨速度
		修复:
				一些联网对战的bug

0.14.0: 地平线 The Horizon
		新增:
				重新开放联网对战测试!!!
				主菜单UI更新,改变几个场景间的关系
				场地晃动加入旋转分量
				加入c2和mess序列模式,可以在自定义或mod中开启
				新模式:Backfire(四个难度)
				新背景:BlackHole(用于Backfire)
				新增BGM:echo(用于Backfire), hang out(用于两个小程序)
				调整自定义场地的ui,可以看到鼠标不同按键对应画笔颜色
				小程序DTW增加双押功能
				新增绘制优化设置(手机开启可能加速,电脑花屏关闭可能解决)
		改动:
				错误处理机制大升级,更不容易闪退(CC爆炸除外)
				赞助名单移至staff场景并添加动画(已经在榜上的可以来定制颜色!)
				修改GM模式的名称和段位名以及修改连带内容,加高成绩上限,修复一个旧版本存档转换错误
				更新存档版本时若需要会自动重启
				鼠标按下时光标显示会变化
				优化场地绘制交互,添加一个鼠标功能指示器
				微调生存模式下落速度
				修改时间字符串格式
				词典不再大小写敏感
				调整徽章图标,添加naki立绘
				报错时会把traceback信息保存到日志文件便于debug
				cmd添加一些测试用命令和一些文件管理命令,可以用于自行修复存档
				cmd添加复制粘贴剪切和tab补全,不再需要切焦点
				ws状态展示样式升级,只在debug模式下显示
		代码:
				序列生成器改用协程实现
				THEME做成独立模块
				玩家属性modeData地位提升
				不再每次启动时强制删除存档目录内所有非文件夹内容
				绘制玩家场地用的scissor换成stencil(支持旋转和变形)
				优化/大规模整理代码,网络相关全面升级
		修复:
				物理hold可能会卡死和踢墙测试位置不正确
				词典中c2序列生成器的说明错误
				刚安装就用简洁模式玩会报错(修改成绩比较逻辑)
				报错提示的场景显示不正确
				智能画笔问题

0.13.3: 科技飞跃 Technological Advancements
		新增:
				地图UI升级,增加模式图标
				自定义场地新增智能画笔
				新增物理hold(暂时只在自定义开放)
				新增小程序:Dropper
				新增小程序:Cannon
				新增小程序:Reflect
				新增小程序:Polyforge
				新增小程序:Command Line
				新增BGM:dream(用于小程序Polyforge和无尽挖掘)
				新增BGM:venus(用于zen)
		改动:
				镜头移动微调,高处更容易看清
				简化自定义模式选项
				软件锁和新加载动画合并
				计算器地位降为小程序,软件锁与加载动画合并
				小程序Just Get Ten增加速打模式
				主菜单机器人不再发出极简错误提示音
				不再支持导入旧版本统计信息
		代码:
				删除不用的安卓联网库文件
				简化LANG模块的初始化方法
		修复:
				一个老存档转换问题
				重开后虚拟按键失效

0.13.2+: 工作室搬迁 Moving the Studio
		新增:
				全新加载动画与资源加载机制
				显示ai计算的下一块位置
		改动:
				中文词典加入更多关键词
				降低干旱-L的评级要求
		代码:
				联网模块继续推进
				进一步模块化
				ai协程化
		修复:
				CC闪退(可能修复)

0.13.2: 节奏模式 Rhythm Mode
		新增:
				新增节奏模式(三个难度)
				加入deepDrop功能(暂时只在自定义开放)
				加入任意高度场地功能(暂时只在自定义开放)
				新增小游戏:Tapping speed test, Don't touch white
				新增BGM:warped(用于Ultra和Tech-L难度)
				简洁模式(给不需要专业级游戏的群体)
				新增zDay节日与新的主菜单音乐overzero
		改动:
				暂停信息的两个时间改为显示处理落率(掉帧率)
				微调游戏中重开和暂停按钮位置
				调整马拉松-普通的速度曲线
				调整虚拟按键碰撞力度
				修改出块高度算法
				调整Ospin音效
				地图排版微调
				词典交互优化,可以用中文查了
				降低小游戏Just Get Ten出12之后难度,新增小节时间功能
				增加小游戏2048盲打难度
				缩短春节的判定范围
				调整内存不足的提示信息
				badapple换成视频
				更新法语翻译(by Mizu)
				bright皮肤微调(by ScF)
		代码:
				联网函数全部重写,全部使用love原生库,暂时关闭联网入口
				旋转中心和朝向信息放入方块对象中
				拆分toolfunc文件
				修改录像系统机制(自动删除所有之前存的无效录像)
		修复:
				Ospin锁延刷新时机错误
				刷新方块状态时20G软降触发条件不正确
				锁延刷新机制一个细节错误
				无限上踢bug
				B2B spin6报错
				网战开房名显示不出
				一帧误差(网战不同步bug原因之一)
				3D方块和showinvis冲突
				消除了炸弹垃圾行时hpc的一个判定错误
				没开濒死特效时濒死音效也没有
				一些系统给垃圾行的模式会爆炸
				处理落率可以有两个负号
				全解锁命令错误

0.13.0: 维度突破 New Dimension
		新增:
				联网对战测试
				新logo与新标题图
				新增五个ScF做的新皮肤,默认皮肤改为Crystal
				新增BGM:vapor(用于tsd), spring festival(节日主题)
				新增小游戏:2048, Just Get Ten
				新增背景:Cubes(用于马拉松-困难)
				新增大量tips
				新增4*5和4*6的pc练习模式超大题库,增加c4w模式初始场地情况
				添加危险警告音效
				新增3D方块效果
				新键位设置UI
				移除重开键位改为重开按钮,添加2号功能键(同时修改默认按键和虚拟按键布局)
				新增说明书页面(入口位于帮助页面)
				取消暂停后有准备时间
				音乐室显示播放进度条
				彩色虚拟按键
				Português
		改动:
				next和hold中太高的方块会缩小显示,影子的旋转中心图层下移
				触屏限制每帧采样一次,略微优化触屏性能
				隐形速度增加两个挡位,只能通过自定义/mod调出
				quest包含多场地,原格式失效(可手动修复)
				新增聊天框控件,用于联网场景和更新历史等需要显示长文本的地方
				重开键和暂停键移动位置
				主界面tips滚动显示
				手机不再默认开启震动
				主菜单/历史/结算页ui微调,游戏中暂停按钮小一点
				游戏界面按鼠标右键不再会退出
				词典略微升级,添加和修改了几个词条
		代码:
				修改皮肤文件名和所有模式的内部名
				更改虚拟按键可见性代码做成函数
				语言/控件系统升级,方便未来设计
				移除玩家的r和c属性
				大规模整理玩家绘图代码
				节日主题系统完善
		修复:
				pc练习模式以前一直在随机1~35题
				自定义-高级中隐形时间选择器问题
				粘贴quest后左下小场地画面状态错误
				粘贴任务后光标位置错误
				带着软件锁启动游戏进debug模式报错
				游戏结束后还计算按键次数
				极简成就刷新错误
				对老版本存档更兼容
				一堆没啥意义不想列出来的细节问题

0.12.X: 圣诞快乐 Merry Christmas
		新增:
				新增BGM:mXmas(节日主题)
		改动:
				调整magicblock的音质
				升级i2的踢墙表
		修复:
				o1旋转后锁定报错
				自定义模式开ai报错
				非20G高重力块穿模

0.12.25: N连块 N-mino
		新增:
				加入1~3连块
				新增BGM:Magicblock(用于混战模式)
				极简连击计数器显示AP和FC的颜色
				两个ScF做的新皮肤,Penta皮肤微调
				自定义序列添加随机生成一包的按钮,调整ui支持1~3连块
				节日彩蛋系统,新背景飘雪
		改动:
				暂停界面排版升级
				快速重开不再有入场动画
				五连块颜色调整
				调整一些模式的bgm
				高速经典模式隐藏180度旋转键
		代码:
				玩家属性imgY更名ghoY
				删除mino文件,较小规模代码整理
				一些性能优化

0.12.9: 修复更新 Fixup Update
		改动:
				玩家出场动画加速
		代码:
				几处细节调整
		修复:
				开局硬降后卡顿

0.12.8: 皮肤调整 Better Skins
		改动:
				攻击力统计算法修改
				b3b触发点和上限都减小200,变为800和1000
				新增/删除几个方块皮肤
				调整部分皮肤亮度
		代码:
				尝试让文件读取更安全
				尝试修正读取老版本存档的错误
		修复:
				手机第一次安装永远进不去
				每次启动游戏统计信息的消除信息必定丢失
				游戏结束后两个码表显示不正确

0.12.7: 视野 Sight
		新增:
				场地遮挡和场地反转的mod完成
		改动:
				回合制模式垃圾上涨速度调快
		代码:
				调整转换存档/加载文件的逻辑
				COLOR模块小升级
		修复:
				win和linux缺库不会再闪退了
				许多神秘小错误

0.12.6: 系统升级 System Update
		新增:
				开局时玩家有入场动画
				录像保存初版(读取回放还没做)
		改动:
				移除词典内的ospin操作表
				游戏开始开始两秒后或者确实结束后才计入统计数据
				所有小游戏入口移至词典
				极限马拉松入口隐藏
				移除maxNext设置项
		代码:
				FILE模块修改,将所有文件换后缀放文件夹分类整理方便管理
				"远程玩家"进入可用测试阶段
				全局变量ACCOUNT改名USER
				垃圾行计时速度从GAME移至gameEnv
				淘汰sceneTemp技术
		修复:
				修正游戏中途退出时结算不正确
				修正保存文件搞反静音模式是否print

0.12.5: 漏洞修复 Bug Fix
		新内容:
				玩家自动排版机制
				das打断设置
		改动:
				两个干旱和400L/1000L评级标准调整
				优化聊天室交互
				网格从开关改为可调透明度
				使用安全区域显示系统时间
				计算器添加画面效果彩蛋
		代码:
				多媒体模块全体高度封装大型升级
				language模块独立
				玩家ui的场地y坐标取消70的偏移
		修复:
				开局提前hold+硬降会死
				游戏暂停去设置回来背景错误
				回放时暂停还会计算暂停时间
				聊天室清空按钮不显示
				两个无尽模式无条件解锁
				两个防守模式波数封顶后不动

0.12.4: 网战预备 Before Net Battle
		新内容:
				允许用户登录
				聊天室功能开放测试
				健康游戏时间提醒
		改动:
				无移动/无旋转模式改为彩蛋模式,入口隐藏
				录像回放时键盘不完全失效
				Mod选择界面微调
				优化部分系统和小游戏的UI
		代码:
				重写/改造大量模块
		修复:
				统计时间计算错误(近似双倍)
				数据导入后不会立刻保存
				无数小bug

0.12.3: 矩形 Rectangles
		新内容:
				新增小游戏:Cubefield
				合并/删除多余的mod,新增几个mod
				新增方块溅射特效
		改动:
				游戏开始时会列出启用的mod
				游戏暂停时展示使用的mod和成绩是否有效
				mod选择界面更美观
				PC挑战简单模式允许O-spin
				井字棋棋子形状调整
		代码:
				mod系统调整
		修复:
				自定义模式用不了mod
				两个c2踢墙表都有问题
				CC切换20G模式时报错
				进入过井字棋后音乐模块损坏
				打开mod后虚拟按键显示不正常

0.12.2: Mod更新 Mod Update
		新内容:
				新增mod系统,包含各种花式功能(开启后不记录成绩)
				新增多hold系统
				新增旋转系统选择
				新增五联块极简判定
				新增小游戏:战略井字棋
		改动:
				A to Z小游戏更难用输入法作弊
				降低PC练习/进攻练习的难度和评级标准
				提高PC挑战模式评级要求
				AIRS改名并支持无踢墙180度转,PC训练模式改用此旋转系统
				攻击缓冲区从20增加到26
				模式地图20G路线微调
		代码:
				控件系统更强大
				源代码文件分类更清晰
				Zframework大规模重构,更容易重用
				重构next和hold系统
				调整部分显示字号
		修复:
				部分旋转系统旋转O后锁定就报错
				音效室Zspin按钮没声音

0.12.1: 漏洞修复 Bug Fix
		新内容:
				新增BGM:sugar fairy(用于马拉松极限)
		改动:
				手机也可以玩A to Z了
				自定义默认开启
				两个C2踢墙表调整
		代码:
				三个音频模块的加载表移至模块外
		修复:
				C4W报错,场地行颜色不对
				部分安卓手机主菜单报错

0.12.0: 全局更新+ Global Update Plus
		新内容:
				注册测试(不对所有人开放)
				新增小游戏A to Z
				新增数据导出/导入界面(从统计界面进入)
				新增BGM:Truth(用于PC挑战)
				新背景:Tunnel(用于GM模式)
				新意义不明瞎眼皮肤:Crack
				多语音包系统(新增naki语音)
				新增C2,C2-sym,Classic旋转系统(暂时不可设置)
				新增自定义场地多页面功能(暂不支持多页复制)
				Français & Español
		改动:
				经典模式更多规则还原,难度大幅增加
				取消对部分旧存档转换支持
				移除两个无尽模式的评级要求改为沙盒关卡
				部分中文tip上色
				旋转中心贴图微调
				从自定义界面回到主菜单时BGM恢复
				badapple画质提升
		代码:
				重构场景系统/背景系统/控件系统/语言系统/玩家类/模式地图(动画升级)
				大量代码规范化,Zframework更容易重用
		修复:
				无数错误

0.11.6: 多彩更新II Bountful Update II
		新内容:
				所有皮肤颜色细节大改,新增配色至16种,新增炸弹垃圾行(暂时没有应用)
				游戏结束后大字显示关卡评级
				全新神秘加载画面
				全新攻击特效
				新模式:20G-Phantasm
				新功能:音效室
				badapple背景(超低画质超低帧率警告)
		改动:
				挖掘相关模式垃圾行尽量不出在同一列
				复活后有一秒等待时间
				调整单挑模式评级要求,降低两个无尽模式评分要求
				hold后文字变红
				键盘编辑序列体验优化,可以更改x格子可见性
				支持模式篡改皮肤和初始朝向
				序列生成代码优化,序列用完或任务失败不扣生命直接判负
		代码:
				简化语言文件,添加新语言更方便,优化语言初始化
				皮肤文件分段加载,拼图提示贴图独立加载
				更改profile开启方式,不再和计算器组合功能键冲突
				调整玩家加载代码
		修复:
				20G极限400台背景代码报错
				取消暂停后背景回到初始状态
				马拉松-困难没有reach音效

0.11.5: 自定义页面更新 Custom Menu Update
		新内容:
				新自定义页面:可预览场地,显示序列/任务情况
				新背景:welcome(用于final和生存极限)
				新控件:文本框(用于登录等功能)
				用户注册/登录界面(暂时没有任何功能)
				英语版词典
		改动:
				不再频繁切默认BGM,体验更好
				移除自制虚拟键盘控件,手机端改用系统键盘,词典加入选择词条的上下键
				词典调整,搜索动画改好看
				CC使用新参数,AI平衡再调整
				调整最后两个隐形模式通关条件
				模式地图评级文本支持多语言,地图排版微调
				极简提示音预览
				删除yygq语言统计数据参与的tips
		代码:
				优化性能:ai思考和绘制玩家场地
				整理代码,变量整理,许多全局变量名改为大写
		修复:
				CC报错(大概也许)
				顶替CC的9S大幅加速
				回合制会自然下落,ai不会卡住了

0.11.4: 网络库更新 Network Update
		新内容:
				新块序:回声
				新模式:无移动/无旋转40行
				新模式:纯单消马拉松
		改动:
				使用aegistudio的新网络库获取公告,无连接/拉取超时不会卡死了
				增加公告/最新版本文字显示时长
				极简评级要求改为通关且至少放了5个方块
				极简等第文本区分语言
				demo玩家不触发极简错误音
				CC操作速度加强
				地图布局微调
				词典控件排版微调,键盘透明度降低
				软件锁在加载资源前启动
		代码:
				按键禁用加入模式环境变量
				modes.lua文件模式扁平化
				规范加载外部库代码
		修复:
				粘贴错误任务代码崩溃
				计算器e键非法输入报错
				ios打不开词典部分定式词条

0.11.3: 新极简系统 New Finesse System
		新内容:
				增加极简连击系统并且极简点数计算系统大改
				新增BGM:Storm(用于防守/生存)
				非极简不播放锁定音效
				主界面AI试玩有音效
		改动:
				词典新增大量内容
				修复词典打开链接,新增大家的b站空间链接
				BGM大规模调整
				高重力分数倍率增加一档
				自定义模式自由选择BGM
		代码:
				玩家新增sound属性开关声效
				修复模式hook函数通关后TICK任务丢失
		修复:
				mini判定不能触发
				挖掘模式rank判定条件错误
				回放时同时按两个键kpm变无穷
				科研模式可以同时触发胜利和失败

0.11.2: 弹球小游戏 Pong
		新内容:
				Pong
				公开小游戏入口
				词典支持跳转超链接
				新增BGM:Waterfall(用于特种40L)
				新模式:挖掘10/40/100/400/1000
		改动:
				修改查询机制,增加词条,优化词典体验
				优化字号使用,字体预加载
				减小字体文件体积(9.1M→7.8M)
				增加Wspin
		修复:
				0arr水平移动优先于20G
				消四任务结算错误
				自定义序列/任务删除后光标穿模
				混战第一把不显示功能键的虚拟按键
				Ospin小错误
				无评价也能解锁下一关
				词典内输入特殊符号报错/查询错误
				马拉松-普通目标行数显示错误
				9S机器人极简错误
				报错界面执行代码无效

0.11.1: 小Z更新 Dictionary Update
		新内容:
				新增:小Z词典
				自定义模式入口移至主菜单
				游戏结束时显示评级
				修改下落/操作速度的加分机制
				联网公告+版本更新检测
				新控件:虚拟键盘
		改动:
				修改分数文字上浮速度曲线
				主界面demoPlay落块计算速度加分
				PC任务判定修改
				移除LOG.print消息平滑上拉动画
				移除debug界面复制日志按钮
				报错界面可以执行任意代码救急
		代码:
				控件系统增强
				旋转中心表从require改为全局
				修改LOG.print的message模式输出颜色
				TASK模块代码整理,删除老旧代码
		修复:
				盲打还会显示落块分数
				游戏结束时不到D评级报错
				TSD模式判定错误
				any1~4任务不能完成
				粘贴场地有残留
				修复混战模式目标切换的问题
				修复场地最上显示不全
				按键设置使用反斜杠后保存失败

0.11.0: 谜题更新 Puzzle Update
		新内容:
				自定义游戏支持复制所有【题目】信息
				自定义任务(各种消除),可开关强制完成
				自定义游戏设置重新分页+排版
				新增显示落块分数
				计算器支持小数点和科学计数法
		改动:
				攻击算法大幅改动
				命数超过3使用缩略显示
				自定义序列/任务连续同种方块使用缩略显示
				软件锁场景层次更改,可以从设置进入
				自定义序列中光标位置可循环
				修改序列的导出格式
				方块透明度改为显示开关
				隐形WTF模式会提示玩家打开生成音效,回放场地可见
				LOG.print输出字体随屏幕大小变化
				debug页面新增复制日志信息和输出屏幕信息
				debug模式光标坐标显示必定整数
				debug功能键增加
		代码:
				color模块新增生成随机色,生成彩虹色功能
		修复:
				修复科研极简+模式不能消四
				焦点选择器控件上时按方向键闪退
				干旱2进入就报错
				O4或I4后游戏崩溃

0.10.11: 自定义游戏更新 Custom-game Update
		新内容:
				全新自定义游戏设置界面
				新模式:MPH竞速
				新控件:选择器 (用于调整自定义游戏的选项)
				当前方块透明度可调
		改动:
				小游戏开关排版调整,使用qwer切换选项,增加舒尔特方格特效开关
				0next时不显示生成预览
				垃圾行缓冲槽显示微调
				科研模式目标改为200行攻击
				虚拟按键最大尺寸增加
				画面设置布局微调
		代码:
				玩家方法reach_winCheck改为check_lineReach,新增攻击达标检测函数
				玩家上次消行信息lastClear属性改为表,包含更多信息
				整理并重写部分玩家draw_norm代码
				整理游戏设置变量
				20G移出gameEnv属性
		修复:
				修复回放录像时间轴错开一帧
				对CC崩溃进行一定保护,游戏可能不会闪退
				背景lightning2的方块显示错误
				科研模式显示的攻击改为一位小数

0.10.10: 画面优化 Graphics Update
		新内容:
				超屏视野:场地超高时镜头上移
				生成预览:显示下一个Next的基准生成位置
				新皮肤:gem(notypey)
				新皮肤:brick_light(notypey)
				新皮肤:cartoon_cup(earety)
		改动:
				卡块spin判定无须最后一步旋转(spin-5可以实现了!)
				重开长按操作提示
				优化两个小游戏体验
				设置界面左右切换动画调整
				音乐室再装修
				ai难度再调整
				可以显示CC加载失败详细信息
				进入场景时滑条数字可见
		代码:
				删除两个多余的文件(6.5MB)
				皮肤/音效/BGM文件缺失时不崩溃,只弹出警告
				LOG.print取消"short"输出方式
				目标行数线加入玩家绘图方法
				win下提醒用户删掉存档内CCloader,声明两个全局变量
		修复:
				手机锁屏再解锁后可能屏幕方向错误(0.10.1没完全好,这次好了)
				修复软降n格报错
				进攻-极限 显示垃圾行数量错误

0.10.9: 舒尔特方格 Schulte Grid
		新内容:
				舒尔特方格
				15p可关闭滑动轨迹显示
				隐形模式回放时方块不会完全隐藏
				画图界面新增顶起一行和消除满行功能
				把音乐室装修得更好看了
				新增BGM:Down
				修改BGM:Rockblock
		改动:
				优化15p开关排版和机制
				不允许使用瞬移操作的模式虚拟按键也不显示
				单挑评分标准适配三条命
				调整ai难度
				部分弹出消息改用LOG.print输出到屏幕左上角
				缺失字体文件时使用引擎自带字体
		代码:
				整理player.lua文件
				整理scr变量相关代码
				所有音乐重新转码,BGM文件夹不再追踪
				LOG.print新增"short"输出方式,仅显示一个时长很短的不重要提示信息
		修复:
				CC死后不能正常复活
				部分背景不能正确显示

0.10.8: 全局更新 Global Update
		新内容:
				单挑模式玩家和电脑各三条生命,剩余生命数显示在场地右下角
				新增复活动画
		改动:
				15p入口由软件锁改为主界面(自己试着找找看吧)(未来会开放)
				优化15p体验,新增滑动操作开关和键盘反向
				优化滑条信息显示
				鼠标点击按钮后不失去焦点
				增大解锁400L模式难度(1.5pps左右)
				码表指针不透明度增加
		代码:
				整理场景代码,同场景代码全部放到scenes.lua文件
				增加日志模块log.lua,允许在游戏内显示debug信息
				玩家绘制代码调整

0.10.7: 15P更新 15puzzle update
		新内容:
				ghost和center透明度可调
				15puzzle(软件锁界面输入815/1524/2435进入)(已经弃用)
		改动:
				大多数滑条都会显示当前值
				滑条交互机制优化
				部分控件重排版
				更新计划改为中文
		代码:
				部分设置值域改为[0%,100%]
				整理场景代码,同场景代码整合(部分)
				攻击特效和徽章特效并入SYSFX
		修复:
				修复挖掘模式涨行不刷新ghost
				控制设置页面预览显示bug
				在倒计时阶段按一些按键会报错

0.10.6: CC更新 Cold Clear update
		新内容:
				全平台支持新版CC(也许)
		改动:
				修改UVRY的踢墙表
		修复:
				O卡住的时候旋转不刷新锁定延迟
				CC在发现重力过大后hold即报错

0.10.5: 特效更新 FX update
		新内容:
				瞬移特效独立为瞬降和移动(旋转)特效,增加移动特效滑条,各特效范围均为0~5
				增加两个莫名其妙的背景(放在无尽和限时打分)
				把之前不小心弄丢的自制蓝屏报错界面捡回来了
		改动:
				雷达图OPM参数改为ADPM
				调整J/L/I的踢墙表
				根据锁延刷新模式决定锁延指示条颜色
				增加无尽挖掘连挖提示,挖完后下一波立即升起
				new English translation by @MattMayuga#8789
				修改100/400/1000L的评级要求
				软件锁界面出现时机调整,按钮位置调整
				调整混战模式倍率影响边框颜色的范围
				软件锁也可显示tip
		代码:
				重命名大多数背景
				重构create___FX函数
		修复:
				加载部分老版本存档报错
				几个设置大标题样式不统一
				有消行延迟+出块等待时连续硬降出现神秘现象
				垃圾行上涨不刷新ghost
				粘贴序列后光标位置错误
				不能用键盘复制粘贴序列
				每次启动游戏ai是一样的块序

0.10.4: 漏洞修复 Bug Fix
		代码:
				修改场景模块方法名
				软件锁变量名从lock改为appLock
				使用linter整理代码
				重构锁延相关代码,freshgho,freshLockDelay,freshMinY合并为freshBlock
		修复:
				BPM120~180之间分数计算不正确
				进不指定锁延的模式就报错
				锁延机制错误(这次真修好了)
				游戏结束后马上暂停并解除还会自动暂停(之前没修好)
				提前硬降失效

0.10.3: 软件锁 APP Lock
		新内容:
				设置增加软件锁选项,打开游戏后进入伪装界面
		改动:
				剩余锁延重置次数指示器改为长方形
				debug界面改为重置界面,进入方法修改
				游戏设置页面布局更改
				语音音量条改为无刻度
				取消快速重开设置,游戏过程中长按重开,结束后开局一秒内点击重开
		修复:
				无尽挖掘报错
				极简错误提示声音太小
				修复回放也计入排行榜
				回放时暂停不打断玩家操作
				c4w练习的lunatic分数bug

0.10.2: 锁延修复 Lock Delay Fixed
		改动:
				锁延机制再修正
				"失败"改为"游戏结束"
		修复:
				纠正部分rank文件转换错误
				模式文件使用玩家的随机器以正确回放
				游戏结束后马上暂停并解除还会自动暂停
				改设置后回放错误
				字库缺字

0.10.1: 细节更新 Details update
		新内容:
				新语言:就这?
				新语言配套阴阳怪气Tips
				光标点击动画
				锁延机制修正
				锁延和可刷新次数可视化
				两个新皮肤
		改动:
				BGM重新分配
				rockblock音乐微调
				无刻度滑条
				音量曲线调整
		代码:
				玩家act函数addL/R更名zangiL/R
				玩家属性y_img更名imgY
				旋转中心坐标向左下修正负一
		修复:
				改设置后回放错误
				0.10.0的错误序列生成器
				按R重开后濒死预警不消失
				GM模式通关一直触发win
				手机端屏幕方向错误(也许修复了)
				控制设置das/arr预览错误

0.10.0: 回放更新 Replay Update
		新内容:
				更新后跳转到此页面
				单局回放,要是有cc会出问题,以后再说
				支持复制场地+序列
				修改连击攻击力算法,调整mini的属性
				自定义序列显示方块颜色
				自定义序列菜单ui调整
				新控件:简化按钮 (用于自定义序列等菜单)
		改动:
				Chinese update log
				控件动效优化
				极简错误音效调整
				模电HBM历史性同框
				spin消3的分数下调
				暂停界面数据显示格式和布局微调
				初心/上级20G评级要求改动,清除高分榜
				100L/400L评级要求改动
				这个页面更易读了
		代码:
				帧率控制代码调整,运行可能更流畅(反正不会比以前卡)
				修改部分玩家方法名
				注释更规范了
		修复:
				一些文本小错误
				自定义序列相关的闪退
				按键跟踪设置界面闪退
				五连块成绩排序错误
				pc训练方块ghost浮空
				i平放顶层消1的奇怪行为
				玩家掉出屏幕过程中绘制场地时剪裁不正确
				限时打分的时间条和hold重合

0.9.2: Global Update
		new:
				independent spawning volume setting
				select widgets with arrow keys
				display last played mode on title screen
				new blind mode (extremely hard)
				mode map changed
				[debug page]
		change:
				three little better backgrounds instead of stupid rainbow
				kick list of i-piece little changed
				no extremly huge radar chart in pause page
				new in-game layout
				new setting page layout
		fixed:
				error in infinite-dig
				CC's sudden death sometimes
				missing the top line when paste field
				error when AI used all nexts
				error when play default-bag game after played with custom sequence

0.9.1: Piece Spawn SFX
		new:
				piece spawn SFX
		fixed:
				error when moving [nothing] when arr>0
				error when complete master-advanced

0.9.0: Custom Sequence Update
		new:
				custom sequence
				new sequence type: loop & fixed
				many new tips
				more powerful watermark
				die animation in non-royale mode
				better in-game layout
		changed:
				mode name shown at the top of screen
				faster & harder attacker-ultimate
				time-based-rank for master-advanced
				little easier to get S in PC challenge (easy mode)
				easier to get S in infinite mode, c4w, PC
				harder to unlock sprint-400/1000
				harder to get high rank of sprint-1000
				harder drought-lunatic
		code:
				file sorted
				task system rewrited, now perfect (maybe)
				remove scissors/blendMode setting in drawing players
		fixed:
				screen orientation sometimes error after wake up the phone
				hard move won't deactive "spin"
				do not clear dead enemies' field
				show ghost's center when ghost is off
				error when get a PC in drought-lunatic

0.8.24: Bug Fixed
		new:
				ready to refuse auto-formating stats. if update from versions too old
		changed:
				little changing of pentomino wallkick list
		fixed:
				incorrect color of P/Q
				rank of petomino may be [custom]

0.8.23: Details Update
		new:
				new hidden BGM: Hay what kind of feeling
				now can reset all data (hidden)
		changed:
				show "offset" in stat (only in total stat page)
				6 more X-spin-wallkick added
		fixed:
				speed dial do not moving
				do not show 20+ combo

0.8.22: Shader Update
		new:
				new background: aura (using shader)
				new BGM: Far
				X-spin added
				visual effects for when the player is in danger
				staff page added
		changed:
				remake several backgrounds with shader, instead of image
				kick-list of pentomino optimized
				all backgounds fix screen correctly (maybe)
				won't show "open saving folder" button on mobile devices
				wallkick of J/L-180° spin changed
				reset all settings
		code:
				player generator optimized by Gompyn, FinnTenzor
				player system moduled
		fixed:
				rotating x do not fresh lock delay
				error after reset skin/dir. in pentomino mode
				some times error when any AI exists (wrong kickList code)

0.8.21: Bug Fixed
		changed:
				shape of speed dial changed
				range of FX values changed
				shape of speed dial changed
		fixed:
				error in modes with ai (rotate O in its rotation system, cause some strange error)

0.8.19/20: Fantastic Global Update+
		new:
				new clearing FX
				pentomino with new rotation system (testing)
				new PC training mode with over 1000 quiz
				new English translation by @MattMayuga#8789
				new language: ???
				language-setting page
				[C B A S SS]→[D C B A S]
				powerinfo switch
		changed:
				resume/quit key changed on pause page (quit with Q, resume with esc)
				warning when back to pause page from setting page
				some FX based on real time
				tiny change (almost nothing) changed for powerInfo
				page turing of in-game update log changed
				readable update log of 0.8+ ver
				some new "tips"
				add ENG ver. document(not in game)
		code:
				swap id of J/L
				wall-kick list easier to read
				no utf8 char in code/comments
				less global variables
				light module optimized (but not used)
				code optimized
		fixed:
				impossible to get SS in attacker mode

0.8.18: Details Update+
		new:
				adjustable virtualkey SFX & VIB
		changed:
				add discord link in ENG mode
				change par time/piece of sprint/battle/round mode
				info on pause page more clearly
				faster spaceBG rendering
				updateLog editted
		code:
				delete all removable "goto"s!
				callback system moduled, main.lua easy to read

0.8.17: Details Update
		new:
				bag seperating line switch
				better radar chart & statistics on pause page
				new generator method for drought mode, more difficult to finish
				virtualkey pressing SFX
		changed:
				combo counter changed
				rule of infinite dig changed
				no drop/lock FX in two hardest hidden modes, make them harder
				TSD-easy will auto finish when reach 20TSDs
				solo/round AI setting changed
				show text when entering debug mode
				SFX when enter recording mode
				remove full speed loading
		code:
				launching sound divided to SFX&VOC two parts
				delete many "goto"s
				vocal system moduled
				language system moduled, easier to add new languages
		fixed:
				forgot to load language
				error animation in control setting
				error when paste map containing darkgreen block
				moving block when changing target in t49/t99
				font error in patron list
				do not reset pause count when restart

0.8.16: Fantastic Global Update
		new:
				new statistic page with:
						Radar chart which shows some important info. of player's performance
						count each clear/spin for each piece(old data will be splited averagely)
				linux version!
				welcome vocal by MrZ
				rank label on mode icon(C→B→A→S→SS)
				new J/L-spin: R→2/L→2(0,-1)
				new O-spin-J/L method!
				new tele-ospin method!
				support out frame of skins with transparent pixels
				DAS system remade, no bugs any more!(probably)
				Initial hold/rotate/move switch!
				display ms in control setting
				super secret option
		changed:
				cannot initial hold in a row any more
				new randomizer for drought2
				half-clear judging method changed
				new background system(well, it doesn't look much different but space BG)
				now can loading at full speed with Dblclick/space/enter
				add alipay paycode to help page
				better sequence randomizer
		code:
				first shader applied for white frame of falling block
				many many module packed, easy to manage
				bgm module changed, probably no bug
				4 devMode now
		fixed:
				error when set to max 0 next
		I sequence initializing error when face setting changed
				DAS error

0.8.15: Bug Fixed
		new:
				can switch line-clear text now
				new attack way "Clear"(half-clear)
				give every update a name!
		changed:
				animation time of lock effect little changed
				bone block of ball-skin changed
		I change target more slowly
		uthor.dignity-=1
		fixed:
				180° I spin kicklist error
		I will kill itself when spawn dir. of mino changed
				error when reach 400 in 20G(Lunatic)
				error block color in modes with starting field

0.8.14: Cool FX
		new:
				click/tap/any-key to skip loading animation
				lock animation
		changed:
				display scene info when error
		code:
				many optimization
		fixed:
				error when attack
				error garbage line color
				error in finesse checking
				some times error when touch screen
				touch/press release with no press, then error

0.8.13: O-spin Update++
		new:
				a independent page to set DAS/ARR, with an animation for preview
		changed:
				new virtualkey animation
				freer drawing mode(Incompatible with old ver.)
				combo&b3b attack changed
				score of spins little changed
		fixed:
				wrong behavior in pause scene
				ospin error in 0.8.12
				memory leakage in t49/t99
				unnatural behavior of widgets

0.8.12: Bountful Update
		new:
				layout setting: skin system with customizable block color/direction
				more information when pause
				block has more color(7→11)
				skin: smooth(MrZ), contrast(MrZ), steel(kulumi), ball(shaw)
		changed:
				BGM secret7's Inst. changed
				more stable space background
				stat format changed when pause/stat menu
				opaque background in pause when playing, transparent after game
				canceled invalid game
				easier to unlock custom mode
				some text changed
		code:
				better line-clear process
				merge event.lua to player.lua
				new skin image format
				same format for all file
				better virtualkey-scanning opportunity, bit faster when many AI
				some player-method name changed
		fixed:
				an error of pause button
				score may be float number
				many syntax errors of texts
				crash when paste illegal data to drawing mode
				stage reset problem in t49/t99
				wrong info in tech-L/U/U+ mode

0.8.11: Total Update
		changed:
				better rule of checking invalid game
				can setting when pause
				opaque background when pause
		code:
				many code optimized(moduled)
		fixed:
				receive attack when paused in survivor mode
				error when pasteboard has block_13
				must hold R to restart when finished the game
				sth about screen size
				some O-spin error
				error line counting when pc(full b2b)

0.8.10: Cool Update
		new:
				new BGM:Distortion(master-final)
				all background darker
				cooler error page
		fixed:
				error when finish master/ultra mode
				shakeFX no effect when below 3

0.8.9: System Detail Update
		new:
				invalid game when pause too much
				quick play re-added
				new BGM: Oxygen(c4w&pc training)
		changed:
				space background little changed

0.8.8+: Bug-Fix Update
		fixed many fatal bugs

0.8.8: Space BG Update
		new:
				background now is cool space with "planets" and "stars", instead of falling tetrominoes
				no black side in any screen size
				adjustable waiting time before start
				ajustable maxnext count
				marked the modes with limited das/arr
				new error page and a new voice
				add many fatal bugs
		changed:
				simple records with date
				tiny change in rotate system(JL pistol-spin)
				better board copy/paste
				an unlock-all easter egg
		fixed:
				press invisible func key
				some mode error

0.8.7: Game Detail Update
		new:
				support 2^n G falling speed
		changed:
				better user experience in mode selecting
				speed of marathon mode changed
		code:
				shorter clipboard string(when air above)
				attack system/score system little changed
		fixed:
				wrong behaviour of rank system
				error when enter some mode(again!)

0.8.6: System Detail Update
		new:
				can adjust gamepad keysetting
				add SFX when enter game
		changed:
				map GUI little adjusted
				event system little changed(no control when scene swapping)
		fixed:
				wrong behaviour of rank system
				error when enter some mode

0.8.5-: Exploration Update
		new:
				mode map!Brandly new GUI for mode selecting
				mode unlock system, not that scary for noob
				every mode has rank calculating method(may some mistakes/inappropriate number)
				save 10 best recoreds for each mode
				can save/share custom map now
				"new mode": Big Bang
		changed:
				button appearance changed
				better widget performence
				remove Qplay
		fixed:
				many bugs

0.8.4: Miya Update+
		changed:
				vocal more natural(important, may cause new bug)
				a bit better performence on mobile devices
		fixed:
				some fatal bugs

0.8.3: Miya Update
		new:
				new widget appearence
				cuter miya

0.8.2: Graphics Update
		new:
				miya figure added
				new widget appearence
		changed:
				GUI adjusted
		fixed:
				some bugs

0.8.1: Power Info Update
		changed:
				more FX level
				better battery info displaying
				3 next in GMroll
		fixed:
				some bugs

0.8.0: Small Update
		new:
				better update log from now on(2020.5.2)
		changed:
				more details
		code:
				remade text system
		fixed:
				some bugs

0.7.35: Bug Fixed
		yeah, only bug fixed

0.7.34: Voice Update+
		replace most voice
		shaking FX more natural

0.7.33+: Bot Update
		MORE POWERFUL 9-stack AI
		add stereo-setting slider
		code optimized
		bug fixed

0.7.32: Virtualkey Update+
		Blind-GM now show section directly
		easier&more standard classic mode
		can switch Virtualkey's auto dodging
		in-game setting
		code optimized
		bug fixed

0.7.31: Stereo Update
		stereo system
		fixed a problem in finesse calculating

0.7.30: Virtualkey Update
		auto-tracking virtual key, adjustable parameters!
		can switch on/off virtuakeys
		add 7 more key
		better finesse rate calculating
		block generating position on Y-axis changed
		new icon for android
		can use preset in custom mode with keyboard
		adjusted GUI
		many bug fixed

0.7.28: Finesse Update
		add fineese check(almost useful)
		code optimized

0.7.27: O-spin Update+
		super O transform system
		optimized 	 system(no used)
		bug fixed

0.7.26: Bug Fixed
		new skin
		import light lib
		many bug fixed

0.7.25: Demo Update
		demo play at main menu
		ALMOST reconstructed WHOLE PLAYER SYSTEM, NEED TEST
		many bug fixed

0.7.23/24: Sound Update
		all bgm remade
		more settings with brand new GUI!
		new mode: Master-Final
		new modes: attacker & defender(not survivor!)
		add restart button when pause
		Code Clear added, face it bravely!(Windows only)
		change falling animation
		new GUI details
		louder sound
		code optimized
		many bugs fixed

0.7.22: Graphics Update
		scoring system
		smooth dropping
		can change FX level
		new attaking FX
		new bone skin
		battery info/time display
		in-game update log(this page)
		fast game
		much many more better GUI details
		add EXTRA level of survivor mode
		adjust difficulty of Tech mode
		compressed setting/data
		support 10% step alpha of virtual key
		many code optimized&bugs fixed

0.7.21: Title Update
		new title image
		more GUI details
		many bugs fixed

0.7.20: Music Room Update
		add music room
		change block/space apperance in draw mode
		field shake animation
		default sets of custom options
		can set BG/BGM in custom mode
		bug fixed

0.7.19: Voice Update
		voice system added(voice by Miya)
		support macOS!
		new mode: C4W training
		rendering of royale mode optimized again
		add "free cell" in draw mode
		add 2 new block skins
		new difficulty in infinite mode
		new background/sound effect in master mode
		bug fixed

0.7.18: Skin Update
		3 new block skins!(one skin origional by Miya(nya~))
		better restarting(to prevent mistakenly touching)
		switch display of puzzle mode
		adjust UI
		code optimized
		default custom options changed to as infinite mode

0.7.17: Pause Update
		display game stats when pause
		more options in statistics
		better pausing
		adjust difficulty of Tech mode
		adjust difficulty of PC training mode
		adjust vibrate level for mobile devices
		little optimized
		bugs fixed

0.7.16: Game Detail Update
		change rules of custom puzzle mode
		change rules of TSD mode
		better pausing
		speed optimized
		adjust difficulty of dig mode
		bugs fixed

0.7.15: Puzzle Update
		can make puzzle by drawing mode
		can pause game with animation
		change icon of "Functional key"
		speed optimized
		bugs fixed

0.7.14: Creativity Update
		drawing mode in custom game
		adjustable virtual keys with mouse
		speed optimized
		rotate also create shade

0.7.13+: Small Update
		change difficulty of survivor mode
		little game rule change
		bugs fixed(AI control error)

0.7.13:
		new:
				Chinese game name: 方块研究所
				SUPER COOL instant moving effect
				new b2b bar style & animation
				new transition animation
		changed:
				change difficulty of master mode
				adjust delay algorithm(probably cause controlfeel changing, please reset your DAS setting)
				code reconstructed
				debug key change to F8
		fixed:
				error when sequence mode is his
				error game area size of custom opponent

0.7.12: Global Update
		AI learned to switch attack mode
		seperate master mode from marathon mode
		master mode more interesting
		countdown line in sprint mode
		smooth BGM swapping
		new garbage buffer
		new harddrop&lock SFX feel
		a bit change of rotate system
		grid switch
		swap target by combo key/press
		some Chinese translaton editted
		[reconstruct event system]

0.7.11: Global Update
		some Chinese translaton editted
		add bone block in 2 hardest marathon(new block-fresh system)
		play sound when get badges in royale mode
		change b2b indicator display method
		more difficulty of blind mode
		colorful garbage lines
		clearer attacking pointer
		fix 6 next in classic mode
		add QR code in help page
		change some detials

0.7.10: Small Update
		full Chinese translation
		add Classic mode
		change O spin's behaviour
		bugs fixed

0.7.9: O-spin Update
		O spin is a lie
		better attacking pointer
		language system
		change rotate system
		change BGM&BG set
		code optimized
		bugs fixed

0.7.8: Performance Update
		GPU usage decreased much more than before
		add virtual key animation
		display player's rank after death in royale mode
		fix sequence error of PC training mode
		adjust difficulty of suvivor mode
		code optimized
		bugs fixed

0.7.7: Mode Update
		add dig mode
		add survivor mode
		combine some modes
		change some GUI
		more SFXs
		bugs fixed

0.7.6: Mode Update
		new font
		add DIFFICULTY selection
		virtual keys give visual feedback(PC/phone)
		add vibration
		add default set of visual keys
		add tech mode
		add drought mode
		better GUI&change speed&BGM in royale mode
		more FXs in royale mode
		fix all attacking bug of royale mode
		change sequence of TSD-only mode to bag7

0.7.5: Global Update
		reduce difficuly of PC training mode, and add more patterns
		reduce difficuly of death mode
		add PC challenge mode
		swapping attack mode for royale mode(AI always use 'Random')
		royale mode use less GPU
		new GUI of royale mode
		add intro scene
		soft scene swapping
		adjust other details
		change game icon
		adjust GUI of royale mode
		change sequence of TSD-only mode
		royale mode use LESS GPU

0.7.4: Bug Update
		add a lot of bugs

0.7.3: Game Detail Update
		add infinite target in custom
		fix TSD-only mode result+1 when finishing with a wrong clear
		change sequence generator of TSD-only mode
		GUI position editted
		Fix Screen flow
		smarter AI

0.7.2: Mode Update
		add PC training mode
		add TSD-only mode
		remove non-sense s/z spin double
		GUI position editted
		grid BG changed
		smarter AI
]=],"\n")