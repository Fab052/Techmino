local C=COLOR
return {
    fallback='en',
    loadText={
        loadSFX="効果音をロード中",
        loadSample="楽器のサンプル音をロード中",
        loadVoice="ボイスパックをロード中",
        loadFont="フォントをロード中",
        loadModeIcon="モードアイコンをロード中",
        loadMode="モードをロード中",
        loadOther="他の重要なアセット等をロード中",
        finish="好きなキーを押してスタート!",
    },
    sureQuit="終了するにはもう一度押してください!",
    sureReset="リセットするにはもう一度押してください!",
    sureDelete="削除するにはもう一度押してください!",
    newDay="新しい1日の始まりです!",
    playedLong="長時間プレイしています、適度な休憩を",
    playedTooMuch="長時間プレイしています! Techminoは楽しいですが、休憩を忘れずに!",
    settingWarn="使用頻度の少ない設定を変更しています。注意してください。",
    settingWarn2="この設定は再起動後に適用されます",

    atkModeName={"ランダム","バッジ狙い","トドメ撃ち","カウンター"},
    royale_remain="残り $1 人",
    powerUp={[0]="+000%","+025%","+050%","+075%","+100%"},
    cmb={nil,"1 REN","2 REN","3 REN","4 REN","5 REN","6 REN","7 REN","8 REN","9 REN","10 REN!","11 REN!","12 REN!","13 REN!","14 REN!!","15 REN!!","16 REN!!","17 REN!!!","18 REN!!!","19 REN!!!","MEGAREN"},
    spin="-spin ",
    spinNC="-spin",
    clear={"Single","Double","Triple","Techrash","Pentacrash","Hexacrash","Heptacrash","Octacrash","Nonacrash","Decacrash","Undecacrash","Dodecacrash","Tridecacrash","Tetradecacrash","Pentadecacrash","Hexadecacrash","Heptadecacrash","Octadecacrash","Nonadecacrash","Ultracrash","Impossicrash"},
    cleared="$1 Lines",
    mini="Mini",b2b="B2B ",b3b="B2B2B ",
    PC="Perfect Clear",HPC="Half-Perfect Clear",
    replaying="[Replay]",
    tasUsing="[TAS]",

    stage="ステージ $1 クリア!",
    great="GREAT",
    awesome="AWESOME!!",
    almost="もう少し……",
    continue="まだ行ける!",
    maxspeed="最高速度!",
    speedup="スピードアップ!",
    missionFailed="ミッション失敗",
    infHeightOn="高度無限!",
    infHeightOff="高度制限あり",
    infHeightHint="“ファンクション 1”キー",
    highestGrade="(最高ランク: $1)",

    speedLV="レベル",
    piece="ミノ数",line="line数",atk="火力",eff="効率",
    rpm="RPM",tsd="TSD",
    grade="Grade",techrash="Techrash",
    wave="Wave",nextWave="Next",
    combo="REN",maxcmb="Max REN",
    pc="Perfect Clear",ko="KOs",

    win="Win!",
    lose="Lose",
    torikan="Ended",
    finish="Finished!",
    gamewin="You Win!",
    gameover="Game Over",

    pause="ポーズ",
    pauseCount="ポーズ回数",
    finesse_ap="All Perfect",
    finesse_fc="Full Combo",

    page="ページ:",

    ai_puzzle="AIはパズルゲームモードに非対応です!",
    ai_mission="AIはカスタムミッションに非対応です!",
    ai_badPiece="AIは通常のテトロミノ以外やミノ順指定に非対応です!",
    cc_fixed="CCはミノ順の指定に非対応です!",
    cc_swap="CCはホールドモード、Swapに非対応です!",
    cc_solid="CCはLineが揃っている盤面に非対応です!",
    cc_field_too_high="CCは高さ40以上の盤面に非対応です!",
    switchSpawnSFX="ブロック出現時の効果音をONにしてください!",
    needRestart="すべての変更を適用する為にリスタートしてください!",

    loadError_errorMode="'$1'の読み込みに失敗: ロードモード'$2'が存在しません",
    loadError_read="'$1'の読み込みに失敗: 読み込みに失敗しました",
    loadError_noFile="'$1'の読み込みに失敗: ファイルが存在しません",
    loadError_other="'$1'の読み込みに失敗: $2",
    loadError_unknown="'$1'の読み込みに失敗: 原因不明",

    saveError_duplicate="'$1'の保存に失敗: 既に同じ名前のファイルがあります",
    saveError_encode="'$1'の保存に失敗: エンコードエラー",
    saveError_other="'$1'の保存に失敗: $2",
    saveError_unknown="'$1'の保存に失敗: 原因不明です",

    copyDone="コピーしました!",
    saveDone="データを保存しました!",
    exportSuccess="書き出し成功!",
    importSuccess="読み取り成功!",
    dataCorrupted="データが破損してます",
    pasteWrongPlace="貼り付ける位置を間違っていませんか?",
    noFile="ファイルが見つかりません",
    invalidSequence="無効な出現法則です",
    tooHighField="フィールドの高さは126段までです",

    nowPlaying="再生中:",

    VKTchW="タッチ感度",
    VKOrgW="オリジナル感度",
    VKCurW="現在の配置",

    noScore="スコア無し",
    modeLocked="未開放",
    unlockHint="前のステージでBランク以上を取得すると解放されます!",
    highScore="最高記録",
    newRecord="新記録!",

    replayBroken="リプレイが読み込めませんでした",

    dictNote="==TetroDictionaryからコピーしました==",



    -- Server's warn/error messages
    Techrater={
        internalError="内部エラー",
        databaseError="データベースエラー",
        invalidFormat="非対応の形式です",
        invalidArguments="無効な引数です",
        tooFrequent="リクエストが多すぎます",
        notAvailable="無効なリクエスト",
        noPermission="権限がありません",
        roomNotFound="部屋が見つかりません",

        -- Controllers
        WebSocket={
            invalidConnection="接続されていません",
            invalidAction="無効な操作",
            playerNotFound="プレイヤーが見つかりませんでした",
            connectionFailed="接続失敗",
        },
        -- Filters
        CheckPermission={
            playerNotFound="プレイヤーが見つかりませんでした",
        },
        -- Plugins
        ConnectionManager={
            playerInvalid="無効なプレイヤー",
            playerNotFound="プレイヤーが見つかりませんでした",
            connectionReplaced="接続切替",
        },
        NoticeManager={
            noticeNotFound="通知はありません",
        },
        PlayerManager={
            invalidCode="無効なコード",
            invalidEmail="無効なEメールアドレス",
            playerNotFound="プレイヤーが見つかりませんでした",
            invalidEmailPass="Eメールアドレスもしくはパスワードが違います",
            emailExists="Eメールアドレスは存在します",
            emailSendError="送信できませんでした",
        },
        -- Strategies
        PlayerRole={
            invalidRole="無効なロールです",
            invalidTarget="無効なターゲットです",
        },
        PlayerType={
            invalidType="無効なタイプです",
            roomFull="部屋がいっぱいです",
        },
        RoomJoin={
            wrongPassword="パスワードが違います",
        },
    },

    tooFrequent="リクエストが多すぎます",
    roomPasswordChanged="部屋のパスワードを変更しました",
    oldVersion="バージョン$1のダウンロードが可能になりました",
    versionNotMatch="バージョンが一致しません",
    notFinished="未完成です、ご期待ください",

    noUsername="ユーザーネームを入力してください!",
    wrongEmail="メールアドレスが無効です!",
    wrongCode="認証コードが違います",
    noPassword="パスワードを入力してください!",
    diffPassword="パスワードが一致しません!",
    checkEmail="Sign Upリクエストを送信しました!",

    wsFailed="ウェブソケットとの通信に失敗しました: $1",
    wsClose="ウェブソケットとの通信を終了: $1",
    netTimeout="接続がタイムアウトしました",
    serverDown="あー、サーバーが落ちています...",
    requestFailed="リクエスト失敗",

    onlinePlayerCount="オンライン人数: $1",
    createRoomSuccessed="部屋を建てました",
    playerKicked="$1 は、$2 を部屋から追放しました",
    becomeHost="$1 がホストになりました",
    started="プレイ中",
    joinRoom="$1 が入室しました",
    leaveRoom="$1 が退出しました",
    roomRemoved="部屋が解散しました",
    ready="準備OK",
    spectating="観戦中",



    keySettingInstruction="選択してキーを入力\nEscape: キャンセル\nBackspace: キーを削除",
    customBGhelp="背景にする画像ファイルをドロップ",
    customBGloadFailed="非対応のファイル形式です",

    errorMsg="問題が発生! ゲームを再起動し、エラーログを開発者に送ってください",
    tryAnotherBuild="[Invalid UTF-8]使用しているOSがMicrosoft WindowsであればTechmino-win32かTechmino-win64をダウンロードしてください! (現在使用しているソフトは違うバージョンです)",

    modInstruction="Modを選択してください!\nModはゲームルールを変えられますが正常にプレイできなくなる可能性があります\nModを使用した場合、スコアは保存されません",
    modInfo={
        next="NEXT\nNEXTの個数を変更します",
        hold="HOLD\nHOLDの個数を変更します",
        hideNext="Hidden NEXT\n指定した数だけNEXTを隠します",
        infHold="InfiniHold\nHOLDできる回数を無限にします",
        hideBlock="Hide Current Piece:\n現在出現しているピースを隠します",
        hideGhost="No Ghost\nゴーストを消します",
        hidden="Hide Locked Pieces\n設置されたピースが時間内に見えなくなります",
        hideBoard="Hide Board\n盤面の一部もしくは、全体を隠します",
        flipBoard="Flip Board\n盤面が回転もしくは、滑ります",
        dropDelay="Gravity\n落下速度をフレーム単位で変更します",
        lockDelay="Lock Delay\n設置猶予をフレーム単位で変更します",
        waitDelay="Spawn Delay\nブロックの出現猶予をフレーム単位で変更します",
        fallDelay="Line Clear Delay\nLine消去時間をフレーム単位で変更します",
        life="Life\n残機数を変更します",
        forceB2B="B2B Only\nB2Bが途切れるとゲームオーバーです",
        forceFinesse="Finesse Only\n最適化を失敗するとゲームオーバーです",
        tele="Teleport\nDAS: 0, ARR: 0になります",
        noRotation="No Rotation\n回転出来なくなります",
        noMove="No Movement\n左右移動が出来なくなります",
        customSeq="Randomizer\nミノの出現法則を変更します",
        pushSpeed="Garbage Speed\n下穴がせり上がるまでに置けるブロック数を変更します (ブロック数/フレーム)",
        boneBlock="[ ]\n骨ブロックで遊ぼう",
    },
    pauseStat={
        "時間:",
        "入力数/回転数/ホールド数:",
        "ミノ数:",
        "line数/掘line:",
        "火力数/掘火力:",
        "受けたline数:",
        "line消去数:",
        "スピン:",
        "B2B/B3B/PC/HPC:",
        "最適化:",
    },
    radar={"DEF","OFF","ATK","SEND","SPD","DIG"},
    radarData={"DPM","ADPM","APM","SPM","L'PM","DPM"},
    stat={
        "起動回数:",
        "プレイ回数:",
        "プレイ時間:",
        "入力数/回転数/ホールド数:",
        "ミノ数/line数/火力数:",
        "送られたline数/相殺/受け:",
        "掘line/掘火力:",
        "効率/掘の効率:",
        "B2B数/B3B数:",
        "PC数/HPC数:",
        "最適化ミス数/率:",
    },
    aboutTexts={
        "これは“ただの”落ちものパズルゲームです。本当ですよ",
        "C2/IO/JS/WWC/KOS等からアイデアを得ました",
        "",
        "powered by LÖVE",
        "ご意見、ご感想、バグ報告など、全て大歓迎です!",
        "ゲームは、必ず公式から入手してください",
        "他から入手した場合は、安全性を保証しません",
        "Techminoは振動とインターネット接続の許可しか求めません",
        "また制作者は、責任を負いません",
        FNNS and "/" or "ゲームは無料ですが寄付してくださると嬉しいです!",
        FNNS and "/" or "詳しくはZictionaryをご覧ください",
    },
    staff={
        "制作者: “MrZ”",
        "Eメール: “1046101471@qq.com”",
        "",
        "プログラム、開発、デザイン",
        "MrZ",
        "",
        "楽曲作成ツール",
        "Beepbox",
        "FL Studio",
        "FL Mobile",
        "Logic Pro X",
        "",
        "[LÖVE]搭載",
        "",
        "プログラミング",
        "MrZ",
        "ParticleG",
        "Gompyn",
        "Trebor",
        "(scdhh)",
        "(FinnTenzor)",
        "(NOT_A_ROBOT)",
        "(user670)",
        "",
        "GitHub CI、パッケージングとバックエンド",
        "ParticleG",
        "Trebor",
        "LawrenceLiu",
        "Gompyn",
        "flaribbit",
        "scdhh",
        "",
        "ビジュアルデザイン、UIとUX",
        "MrZ",
        "Gnyar",
        "C₂₉H₂₅N₃O₅",
        "ScF",
        "(旋律星萤)",
        "(T0722)",
        "",
        "イラスト",
        "Miya",
        "Mono",
        "Xiaoya",
        "葉枭",
        "",
        "ミュージカルデザイン",
        "MrZ",
        "柒栎流星",
        "ERM",
        "Trebor",
        "C₂₉H₂₅N₃O₅",
        "(T0722)",
        "(Aether)",
        "(Hailey)",
        "",
        "効果音とボイスパック",
        "Miya",
        "Xiaoya",
        "Mono",
        "Flore",
        "MrZ",
        "Trebor",
        "",
        "翻訳とローカリゼーション",
        "User670",
        "MattMayuga",
        "Mizu",
        "Mr.Faq",
        "ScF",
        "C₂₉H₂₅N₃O₅",
        "NOT_A_ROBOT",
        "XMiao",
        "sakurw, Airun, 幽灵3383",
        "Shard Nguyễn, Squishy, TVN community",
        "",
        "パフォーマンス",
        "Electric283",
        "Hebomai",
        "",
        "Special Thanks",
        "Flyz",
        "Big_True",
        "NOT_A_ROBOT",
        "思竣",
        "yuhao7370",
        "Farter",
        "Teatube",
        "蕴空之灵",
        "T9972",
        "No-Usernam8",
        "andrew4043",
        "smdbs-smdbs",
        "paoho",
        "Allustrate",
        "Haoran SUN",
        "Tianling Lyu",
        "huaji2369",
        "Lexitik",
        "Tourahi Anime",
        "PopUpWaffles",
        "[All other test staff]",
        "…And You!",
    },
    used=[[
    Tools used:
        BeepBox
        GoldWave
        GFIE
        FL Mobile
    Libs used:
        Cold_Clear [MinusKelvin]
        json.lua [rxi]
        profile.lua [itraykov]
        sha2 [Egor Skriptunoff]
    ]],
    support="制作者を支援する",
    dict={
        sizeChanged="フォントサイズ: $1",
        sizeReset="フォントサイズ: 25",
        helpText=
[[
Zictionaryの使い方

Zictionaryはテトリス(と落ちものパズルゲーム)についての様々な情報が載っている辞書のようなものです

TetroDictionary下の検索バーに単語を入れると該当する用語が表示されます
該当用語が0件の場合、すべての用語が表示されます
希望する単語で欲しい用語が検索できない場合、Githubのページから編集できます
“翻訳者からのメッセージ 1”にあるリンクからアクセスしてください

Zictionaryの操作方法

A. マウス/タッチ操作
        - 左欄の項目をタッチ/クリックすると表示されます
        - [$14]でテキストをクリップボードにコピーします
        - [$15]で設定されているURLにアクセスします

B. キーボード
        - [F1]でヘルプを表示
        - [$1]または、[$2]でテキストをスクロール
        - [$3]または、[$4]で項目をスクロール([Ctrl]を押しながらだとスクロールが速くなります)
        - [-]または、[+]でフォントサイズ変更
        - [0]でフォントサイズをリセット(デフォルト:25)
        - [Ctrl + C]でテキストをクリップボードにコピー
        - [$16] (Context Menu key/Application key)で設定されているURLにアクセス

C. ゲームパッド
        - $10でヘルプを表示
        - $5または、$6でテキストをスクロール
        - $7または、$8で項目をスクロール($11を押しながらだとスクロールが速くなります)
        - $11を押しながら$6または、$5でフォントサイズ変更
]]
        -- 1-4: Up, Down, Left, Right
        -- 5-8: Up, Down, Left, Right but D-Pad
        -- 9-12: X, Y, A, B
        -- 13-18: Help, Copy, Open, Forward, Backward, MENU
        -- 13-16: Help, Copy, Open, MENU
    },
    WidgetText={
        main={
            offline="ソロプレイ",
            qplay="続きから: ",
            online="マルチプレイ",
            custom="カスタムプレイ",
            setting="設定",
            stat="統計",
            dict="Zictionary",
            replays="リプレイ",
        },
        main_simple={
            sprint="スプリント",
            marathon="マラソン",
        },
        mode={
            mod="Mods (F1)",
            start="スタート",
        },
        mod={
            title="Mods",
            reset="リセット (tab)",
            unranked="記録不可",
        },
        pause={
            setting="設定 (S)",
            replay="リプレイ (P)",
            save="保存 (O)",
            resume="再開 (esc)",
            restart="リスタート (R)",
            quit="終了 (Q)",
            tas="TAS (T)",
        },
        net_menu={
            league="テクリーグ",
            ffa="FFA",
            rooms="ルーム",
            resetPW="パスワード再設定",
            logout="ログアウト",
        },
        net_league={
            match="対戦相手を探す",
        },
        net_rooms={
            password="パスワード",
            refreshing="探索中…",
            noRoom="部屋が存在しません",
            refresh="更新",
            new="部屋を建てる",
            join="参加",
        },
        net_newRoom={
            title="部屋設定",
            roomName="部屋名 (デフォルト名: \"[username]'s room\")",
            password="パスワード",
            description="部屋の説明",

            life="残機数",
            pushSpeed="迫り上がり速度",
            garbageSpeed="迫り上がり猶予",
            visible="ミノの視認性",
            freshLimit="設置時間のリセット回数",

            fieldH="盤面の高さ",
            bufferLimit="ダメージの保持上限",
            heightLimit="致死ラインの高さ",

            drop="自然落下時間",
            lock="設置時間",
            wait="操作硬直時間",
            fall="line消去時間",
            hang="死後硬直時間",
            hurry="AREキャンセル時間",

            capacity="試合人数",
            create="作成",

            ospin="TRS O-spin",
            fineKill="最適化のみ",
            b2bKill="B2B継続",
            lockout="盤面外設置禁止",
            easyFresh="通常の設置時間リセット",
            deepDrop="ディープドロップ",
            bone="骨ブロック",

            eventSet="ルール設定",

            holdMode="ホールド設定",
            nextCount="ネクスト数",
            holdCount="ホールド数",
            infHold="無限ホールド",
            phyHold="その場ホールド",
        },
        net_game={
            ready="準備OK",
            spectate="観戦",
            cancel="キャンセル",
        },
        setting_game={
            title="ゲームの設定",
            graphic="←画面",
            sound="音声→",
            style="スタイル",

            ctrl="チューニング",
            key="キーコンフィグ",
            touch="タッチ設定",
            showVK="入力キーの可視化",
            reTime="開始カウント",
            RS="回転法則",
            menuPos="メニューの位置",
            sysCursor="システムカーソル",
            autoPause="ゲーム中断時のオートポーズ",
            autoSave="最高記録を更新時にオートセーブ",
            simpMode="シンプルなホーム",
        },
        setting_video={
            title="画面の設定",
            sound="←音声",
            game="ゲーム→",

            block="操作ブロックの描画",
            smooth="滑らかな自然落下",
            upEdge="3D Block",
            bagLine="7-Bagの境界線",

            ghostType="ゴーストタイプ",
            ghost="ゴースト",
            center="ブロック中心の透明度",
            grid="グリッド",
            lineNum="行番号",

            lockFX="設置演出",
            dropFX="落下演出",
            moveFX="左右移動演出",
            clearFX="line消去演出",
            splashFX="消去時の弾ける演出",
            shakeFX="盤面移動演出",
            atkFX="攻撃演出",

            frame="レンダリングフレームレート(%)",

            text="line消去ポップ",
            score="スコアポップ",
            bufferWarn="ダメージアラート",
            showSpike="スパイクカウンター",
            nextPos="出現位置のプレビュー",
            highCam="画面のスクロール",
            warn="警告演出",

            clickFX="クリック演出",
            power="バッテリー",
            clean="描画処理の最適化",
            fullscreen="フルスクリーン",
            portrait="縦画面",
            msaa="アンチエイリアス(MSAA)レベル",

            bg_on="通常背景",
            bg_off="背景なし ",
            bg_custom="カスタム背景",

            blockSatur="ブロックデザイン",
            fieldSatur="設置ブロックデザイン",
        },
        setting_sound={
            title="音声の設定",

            game="←ゲーム",
            graphic="画面→",

            mainVol="主音量",
            bgm="音楽",
            sfx="効果音",
            stereo="ステレオ",
            spawn="ブロックの出現音",
            warn="警告音",
            vib="振動",
            voc="ボイス",

            autoMute="ゲーム中断時のオートミュート",
            fine="最適化失敗音",
            sfxPack="効果音パック",
            vocPack="ボイスパック",
            apply="適用",
        },
        setting_control={
            title="チューニング設定",
            preview="preview",

            das="DAS",arr="ARR",
            dascut="DASカット",
            dropcut="自動設置カット",
            sddas="ソフトドロップDAS",sdarr="ソフトドロップARR",
            ihs="先行ホールド",
            irs="先行回転",
            ims="先行移動",
            reset="リセット",
        },
        setting_key={
            a1="左移動",
            a2="右移動",
            a3="右回転",
            a4="左回転",
            a5="180°回転",
            a6="ハードドロップ",
            a7="ソフトドロップ",
            a8="ホールド",
            a9="ファンクション 1",
            a10="ファンクション 2",
            a11="即左移動",
            a12="即右移動",
            a13="ソニックドロップ",
            a14="落下移動 1",
            a15="落下移動 4",
            a16="落下移動 10",
            a17="左端ハードドロップ",
            a18="右端ハードドロップ",
            a19="左ザンギ",
            a20="右ザンギ",
            restart="リトライ",
        },
        setting_skin={
            skinSet="ミノのスキン",
            title="スタイル設定",
            skinR="色をリセット",
            faceR="方向をリセット",
        },
        setting_touch={
            default="デフォルト",
            snap="グリッドにスナップ",
            size="サイズ",
            shape="シェイプ",
        },
        setting_touchSwitch={
            b1= "左移動:",    b2="右移動:", b3="右回転:",  b4="左回転:",
            b5= "180°回転:",  b6="ハードドロップ:",  b7="ソフトドロップ:",      b8="ホールド:",
            b9= "ファンクション 1:",    b10="ファンクション 2:", b11="即左移動:", b12="即右移動:",
            b13="ソニックドロップ:",   b14="下1移動:",    b15="下4移動:",       b16="下10移動:",
            b17="左ドロップ:",    b18="右ドロップ:",b19="左ザンギ:",   b20="右ザンギ:",

            norm="ノーマル",
            pro="アドバンス",
            icon="アイコン",
            sfx="効果音",
            vib="振動",
            alpha="Alpha",

            track="オートトラック",
            dodge="オートドッチ",
        },
        customGame={
            title="カスタムプレイ",
            defSeq="通常のミノ順",
            noMsn="ミッションなし",

            drop="自然落下時間",
            lock="設置時間",
            wait="操作硬直時間",
            fall="line消去時間",
            hang="死後硬直時間",
            hurry="AREキャンセル時間",

            bg="背景",
            bgm="音楽",

            copy="盤面+ミノ順+ミッションをコピー",
            paste="盤面+ミノ順+ミッションを貼り付け",
            play_clear="スタート",
            play_puzzle="パズルをスタート",

            reset="リセット (del)",
            advance="More (A)",
            mod="Mods (F1)",
            field="盤面編集 (F)",
            sequence="ミノ順編集 (S)",
            mission="ミッション編集 (M)",

            eventSet="ルール設定",

            holdMode="ホールド設定",
            nextCount="ネクスト数",
            holdCount="ホールド数",
            infHold="無限ホールド",
            phyHold="その場ホールド",

            fieldH="盤面の高さ",
            visible="設置ミノの視認性",
            freshLimit="設置時間のリセット回数",
            opponent="相手",
            life="残機数",
            pushSpeed="迫り上がり速度",
            garbageSpeed="迫り上がり猶予",

            bufferLimit="ダメージの保持上限",
            heightLimit="致死ラインの高さ",
            ospin="TRS O-spin",
            fineKill="最適化のみ",
            b2bKill="B2B継続",
            lockout="盤面外設置禁止",
            easyFresh="通常の設置時間リセット",
            deepDrop="ディープドロップ",
            bone="骨ブロック",
        },
        custom_field={
            title="カスタムプレイ",
            subTitle="盤面",

            any="消しゴム",
            smart="自動着色",

            push="迫り上がり (K)",
            del="Line消去 (L)",

            demo="×を非表示",

            newPg="ページ追加 (N)",
            delPg="ページ削除 (M)",
            prevPg="←",
            nextPg="→",
        },
        custom_sequence={
            title="カスタムプレイ",
            subTitle="ミノ順",
            sequence="巡法則",
        },
        custom_mission={
            title="カスタムプレイ",
            subTitle="ミッション",

            _1="1",_2="2",_3="3",_4="4",
            any1="any1",any2="any2",any3="any3",any4="any4",
            PC="PC",
            Z1="Z1",S1="S1",J1="J1",L1="L1",T1="T1",O1="O1",I1="I1",
            Z2="Z2",S2="S2",J2="J2",L2="L2",T2="T2",O2="O2",I2="I2",
            Z3="Z3",S3="S3",J3="J3",L3="L3",T3="T3",O3="O3",I3="I3",
            O4="O4",I4="I4",
            mission="ミッションを強制",
        },
        about={
            staff="スタッフ",
            his="更新情報",
            legals="法的情報",
        },
        dict={
            title="TetroDictionary",
        },
        stat={
            path="データフォルダ読み込み",
            save="データ管理",
        },
        music={
            title="ミュージックルーム",
            arrow="→",
            now="再生中:",

            bgm="音楽",
            sound="効果音",
        },
        launchpad={
            title="ミュージックルーム",
            bgm="音楽",
            sfx="効果音",
            voc="ボイス",
            music="曲",
            label="ラベル",
        },
        logi={
            title="サインイン",
            ticket="認証チケット",
            authorize="認証ページにアクセス",
            paste="認証チケット貼り付け",
            submit="送信",
        },
        reset_password={
            title="パスワード再設定",
            send="認証コード送信",
            code="認証コード",
            password="パスワード",
            password2="パスワード（確認）",
            setPW="パスワード設定",
        },
        account={
            title="アカウント",
        },
        app_15p={
            color="色",
            invis="インビジブル",
            slide="スライド",
            pathVis="ポインター",
            revKB="逆順",
        },
        app_schulteG={
            rank="サイズ",
            invis="インビジブル",
            disappear="済消去",
            tapFX="効果音",
        },
        app_AtoZ={
            level="レベル",
            keyboard="キーボード",
        },
        app_2048={
            invis="インビジブル",
            tapControl="タッチ操作",

            skip="スキップ",
        },
        app_ten={
            next="Next",
            invis="インビジブル",
            fast="高速落下",
        },
        app_dtw={
            color="色",
            mode="モード",
            bgm="BGM",
            arcade="アーケード",
        },
        app_link={
            invis="インビジブル",
        },
        savedata={
            export="クリップボードにコピー",
            import="クリップボードからインポート",
            unlock="進捗",
            data="統計",
            setting="設定",
            vk="仮想キーレイアウト",

            couldSave="クラウドに保存 (注意:テスト段階)",
            notLogin="[クラウドにアクセス中]",
            upload="アップロード",
            download="ダウンロード",
        },
    },
    modes={
        ['sprint_10l']=          {"スプリント",            "10L",           "10line消せ!"},
        ['sprint_20l']=          {"スプリント",            "20L",           "20line消せ!"},
        ['sprint_40l']=          {"スプリント",            "40L",           "40line消せ!"},
        ['sprint_100l']=         {"スプリント",            "100L",          "100line消せ!"},
        ['sprint_400l']=         {"スプリント",            "400L",          "400line消せ!"},
        ['sprint_1000l']=        {"スプリント",            "1,000L",        "1,000line消せ!"},
        ['sprintPenta']=         {"スプリント",            "PENTOMINO",     "ペントミノで40line"},
        ['sprintMPH']=           {"スプリント",            "MPH",           "ミノ順なし\nネクストなし\nホールドなし!"},
        ['sprint123']=           {"スプリント",            "M123",          "モノミノ、ドミノ、トリミノで40line"},
        ['construct_sg']=        {"アート",               "裏GM",              "ガイドに従ってジグザグに穴を作れ!"},
        ['construct_checker']=   {"アート",              "市松模様",   "Build a checkerboard pattern!"},
        ['construct_invsg']=     {"アート",             "反転裏GM",        "Build an inverted zigzag pattern!"},
        ['dig_10l']=             {"掘り",                 "10L",           "10line下穴を掘れ!"},
        ['dig_40l']=             {"掘り",                 "40L",           "40line下穴を掘れ!"},
        ['dig_100l']=            {"掘り",                 "100L",          "100line下穴を掘れ!"},
        ['dig_400l']=            {"掘り",                 "400L",          "400line下穴を掘れ!"},
        ['dig_eff_10l']=         {"掘り",               "EFFICIENCY 10L", "少ないミノで10line掘れ!"},
        ['dig_eff_40l']=         {"掘り",               "EFFICIENCY 40L", "少ないミノで40line掘れ!"},
        ['dig_eff_100l']=        {"掘り",               "EFFICIENCY 100L","少ないミノで100line掘れ!"},
        ['dig_eff_400l']=        {"掘り",               "EFFICIENCY 400L","少ないミノで400line掘れ!"},
        ['dig_quad_10l']=        {"掘り",               "TECHRASH 10L",   "techrashだけで10line下穴を掘れ!"},
        ['drought_n']=           {"ドラウト",             "100L",          "Iミノ禁止!"},
        ['drought_l']=           {"ドラウト+",            "100L",          "WTF!!!"},
        ['marathon_n']=          {"マラソン",             "NORMAL",        "加速する中で200lineマラソン!"},
        ['marathon_h']=          {"マラソン",             "HARD",          "ハイスピード200lineマラソン!"},
        ['solo_e']=              {"バトル",               "EASY",          "低レベルAIに勝て!"},
        ['solo_n']=              {"バトル",               "NORMAL",        "通常レベルAIに勝て!"},
        ['solo_h']=              {"バトル",               "HARD",          "高レベルAIに勝て!"},
        ['solo_l']=              {"バトル",               "LUNATIC",       "プロレベルAIに勝て!"},
        ['solo_u']=              {"バトル",               "ULTIMATE",      "神レベルAIに勝て!"},
        ['techmino49_e']=        {"テック VS 49",            "EASY",          "49人対戦\n最後まで生き残れ!"},
        ['techmino49_h']=        {"テック VS 49",            "HARD",          "49人対戦\n最後まで生き残れ!"},
        ['techmino49_u']=        {"テック VS 49",            "ULTIMATE",      "49人対戦\n最後まで生き残れ!"},
        ['techmino99_e']=        {"テック VS 99",            "EASY",          "99人対戦\n最後まで生き残れ!"},
        ['techmino99_h']=        {"テック VS 99",            "HARD",          "99人対戦\n最後まで生き残れ!"},
        ['techmino99_u']=        {"テック VS 99",            "ULTIMATE",      "99人対戦\n最後まで生き残れ!"},
        ['round_e']=             {"ターン制",             "EASY",          "低レベルAIとターン制バトル!"},
        ['round_n']=             {"ターン制",             "NORMAL",        "通常レベルAIとターン制バトル!"},
        ['round_h']=             {"ターン制",             "HARD",          "高レベルAIとターン制バトル!"},
        ['round_l']=             {"ターン制",             "LUNATIC",       "プロレベルAIとターン制バトル!"},
        ['round_u']=             {"ターン制",             "ULTIMATE",      "神レベルAIとターン制バトル!"},
        ['big_n']=               {"ビッグ",               "NORMAL",        "5×10の盤面でプレイ!"},
        ['big_h']=               {"ビッグ",               "HARD",          "5×10の盤面でプレイ!"},
        ['master_n']=            {"マスター",             "NORMAL",        "初心者のための20G"},
        ['master_h']=            {"マスター",             "HARD",          "中級者のための20G"},
        ['master_m']=            {"マスター",             "M21",           "上級者のための20G"},
        ['master_final']=        {"マスター",             "FINAL",         "20G その先へ"},
        ['master_ph']=           {"マスター",             "PHANTASM",      "???"},
        ['master_g']=            {"マスター",             "GRADED",        "最高段位を取れ!"},
        ['master_ex']=           {"グランドマスター",      "EXTRA",         "一瞬にも満たない永遠"},
        ['master_instinct']=     {"マスター",             "INSTINCT",      "もしミノが見えなくなったら?"},
        ['strategy_e']=          {"ストラテジー",          "EASY",          "20Gでの素早い判断"},
        ['strategy_h']=          {"ストラテジー",          "HARD",          "20Gでの素早い判断"},
        ['strategy_u']=          {"ストラテジー",          "ULTIMATE",      "20Gでの素早い判断"},
        ['strategy_e_plus']=     {"ストラテジー",          "EASY+",         "20Gでの素早い判断"},
        ['strategy_h_plus']=     {"ストラテジー",          "HARD+",         "20Gでの素早い判断"},
        ['strategy_u_plus']=     {"ストラテジー",          "ULTIMATE+",     "20Gでの素早い判断"},
        ['blind_e']=             {"インビジブル",          "HALF",          "初心者用"},
        ['blind_n']=             {"インビジブル",          "ALL",           "中級者用"},
        ['blind_h']=             {"インビジブル",          "SUDDEN",        "上級者用"},
        ['blind_l']=             {"インビジブル",          "SUDDEN+",       "プロフェッショナル用"},
        ['blind_u']=             {"インビジブル",          "?",             "覚悟は良いかい?"},
        ['blind_wtf']=           {"インビジブル",          "WTF",           "まだ覚悟が足りない"},
        ['classic_e']=           {"クラシック",            "EASY",          "低速ゲーム(1980年版)"},
        ['classic_h']=           {"クラシック",            "HARD",          "中速ゲーム(1980年版)"},
        ['classic_l']=           {"クラシック",            "LUNATIC",       "高速ゲーム(1980年版)"},
        ['classic_u']=           {"クラシック",            "ULTIMATE",      "超高速ゲーム(1980年版)"},
        ['survivor_e']=          {"サバイバル",            "EASY",          "どれだけ生き残れるかな?"},
        ['survivor_n']=          {"サバイバル",            "NORMAL",        "どれだけ生き残れるかな?"},
        ['survivor_h']=          {"サバイバル",            "HARD",          "どれだけ生き残れるかな?"},
        ['survivor_l']=          {"サバイバル",            "LUNATIC",       "どれだけ生き残れるかな?"},
        ['survivor_u']=          {"サバイバル",            "ULTIMATE",      "どれだけ生き残れるかな?"},
        ['attacker_h']=          {"火力王",                "HARD",          "攻撃力を磨け!"},
        ['attacker_u']=          {"火力王",                "ULTIMATE",      "攻撃力を磨け!"},
        ['defender_n']=          {"相殺王",                "NORMAL",        "防御力を磨け!"},
        ['defender_l']=          {"相殺王",                "LUNATIC",       "防御力を磨け!"},
        ['dig_h']=               {"掘王",                  "HARD",          "掘りを磨け"},
        ['dig_u']=               {"掘王",                  "ULTIMATE",      "掘りを磨け"},
        ['c4wtrain_n']=          {"C4Wトレーニング",       "NORMAL",     "無限中開け"},
        ['c4wtrain_l']=          {"C4Wトレーニング",       "LUNATIC",    "無限中開け"},
        ['pctrain_n']=           {"パフェトレーニング",     "NORMAL",     "パフェの練習!"},
        ['pctrain_l']=           {"パフェトレーニング",     "LUNATIC",    "もっと難しいパフェの練習!"},
        ['pc_n']=                {"パフェチャレンジ",       "NORMAL",     "100Line以内で パフェをたくさん取れ!"},
        ['pc_h']=                {"パフェチャレンジ",       "HARD",       "100Line以内で パフェをたくさん取れ!"},
        ['pc_l']=                {"パフェチャレンジ",       "LUNATIC",    "100Line以内で パフェをたくさん取れ!"},
        ['pc_inf']=              {"無限パフェチャレンジ",   "",           "たくさんのパフェを取れ!"},
        ['tech_n']=              {"テクニック B2B",          "NORMAL",         "B2Bを繋げ続けよう!"},
        ['tech_n_plus']=         {"テクニック B2B",          "NORMAL+",        "回転入れとパフェだけ!"},
        ['tech_h']=              {"テクニック B2B",          "HARD",           "B2Bを繋げ続けよう!"},
        ['tech_h_plus']=         {"テクニック B2B",          "HARD+",          "回転入れとパフェだけ!"},
        ['tech_l']=              {"テクニック B2B",          "LUNATIC",        "B2Bを繋げ続けよう!"},
        ['tech_l_plus']=         {"テクニック B2B",          "LUNATIC+",       "回転入れとパフェだけ!"},
        ['tech_finesse']=        {"テクニック 最適化",      "",               "最適化!"},
        ['tech_finesse_f']=      {"テクニック 最適化",      "PLUS",           "通常Line消去抜きで最適化!"},
        ['tech_finesse_lock']=   {"テクニック 最適化",      "LOCK",           "限られた入力数で最適化!"},
        ['tech_finesse_lock_f']= {"テクニック 最適化",      "LOCK PLUS",  "限られた入力数で最適化!\nついでに通常Line消去も禁止!"},
        ['tsd_e']=               {"TSDチャレンジ",         "EASY",       "TSDだけ!"},
        ['tsd_h']=               {"TSDチャレンジ",         "HARD",       "TSDだけ!"},
        ['tsd_u']=               {"TSDチャレンジ",         "ULTIMATE",   "TSDだけ!"},
        ['backfire_n']=          {"バックファイヤー",      "NORMAL",     "撃った火力が戻ってくる!"},
        ['backfire_h']=          {"バックファイヤー",      "HARD",       "撃った火力が戻ってくる!"},
        ['backfire_l']=          {"バックファイヤー",      "LUNATIC",    "撃った火力が戻ってくる!"},
        ['backfire_u']=          {"バックファイヤー",      "ULTIMATE",   "撃った火力が戻ってくる!"},
        ['sprintAtk']=           {"スプリント",           "100 Attack", "100line送れ!"},
        ['sprintEff']=           {"スプリント",           "Efficiency", "40lineの間に高火力を出せ!"},
        ['zen']=                 {'zen',                 "200",        "時間制限なしで200line消去"},
        ['ultra']=               {'ウルトラ',             "EXTRA",      "2分間でスコアアタック"},
        ['infinite']=            {"無限",                 "",          "サンドボックス"},
        ['infinite_dig']=        {"無限: 掘り",           "",          "掘れ掘れ掘れ掘れ掘れ掘・・・"},
        ['marathon_inf']=        {"マラソン",             "INFINITE",  "ずっと走れるね"},

        ['custom_clear']=        {"カスタム",              "NORMAL"},
        ['custom_puzzle']=       {"カスタム",              "PUZZLE"},
    },
getTip={refuseCopy=true,
        ":pog:",
        "(RUR'U')R'FR2U'R'U'(RUR'F')",
        "“Techmino.app”は、開発元を検証できないためあけません。",
        "“Techmino.app”を開くとコンピュータが破損します。ゴミ箱に入れる必要があります。",
        "\"TechminOS\"",
        "\\jezevec/\\jezevec/\\jezevec/",
        "\\osk/\\osk/\\osk/",
        "↑↑↓↓←→←→BA",
        "$include<studio.h>",
        "0next 0hold.",
        "100Line以内に23PC?",
        "1next 0hold",
        "1next 1hold!",
        "1next 6hold!",
        "20Gは全く新しい種類のゲームルールです!",
        "20PCって何?",
        "26TSDって何?",
        "2つの回転を使ってみよう、3つ使うとさらにいいです!",
        "40-line Sprint WR: 14.188s by Lurny",
        "6next 1hold!",
        "6next 6hold?!",
        "低音を響かせろ!",
        "低いフレームレートほど重く感じます",
        "複数のHoldを使ってみよう!",
        "回転がブロックにどう作用しているか気づいたかい?",
        "回転なしで40 Lineを完走できる?",
        "今、B2B2Bを見なかったかい?",
        "今日も全力で頑張ってください!",
        "今日も一日がんばるぞい!",
        "警告: プログラマーアート",
        "君もGrand Masterだ!",
        "良いプレイには時間がかかります!",
        "全部で18種類のペントミノがあります",
        "全部で7種類のテトリミノがあります",
        "設定でキーコンフィグを変えられます!",
        "設定を確認しましょう!",
        "世界中の友達や敵ともうすぐ対戦できます!",
        "心の中には確かにM@STERPIECEがあります!",
        "素晴らしい! しかし次はもっと良くなる……",
        "統計からセーブフォルダを開くことができます!",
        "偉大なシステムが間もなく実装されます!",
        "現代的で親しみやすいこの積みを使いこなしてるかい?",
        "小さな不具合で一日を無駄にしないように!",
        "一人用モードを遊ぼう!",
        "音楽が煩わしい? 無音にすることができます",
        "英語のアプデ情報はDiscordで見られます",
        "左右移動なしで40 Lineを完走できる?",
        "ALL SPIN!",
        "Am G F G",
        "B2B2B???",
        "B2B2B2Bなんて存在するの?",
        "B2B2B2Bは存在しません",
        "B2B2B2Bは可能?",
        "Back-to-Back Techrash, 10 REN, PC!",
        "テトリスHPC->PCは犯罪です",
        "ぐわー何をするくぁwせdrftgyふじこlp",
        "音楽や効果音の制作に協力いただける方は大歓迎です!",
        "ここに流れるネタも募集中です!",
        "Bridge Clearが間もなく実装されます!",
        "Color Clearが間もなく実装されます!",
        "DASとARRを低くすると、速くなるけど操作が難しくなる!",
        "Hello World!",
        "先行[移動/回転/ホールド]は君を救うだろう",
        "I3とL3の2つだけはユニークなトリミノだ",
        "l-=-1",
        "LrL RlR LLr RRl RRR LLL FFF RfR RRf rFF",
        "Lua最高!",
        "Mix Clearは間もなく実装されます!",
        "Nspire-CXのTechmino: 存在はしますが同じゲームではありません",
        "O-Spin Triple!",
        "OHHHHHHHHHHHHHH",
        "Powered by LÖVE",
        "Powered by Un... LÖVE",
        "Rank Xの条件は、上級者でも難しくなるように設定されています",
        "Split Clearが間もなく実装されます!",
        "sudo rm -rf /*",
        "Techmino rotation system(TRS)を楽しんで!",
        "Techmino楽しい!",
        "TechminoのDiscord鯖に入りましょう!",
        "Techminoは\"Technique\"と\"Tetromino\"を掛け合わせ造語です!",
        "Techminoプレイヤーの未来はあなた達のものです!",
        "TetroDictionary is now available in English.",
        "TetroDictionaryの日本語版もあります",
        " while (false)",
        "ZS JL T O I",
        "ゲーム内にはモード選択マップからじゃ入れない隠しモードがいくつかあります!",
        "このゲームでは全てのSpinに火力補正があります!",
        "テクミノのAll spin気持ちよすぎだろ!!",
        "このゲームのほとんどの楽曲はBeepboxを用いて作曲されました!",
        "サーバーが不規則に落ちます",
        "スタッフロールの背景に流れている名前はスポンサーの名前です!",
        "タブレットやスマホでもキーボードを接続できます!(iOSにはそんな機能ないと思うけど)",
        "なにかアイデアがありますか? Discordで提案してください!",
        "何だこの安っぽいUIと音楽……呆れた",
        "何? バグを見つけた? GitHubのIssueに報告しよう!",
        "バグを直接見ないで!",
        "バトルロワイアルモード実装! 無料で遊べる落ちものパズルゲーム!",
        "ピースごとに出現する方向を変えられます!",
        "フレームレートを上げればより快適に!",
        "ヘッドフォンを付ければより快適に!",
        "ほとんどのメニューアイコンはUnicode PUAにある自作Glyphsを用いて作られています!",
        "マルチプレイで遊ぼう! 衝撃を受けるでしょう!!",
        "メニューをシンプルモードにした場合、イースターエッグがなくなります",
        "ローディング中! シーンチェンジの間だけじゃないです!",
        "Zのおすすめ[01]東方原作ゲームをやってみよう!",
        "Zのおすすめ[02]マイクラをやってみよう!",
        "Zのおすすめ[03]Osu!をやってみよう!",
        "Zのおすすめ[04]Quatrackをやってみよう!",
        "Zのおすすめ[05]テラリアをやってみよう!",
        "Zのおすすめ[06]Celesteをやってみよう!",
        "Zのおすすめ[07]グーの惑星をやってみよう!",
        "Zのおすすめ[08]Orzmicをやってみよう!",
        "Zのおすすめ[09]ぷよぷよをやってみよう!",
        "Zのおすすめ[10]Phigrosをやってみよう!",
        "Zのおすすめ[11]VVVVVVをやってみよう!",
        "Zのおすすめ[12]Ballanceをやってみよう!",
        "Zのおすすめ[13]Zumaをやってみよう!",
        "Zのおすすめ[14]ルービックキューブをやってみよう!",
        "Zのおすすめ[15]15puzzleをやってみよう!",
        "Zのおすすめ[16]マインスイーパーをやってみよう!",
        {C.H,"REGRET!!"},
        {C.lP,"Secret Number: 626"},
        {C.lR,"Z ",C.lG,"S ",C.lS,"J ",C.lO,"L ",C.lP,"T ",C.lY,"O ",C.lC,"I"},
        {C.lY,"COOL!!"},
        {C.N,"Lua",C.Z," No.1"},
        {C.P,"T-spin!"},
        {C.R,"\"知的財産権関連法\""},
        {C.R,"\"DMCA濫用\""},
        {C.R,"DD",C.Z," 砲=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"D",C.Z," 砲"},
        {C.R,"DT",C.Z," 砲=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"T",C.Z," 砲"},
        {C.R,"DKS",C.Z,"=",C.P,"TS",C.R,"T",C.Z,"+",C.R,"DT",C.Z," 砲"},
        {C.R,"LrL ",C.G,"RlR ",C.B,"LLr ",C.O,"RRl ",C.P,"RRR ",C.P,"LLL ",C.C,"FFF ",C.Y,"RfR ",C.Y,"RRf ",C.Y,"rFF"},
        {C.Y,"O-Spin Triple!"},
        {C.Z,"なんだって? ",C.lC,"X-Spin?"},
    },
    pumpkin="やあ、かぼちゃんだよ!",
}
