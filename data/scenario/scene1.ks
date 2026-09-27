[_tb_system_call storage=system/_scene1.ks]

*start

[tb_start_tyrano_code]
[hidemenubutton]
[_tb_end_tyrano_code]

[cm  ]
[tb_image_show  time="1000"  storage="default/1/CharaStudio-2026-09-21-18-41-44-Render.jpg"  width="1280"  height="720"  x=""  y=""  _clickable_img=""  name="img_2"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
「やっと、この時が来た。やっと、柏木くんに触ってもらえる……💗」[p]
「柏木くんってば……私達が誘っても全然返事してくれないんだもん。柏木くんの初めてを捧げて、これからは死ぬまで柏木くんに尽くしていくつもりなのに……」[p]
「私らの気持ち、分かる？　何時間も必死で考えたメッセージを無視される気持ち……」[p]
「しかも、エッチのお誘いのメッセージだよ。つい最近まで男の人と手すら繋いだこと無い私たちが、顔真っ赤にしながら柏木くんを誘ったのに、酷いよ……」[p]
「でも、しょうがないのかな。この学園で男子は柏木くん一人だけなんだから」[p]
「1000人以上の学生が在籍する学園で、柏木くんだけが男子の状況……」[p]
「しかも、可愛くて格好良くて優しくて。そりゃ、他の女子が放っておかないもんね」[p]
「ううん、放っておかないなんてもんじゃないよね。毎日ずっとずっと、数えきれない人数の女子から、ひっきりなしに迫られてるんでしょ？」[p]
「知ってるよ。昨日は、バレー部の部室で、女バレの部員全員とエッチしてたよね？」[p]
「みんな部室のドアに集まって、聞き耳を立ててたんだから。お楽しみ中の音声だって共有されてるからね？」[p]
「一昨日はバスケ部、その前は水泳部。授業中だって常に四方の女子とお楽しみしてるとか、なんとか」[p]
「正直、隅っこの存在の私達じゃ出番なんて無いよね」[p]
「無い……と思ってたけど、やっぱり柏木くん優しい。こうして、返事してくれた……」[p]
「ねえ、いっぱい触って？　柏木くん今日も数えきれないくらいセックスしててヘトヘトでしょ？」[p]
「タッチしてくれるだけで良いから。それだけで……私達は幸せだから💗」[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
*skinship_loop

[iscript]
// 1. 各種変数の初期化（初回のみ）
if (typeof f.s_index === 'undefined') { f.s_index = 0; }
if (typeof f.s_count === 'undefined') { f.s_count = 0; }
if (typeof f.s_target === 'undefined') { f.s_target = Math.floor(Math.random() * 2) + 5; }
if (typeof f.s_gauge === 'undefined') { f.s_gauge = 0; }

// 2. セリフの配列定義
const texts = [
"「あぁああぁあああっ……💗 ワイシャツの上から胸を触られるだけでイッちゃう……💗」",
"「みんなの柏木くんが……いまだけ。私達だけを相手にしてくれてるなんて幸せ💗 柏木くんを2人で独占だよぉ💗」",
"「少し触れられただけで……スカートの中がびしょびしょですう……」",
"「んっ……もっとたくさん、触ってください、ませんか……？」",
"「あっ、そこ……なんだか変な感じがする……///」",
"「キスもして……？ キスなら、何回しても疲れないでしょ？」",
"「あぁあ、好きな人とキスするだけで蕩けちゃう💗 ごめん、こんな時なのに、オナニー、したくなっちゃう……」",
"「あぅ……声が出ちゃう……っ、自分の部屋で柏木くんの写真でオナニーする時より1000倍気持ち良いですうう💗」",
"「ひゃああぁあっ……あ,あああっ、あっ……💗」",
"「そこ、弱いんだから……意地悪しないで……っ💗 あぁあああ、イッちゃう、イッちゃう、イッちゃう……」",
"「ううう、柏木くん、1日に数えきれない女子とエッチしてて大変ですよね。男の人って、射精に限りがあるって聞いたことあるけど……」",
"「でも……ごめんなさい、私達もセックスしたいんですぅ💗 みんなと同じく。私達も柏木くんのおちんちん、挿入れてほしいんです💗」",
"「……セックスしてくれたら、なんでもしますからぁ。ああ、他の、柏木くんに迷惑かける女子と同じになっちゃううう……💗」"
];

tf.current_text = texts[f.s_index];

// 3. ゲージUIが未生成の場合のみ新規作成、既存なら値を即時同期（ちらつき防止）
if ($("#skinship_gauge_container").length === 0) {
    const $gauge =$(
        '<div id="skinship_gauge_container" style="position:absolute; top:20px; right:20px; width:270px; padding:14px 18px; background:linear-gradient(135deg, rgba(15,5,20,0.7), rgba(30,10,25,0.55)); backdrop-filter:blur(14px); -webkit-backdrop-filter:blur(14px); border:1px solid rgba(255,120,180,0.35); border-radius:14px; z-index:999998; box-shadow: 0 6px 24px rgba(0,0,0,0.45), 0 0 20px rgba(255,80,150,0.25); font-family: \'Segoe UI\', sans-serif;">' +
        '<div style="position:absolute; top:0; left:0; width:14px; height:14px; border-top:2px solid #ff5fa8; border-left:2px solid #ff5fa8; border-radius:14px 0 0 0;"></div>' +
        '<div style="position:absolute; bottom:0; right:0; width:14px; height:14px; border-bottom:2px solid #ff5fa8; border-right:2px solid #ff5fa8; border-radius:0 0 14px 0;"></div>' +
        '<div style="display:flex; justify-content:space-between; align-items:baseline; margin-bottom:10px;">' +
        '<span id="skinship_gauge_title" style="font-size:12px; font-weight:700; letter-spacing:4px; color:#ffd6ea; text-shadow:0 0 6px rgba(255,150,200,0.6);">多幸感</span>' +
        '<span id="skinship_gauge_percent" style="font-family:\'Consolas\',\'Courier New\',monospace; font-size:20px; font-weight:800; color:#ffd6ea;">0<span style="font-size:12px;">%</span></span>' +
        '</div>' +
        '<div style="width:100%; height:8px; background:rgba(255,255,255,0.08); border-radius:6px; overflow:hidden; box-shadow: inset 0 1px 4px rgba(0,0,0,0.5);">' +
        '<div id="skinship_gauge_fill" style="height:100%; width:0%; border-radius:6px; background:linear-gradient(90deg, #ff9ecb, #ff2f7a); background-size:200% 100%;"></div>' +
        '</div>' +
        '</div>'
    );
    $("#tyrano_base").append($gauge);
}

if ($("#gauge_shimmer_style").length === 0) {
    $('head').append(
        '<style id="gauge_shimmer_style">' +
        '@keyframes gauge_shimmer_anim { 0% { background-position: 0% 0; } 100% { background-position: 200% 0; } }' +
        '@keyframes gauge_pulse_anim { 0%,100% { transform: scale(1); } 50% { transform: scale(1.015); } }' +
        '#skinship_gauge_fill { animation: gauge_shimmer_anim 1.3s linear infinite; }' +
        '</style>'
    );
}

window._updateSkinshipGauge = function(percent) {
    const t = Math.min(Math.max(percent, 0), 100) / 100;
    const r = 255;
    const g = Math.round(158 * (1 - t));
    const b = Math.round(203 - 133 * t);
    const color = `rgb(${r},${g},${b})`;
    const glow = 6 + t * 22;

    $("#skinship_gauge_fill").css("width", percent + "%");
    $("#skinship_gauge_percent").html(percent + '<span style="font-size:12px;">%</span>');
    $("#skinship_gauge_percent").css({ "color": color, "text-shadow": `0 0 ${glow}px ${color}` });
    $("#skinship_gauge_title").css({ "color": color, "text-shadow": `0 0 ${glow * 0.6}px ${color}` });
    $("#skinship_gauge_container").css({
        "border-color": color,
        "box-shadow": `0 6px 24px rgba(0,0,0,0.45), 0 0 ${glow + 10}px rgba(${r},${g},${b},0.55)`,
        "animation": `gauge_pulse_anim ${Math.max(0.5, 1.1 - t * 0.6)}s ease-in-out infinite`
    });
};

// 現在の進捗を即時反映
window._updateSkinshipGauge(f.s_gauge);
[endscript]

; --- 4. 進行度に応じた画像の表示 ---
[if exp="f.s_index <= 3"]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-42-56-Render.jpg" width="1280" height="720"]
[elsif exp="f.s_index <= 7"]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-44-25-Render.jpg" width="1280" height="720"]
[elsif exp="f.s_index <= 10"]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-45-15-Render.jpg" width="1280" height="720"]
[else]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-45-53-Render.jpg" width="1280" height="720"]
[endif]

; --- 5. セリフの描画 ---
[er]
#ヒロイン
[emb exp="tf.current_text"]

; --- 6. クリックイベント（未登録時のみバインド） ---
[iscript]
if (!window._skinship_bound) {
    window._skinship_bound = true;

    $(".message_outer, .message_inner").css("pointer-events", "none");

    let heartSeq = 0;
    const MAX_HEARTS = 120;
    const HEART_ICONS = ["💗"];

    $("#tyrano_base").on("click.skinship_effect", (e) => {
        const rect = e.currentTarget.getBoundingClientRect();
        const x = e.clientX - rect.left;
        const y = e.clientY - rect.top;

        f.s_count++;
        f.s_gauge = Math.min(f.s_gauge + 1, 100);
        window._updateSkinshipGauge(f.s_gauge);

        // ゲージMAX到達 → 完全にクリーンアップして *next1 へジャンプ
        if (f.s_gauge >= 100) {
            $("#tyrano_base").off("click.skinship_effect");
            $(".message_outer, .message_inner").css("pointer-events", "auto");
            window._skinship_bound = false;
            $("#skinship_gauge_container").remove();

            TYRANO.kag.ftag.startTag("jump", {
                storage: "scene1.ks",
                target: "*next1"
            });
            return;
        }

        const progressRatio = f.s_count / f.s_target;
        const intensity = progressRatio > 0.7 ? 6 : 2;
        const rx = (Math.random() - 0.5) * intensity * 2;
        const ry = (Math.random() - 0.5) * intensity * 2;

        const $imgTarget =$("#tyrano_base img").not(".message_outer img, .message_inner img, #skinship_gauge_container img");
        if ($imgTarget.length > 0) {$imgTarget.css("transform", `translate(${rx}px, ${ry}px)`);
            setTimeout(() => {
                $imgTarget.css("transform", "translate(0px, 0px)");
            }, 120);
        }

        const currentHeartCount = $("#tyrano_base > .skinship-heart").length;
        const spawnCount = Math.min(
            Math.floor(Math.random() * 4) + 2,
            Math.max(0, MAX_HEARTS - currentHeartCount)
        );

        for (let i = 0; i < spawnCount; i++) {
            const rx = x + (Math.random() * 320 - 160);
            const ry = y + (Math.random() * 320 - 160);
            const size = Math.floor(Math.random() * 24) + 24;
            const rotate = Math.floor(Math.random() * 120) - 60;
            const icon = HEART_ICONS[Math.floor(Math.random() * HEART_ICONS.length)];

            const uid = `heart_${heartSeq++}`;
            const $heart =$(`<div id="${uid}" class="skinship-heart" style="position:absolute; left:${rx}px; top:${ry}px; font-size:${size}px; opacity:0; transform: scale(0.3) rotate(${rotate}deg); transition: all 1.4s cubic-bezier(0.1, 0.8, 0.3, 1); pointer-events:none; z-index:999999; text-shadow: 0 0 8px rgba(255,150,200,0.8);">${icon}</div>`);

            $("#tyrano_base").append($heart);

            requestAnimationFrame(() => {
                const moveX = (Math.random() * 280) - 140;
                const moveY = -(Math.floor(Math.random() * 200) + 120);
                $heart.css({
                    "transform": `translate(${moveX}px, ${moveY}px) scale(1.5) rotate(${rotate * 1.5}deg)`,
                    "opacity": "1"
                });
            });

            setTimeout(() => $heart.css("opacity", "0"), 900);
            setTimeout(() => $heart.remove(), 1500);
        }

        if (f.s_count >= f.s_target) {
            f.s_count = 0;
            f.s_target = Math.floor(Math.random() * 5) + 3;
            f.s_index++;

            $("#tyrano_base").off("click.skinship_effect");
            $(".message_outer, .message_inner").css("pointer-events", "auto");
            window._skinship_bound = false;

            if (f.s_index > 12) {
                f.s_index = 0;
                $("#skinship_gauge_container").remove();
                TYRANO.kag.ftag.startTag("jump", {
                    storage: "scene1.ks",
                    target: "*next1"
                });
            } else {
                TYRANO.kag.ftag.startTag("jump", {
                    storage: "scene1.ks",
                    target: "*skinship_loop"
                });
            }
        }
    });
}
[endscript]

[s]
[_tb_end_tyrano_code]

[s  ]
*next1

[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[cm  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
・・・・・・[p]
・・・・・・・・・・・・[p]
・・・・・・・・・・・・・・・・・・[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/1/b02.jpg"  width="1279"  height="719"  x=""  y=""  _clickable_img=""  name="img_16"  ]
[tb_start_text mode=1 ]
コイカツ学園とは、幼少から大学までエスカレーター式になっている完全な箱庭学園だった。[p]
全寮制。更に学園長から教師、用務員まで全員が女性で構成されているという。[p]
幼少期からコイカツ学園に閉じ込められている所為で、家族以外の異性と一度も話したことが無い女子も多かった。[p]
ここに通う全員が恋愛未経験者。処女。恋に恋する女で溢れていた。[p]
そんな中で、突如として現れた初めての異性、柏木くん。[p]
恋に恋する、性欲に欲情する女たちは、さぞ気が気じゃなかった話だろう。[p]
転入初日にして、コイカツ学園に通う1000人以上の女子……その殆んどが柏木くんに恋をして、発情する事態となった。[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/1/CharaStudio-2022-01-25-18-15-05-Render.jpg"  width="1280"  height="720"  x=""  y=""  _clickable_img=""  name="img_18"  ]
[tb_start_text mode=1 ]
お陰で、転入して瞬く間に、見事に柏木くんは100人以上の女子と肉体関係を持つこととなった。[p]
柏木くんも、最初は楽しかった。幸せだった。[p]
この学園に入るまでは、大人しい性格の柏木くんも恋愛未経験者だったのに、一転して怒涛の如くハーレムへと溺れられたのだから。[p]
しかし、箱庭で異性が1人だけという極めて特殊な環境が如何なるものなのか、柏木くんはイマイチよく理解していなかった。[p]
柏木くんにとっては目移りも甚だしい、1000人以上の恋愛対象者に対して、女子には柏木くんしか居ないのだ。[p]
柏木くんと肉体関係に及んだ女子は、柏木くんに激しく依存するようになり……日に日に想いはエスカレートしていった。[p]
誰もが毎日のようにセックスを求める。当然、全員を隈なく相手に出来るような人数じゃない。[p]
そうなると、手持ち無沙汰の女子達は次第に蟠りを募らせて、嫉妬を燃やすようになり……[p]
[_tb_end_text]

[tb_image_show  time="1000"  storage="default/1/d11.jpg"  width="1280"  height="720"  x=""  y=""  _clickable_img=""  name="img_20"  ]
[tb_start_text mode=1 ]
負の感情が爆発した時、もはや所構わず柏木くんを拉致、そして怒りを清算させるようになっていく。[p]
大勢の女子が結託して、一斉に柏木くんを逆レイプ。逆レイプ、逆レイプ、逆レイプ、逆レイプ、逆レイプ……[p]
その図式が出来上がった時、これまで異性の顔色ばかり窺って生きてきた柏木くんは心底震えるのだった。[p]
早朝から大勢の女子とセックス。授業中も周りの女子と性行為に及び、休み時間になれば女子トイレで順番待ち。[p]
放課後が本番であり、決められた女子グループ、部活動へと顔を出して毎日順繰り相手をすることになっている。[p]
夜更けも絶え間なく射精を繰り返して、それは柏木くんが気絶しても変わらない。朝まで続くエンドレスである。[p]
文字通り24時間。フルに時間を使っても、せいぜい50人程度しか相手に出来ないのだ。[p]

[_tb_end_text]

[tb_image_show  time="1000"  storage="default/1/d6.jpg"  width="1280"  height="720"  x=""  y=""  _clickable_img=""  name="img_22"  ]
[tb_start_text mode=1 ]
だから、手持ち無沙汰の残り50人が嫉妬して、このような制裁が下される……[p]
それの繰り返し。[p]
まだ肉体関係に及べていない900人の女子達も、滾々とチャンスを窺っていることを考えると、もう柏木くんに安らぎなんて有り得なかった。[p]
100人でさえ捌き切れないのに。この愛人関係が更に膨らんだら……と思うと、恐怖せざるを得なかった。[p]
[_tb_end_text]

[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[tb_start_tyrano_code]
*custom_loop

[iscript]
// 1. 変数の初期化（初回のみ多幸感の初期値を70に設定）
if (typeof f.cs_step === 'undefined') { f.cs_step = 0; }
if (typeof f.cs_clicks === 'undefined') { f.cs_clicks = 0; }
if (typeof f.cs_limit === 'undefined') { f.cs_limit = Math.floor(Math.random() * 5) + 3; }
if (typeof f.cs_lock === 'undefined') { f.cs_lock = false; }
if (typeof f.cs_percent === 'undefined') { f.cs_percent = 70; }

// 2. セリフデータの定義
window.cs_scriptLines = [
"「あぁああぁあああっ……💗 結局セックスを求めちゃう私達を嫌わないで下さいぃいッ……💗」",
"「柏木くん、毎日何十人の女子とエッチしてて、疲れ切ってるのにッ、ごめんなさいいいッ、ああぁああああッ💗」",
"「私達だけは……私だけは、柏木くんを気遣える女子で居たかった、のにいっ……あぁああああああああッ!!!!」",
"「柏木くんのこと、好きすぎて……柏木くんに触られたら、理性なんて無くなっちゃうからあッ!!!!」",
"「ふあぁああんっ、ひゃああぁあっ、柏木くんの、その、挿入れられただけで漏れちゃうっ……恥ずかしいですう……」",
"「んはああああっ、あぁああっ、ひゃああぁああっ、あぁああああああっ!!!!」",
"「あぁあ、幸せ過ぎる、幸せ過ぎる、幸せ過ぎる……こんなんじゃ、依存しちゃう。柏木くんから離れられないよォ!!!!」",
"「あぅ……ごめんなさい、ごめんなさい、ごめんなさい。もっと激しく突いてええええええッ!!!!!!💗」",
"「ひゃああぁあっ💗 あがああああっ、ううううっ……潮……止まらない……こんなに漏れちゃって……」",
"「……っ💗 あぁあああ、イッちゃう、イッちゃう、イッちゃう……止まらないのおおおおっ!!!!」",
"「ううう、私……柏木くん一色に染まっちゃってる……柏木くんじゃないとイケないカラダになっちゃってる……」",
"「大好き……大好きです……💗　誰よりも。世界一、愛してます……」",
"「…………💗」"
];

// 3. ゲージUIの生成（初回のみ）
if ($("#cs_gauge_box").length === 0) {
if ($("#cs_fever_style").length === 0) {
$('<style id="cs_fever_style">' +
'@keyframes csFeverPulse {' +
'  0% { box-shadow: 0 0 10px rgba(255,215,0,0.6), inset 0 0 5px rgba(255,255,255,0.4); border-color: rgba(255,215,0,0.9); transform: scale(1); }' +
'  50% { box-shadow: 0 0 25px rgba(255,69,0,0.9), inset 0 0 12px rgba(255,215,0,0.8); border-color: rgba(255,69,0,1); transform: scale(1.02); }' +
'  100% { box-shadow: 0 0 10px rgba(255,215,0,0.6), inset 0 0 5px rgba(255,255,255,0.4); border-color: rgba(255,215,0,0.9); transform: scale(1); }' +
'}' +
'@keyframes csBarFever {' +
'  0% { filter: brightness(1); }' +
'  50% { filter: brightness(1.4); }' +
'  100% { filter: brightness(1); }' +
'}' +
'.cs-fever-mode { animation: csFeverPulse 1.2s infinite ease-in-out !important; background: linear-gradient(135deg, rgba(40,10,10,0.9), rgba(60,20,10,0.8)) !important; }' +
'.cs-bar-fever { animation: csBarFever 0.8s infinite ease-in-out !important; background: linear-gradient(90deg, #ffaa00, #ff2200, #ffdd00) !important; background-size: 200% 100%; }' +
'</style>'
).appendTo('head');
}

const isFever = (f.cs_percent >= 100);
const boxClass = isFever ? 'cs-fever-mode' : '';
const barClass = isFever ? 'cs-bar-fever' : '';
const barBg = isFever ? '' : 'background:linear-gradient(90deg, #ff88cc, #ff1a66);';
const labelColor = isFever ? '#ffdd44' : '#ffcce6';

const $box =$(
'<div id="cs_gauge_box" class="' + boxClass + '" style="position:absolute; top:20px; right:20px; width:270px; padding:14px 18px; background:linear-gradient(135deg, rgba(20,5,25,0.8), rgba(40,10,30,0.6)); backdrop-filter:blur(10px); border:1px solid rgba(255,100,160,0.4); border-radius:12px; z-index:999998; font-family:sans-serif; pointer-events:none; transition: all 0.5s ease;">' +
'<div style="display:flex; justify-content:space-between; align-items:baseline; margin-bottom:8px;">' +
'<span id="cs_gauge_label" style="font-size:11px; font-weight:bold; letter-spacing:3px; color:' + labelColor + ';">' + (isFever ? '🔥 狂喜乱舞' : '多幸感') + '</span>' +
'<span id="cs_gauge_num" style="font-size:18px; font-weight:bold; color:' + labelColor + ';">' + f.cs_percent + '%</span>' +
'</div>' +
'<div style="width:100%; height:8px; background:rgba(255,255,255,0.1); border-radius:4px; overflow:hidden;">' +
'<div id="cs_gauge_bar" class="' + barClass + '" style="width:' + f.cs_percent + '%; height:100%; ' + barBg + ' border-radius:4px; transition: width 0.3s ease;"></div>' +
'</div>' +
'</div>'
);
$("#tyrano_base").append($box);
}

window.refreshCsGauge = function(val) {
const v = Math.min(Math.max(val, 0), 100);
const $box =$("#cs_gauge_box");
const $bar =$("#cs_gauge_bar");
const $num =$("#cs_gauge_num");
const $lbl =$("#cs_gauge_label");

$bar.css("width", v + "%");
$num.text(v + "%");

if (v >= 100) {
if (!$box.hasClass("cs-fever-mode")) {
$box.addClass("cs-fever-mode");
$bar.addClass("cs-bar-fever").css("background", "");
$lbl.text("🔥 狂喜乱舞(イキ地獄)").css("color", "#ffdd44");
$num.css("color", "#ffdd44");
}
} else {
$box.removeClass("cs-fever-mode");
$bar.removeClass("cs-bar-fever").css("background", "linear-gradient(90deg, #ff88cc, #ff1a66)");
$lbl.text("多幸感").css("color", "#ffcce6");
$num.css("color", "#ffcce6");
}
};

window.refreshCsGauge(f.cs_percent);
[endscript]

; --- 5. 進行度に応じた画像の表示 ---
[if exp="f.cs_step <= 7"]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-25-10-08-17-Render.jpg" width="1280" height="720"]
[else]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-25-10-09-47-Render.jpg" width="1280" height="720"]
[endif]
; ※上記画像のファイルパスは元の設定のままにしておりますので、適宜書き換えてください

; --- 6. セリフの描画 ---
[er]
#ヒロイン
[emb exp="window.cs_scriptLines[f.cs_step]"]

; --- 7. クリック＆ループ制御システム ---
[iscript]
$(".message_outer, .message_inner").css("pointer-events", "none");

$("#cs_click_overlay").remove();
$("#tyrano_base").off("click.cs_system");

const $overlay =$(
'<div id="cs_click_overlay" style="position:absolute; top:0; left:0; width:100%; height:100%; z-index:999997; cursor:pointer; background:transparent;"></div>'
);
$("#tyrano_base").append($overlay);

f.cs_lock = false;

$overlay.on("click.cs_system", (e) => {
if (f.cs_lock) return;

e.stopPropagation();
e.stopImmediatePropagation();
e.preventDefault();

const rect = e.currentTarget.getBoundingClientRect();
const px = e.clientX - rect.left;
const py = e.clientY - rect.top;

// 【変更】1クリックにつき、パーセンテージを2%ずつ増加（最大100でストップ）
if (f.cs_percent < 100) {
f.cs_percent = Math.min(f.cs_percent + 2, 100);
}
window.refreshCsGauge(f.cs_percent);

f.cs_clicks++;

// 揺れ演出
const isMax = (f.cs_percent >= 100);
const rate = f.cs_clicks / f.cs_limit;
const offset = isMax ? 7 : (rate > 0.7 ? 5 : 2);
const shiftX = (Math.random() - 0.5) * offset * 2;
const shiftY = (Math.random() - 0.5) * offset * 2;
const $targetImgs =$("#tyrano_base img").not(".message_outer img, .message_inner img, #cs_gauge_box img");
if ($targetImgs.length > 0) {$targetImgs.css("transform", `translate(${shiftX}px, ${shiftY}px)`);
setTimeout(() => { $targetImgs.css("transform", "translate(0px, 0px)"); }, 100);
}

// ハート演出
const heartCount = isMax ? 5 : 3;
for (let i = 0; i < heartCount; i++) {
const hx = px + (Math.random() * 300 - 150);
const hy = py + (Math.random() * 300 - 150);
const hChar = isMax ? '💖' : '💗';
const $h =$(
'<div class="cs-heart" style="position:absolute; left:' + hx + 'px; top:' + hy + 'px; font-size:' + (isMax ? '32px' : '26px') + '; opacity:0; transform:scale(0.3); transition:all 1.2s ease-out; pointer-events:none; z-index:999999;">' + hChar + '</div>'
);
$("#tyrano_base").append($h);

requestAnimationFrame(() => {
const moveX = (Math.random() * 240) - 120;
const moveY = -(Math.floor(Math.random() * 180) + 120);
$h.css({
"transform": `translate(${moveX}px, ${moveY}px) scale(1.6)`,
"opacity": "1"
});
});
setTimeout(() => $h.remove(), 1200);
}

// セリフを次の行へ進める判定（規定回数クリックに達したら次のセリフへ）
if (f.cs_clicks >= f.cs_limit) {
f.cs_clicks = 0;
f.cs_limit = Math.floor(Math.random() * 5) + 3;
f.cs_lock = true;

$overlay.off("click.cs_system");
$overlay.remove();$(".message_outer, .message_inner").css("pointer-events", "auto");
$(".cs-heart", "#cs_gauge_box").remove();

const limitTotal = window.cs_scriptLines.length;
const isLastStep = (f.cs_step >= limitTotal - 1);

// すでに最後のセリフで、かつゲージが100%に到達している場合のみ *next_scene へジャンプ
if (isLastStep && f.cs_percent >= 100) {
setTimeout(() => {
TYRANO.kag.ftag.startTag("jump", {
storage: "scene1.ks",
target: "*next_scene"
});
}, 30);
} else {
// まだ最後のセリフに達していなければ次のセリフへ
if (!isLastStep) {
f.cs_step++;
}
setTimeout(() => {
TYRANO.kag.ftag.startTag("jump", {
storage: "scene1.ks",
target: "*custom_loop"
});
}, 30);
}
}
});
[endscript]

[s]
[_tb_end_tyrano_code]

[s  ]
*next_scene

[tb_start_tyrano_code]
[iscript]
// 念のためここでも確実にゲージとスタイルを削除
$("#cs_gauge_box").remove();
$("#cs_fever_style").remove();
[endscript]

[_tb_end_tyrano_code]

[cm  ]
[tb_hide_message_window  ]
[tb_image_hide  time="1000"  ]
[wait  time="1000"  ]
[tb_image_show  time="1000"  storage="default/1/b02.jpg"  width="1281"  height="721"  x=""  y=""  _clickable_img=""  name="img_35"  ]
[tb_start_tyrano_code]
[iscript]
// 1. 各種変数の初期化（初回のみ）— 既存の変数名・構造は変更していません
if (typeof f.total_students === 'undefined') { f.total_students = 1024; }

// グループA
if (typeof f.a_total === 'undefined') { f.a_total = 132; }
if (typeof f.a_true_love === 'undefined') { f.a_true_love = 64; }
if (typeof f.a_jealousy === 'undefined') { f.a_jealousy = 46; }
if (typeof f.a_polygamy === 'undefined') { f.a_polygamy = 22; }

// グループB
if (typeof f.b_total === 'undefined') { f.b_total = 892; }
if (typeof f.b_unrequited === 'undefined') { f.b_unrequited = 437; }
if (typeof f.b_jealousy === 'undefined') { f.b_jealousy = 288; }
if (typeof f.b_polygamy === 'undefined') { f.b_polygamy = 97; }
if (typeof f.b_other === 'undefined') { f.b_other = 70; }

// グループC
if (typeof f.c_conquered === 'undefined') { f.c_conquered = 4; }
if (typeof f.c_unrequited === 'undefined') { f.c_unrequited = 22; }
if (typeof f.c_interested === 'undefined') { f.c_interested = 11; }

// 2. スタイルシートの注入（初回のみ）
// ※ TyranoScriptは [iscript] の中身であっても「行頭が @ や # で始まる行」を
//    独自のタグ呼び出し／キャラクター名指定として誤読してしまう。
//    そのため、CSSは1行ずつクォートで包んだ配列にして join() で結合し、
//    各物理行が必ず " (クォート) から始まるようにする。
if ($("#status_hud_style").length === 0) {
const cssLines = [
"@keyframes hudIn {",
"0% { opacity: 0; transform: translateY(-8px) scale(0.98); }",
"100% { opacity: 1; transform: translateY(0) scale(1); }",
"}",
"@keyframes hudFlash {",
"0% { color: #ffffff; text-shadow: 0 0 10px rgba(255,255,255,0.9); }",
"100% { color: inherit; text-shadow: none; }",
"}",
"#status_hud {",
"position: absolute;",
"top: 20px;",
"right: 20px;",
"width: 290px;",
"background: linear-gradient(160deg, rgba(18,16,26,0.94), rgba(32,20,38,0.9));",
"backdrop-filter: blur(14px);",
"-webkit-backdrop-filter: blur(14px);",
"border: 1px solid rgba(255,255,255,0.08);",
"border-radius: 18px;",
"padding: 16px 18px 14px;",
"color: #f2f0f5;",
"font-family: -apple-system, 'Hiragino Kaku Gothic ProN', 'Yu Gothic', 'Segoe UI', sans-serif;",
"font-size: 12.5px;",
"font-variant-numeric: tabular-nums;",
"z-index: 99999;",
"pointer-events: none;",
"box-shadow: 0 24px 48px -16px rgba(0,0,0,0.75), inset 0 0 0 1px rgba(255,255,255,0.03);",
"animation: hudIn 0.45s cubic-bezier(0.22,1,0.36,1);",
"}",
"#status_hud .hud-head {",
"display: flex; align-items: baseline; justify-content: space-between;",
"margin-bottom: 10px;",
"}",
"#status_hud .hud-title {",
"font-size: 10.5px; letter-spacing: 2px; font-weight: 700;",
"color: rgba(255,255,255,0.55); text-transform: uppercase;",
"}",
"#status_hud .hud-total {",
"font-size: 20px; font-weight: 800; color: #ffffff;",
"}",
"#status_hud .hud-total small {",
"font-size: 11px; font-weight: 500; color: rgba(255,255,255,0.5); margin-left: 2px;",
"}",
"#status_hud .split-bar {",
"display: flex; width: 100%; height: 6px; border-radius: 4px; overflow: hidden;",
"background: rgba(255,255,255,0.08); margin-bottom: 4px;",
"}",
"#status_hud .split-bar .seg { height: 100%; transition: width 0.5s cubic-bezier(0.22,1,0.36,1); }",
"#status_hud .split-legend {",
"display: flex; justify-content: space-between; font-size: 10px;",
"color: rgba(255,255,255,0.45); margin-bottom: 14px;",
"}",
"#status_hud .grp {",
"margin-bottom: 10px; padding-bottom: 10px;",
"border-bottom: 1px dashed rgba(255,255,255,0.09);",
"}",
"#status_hud .grp:last-child { border-bottom: none; margin-bottom: 0; padding-bottom: 0; }",
"#status_hud .grp-head {",
"display: flex; align-items: center; justify-content: space-between; margin-bottom: 6px;",
"}",
"#status_hud .grp-name {",
"display: flex; align-items: center; gap: 6px;",
"font-weight: 700; font-size: 12px;",
"}",
"#status_hud .grp-dot { width: 7px; height: 7px; border-radius: 50%; box-shadow: 0 0 6px currentColor; }",
"#status_hud .grp-count { font-weight: 700; font-size: 12.5px; color: #fff; }",
"#status_hud .grp-count small { color: rgba(255,255,255,0.4); font-weight: 500; font-size: 10px; }",
"#status_hud .row {",
"display: grid; grid-template-columns: 62px 1fr 30px; align-items: center;",
"gap: 8px; margin-bottom: 4px;",
"}",
"#status_hud .row:last-child { margin-bottom: 0; }",
"#status_hud .row-label { font-size: 11px; color: rgba(255,255,255,0.7); white-space: nowrap; }",
"#status_hud .row-track { height: 4px; border-radius: 3px; background: rgba(255,255,255,0.07); overflow: hidden; }",
"#status_hud .row-fill { height: 100%; border-radius: 3px; transition: width 0.5s cubic-bezier(0.22,1,0.36,1); }",
"#status_hud .row-val { text-align: right; font-size: 11px; color: #fff; font-weight: 600; }",
"#status_hud .flash { animation: hudFlash 0.7s ease-out; }"
].join(" ");
$('head').append('<style id="status_hud_style">' + cssLines + '</style>');
}

// 3. 派生値の計算（保存データは増やさず毎回算出）
const cTotal = f.c_conquered + f.c_unrequited + f.c_interested;
const aPct = Math.round((f.a_total / f.total_students) * 100);
const bPct = 100 - aPct;

// 内訳の最大値に対する比率（バーの長さ用）
const aMax = Math.max(f.a_true_love, f.a_jealousy, f.a_polygamy) || 1;
const bMax = Math.max(f.b_unrequited, f.b_jealousy, f.b_polygamy, f.b_other) || 1;
const cMax = Math.max(f.c_conquered, f.c_unrequited, f.c_interested) || 1;

// 4. 変更検知用スナップショット（フラッシュ演出のため）
if (typeof window.ns_hud_prev === 'undefined') { window.ns_hud_prev = {}; }
const prev = window.ns_hud_prev;
const cur = {
total_students: f.total_students,
a_total: f.a_total, a_true_love: f.a_true_love, a_jealousy: f.a_jealousy, a_polygamy: f.a_polygamy,
b_total: f.b_total, b_unrequited: f.b_unrequited, b_jealousy: f.b_jealousy, b_polygamy: f.b_polygamy, b_other: f.b_other,
c_conquered: f.c_conquered, c_unrequited: f.c_unrequited, c_interested: f.c_interested
};
const changed = {};
Object.keys(cur).forEach(k => { changed[k] = (prev[k] !== undefined && prev[k] !== cur[k]); });
window.ns_hud_prev = cur;

const flashCls = (key) => changed[key] ? 'flash' : '';

// 5. HUD本体の生成／更新（毎回コンテンツを丸ごと差し替え、外枠だけ初回作成）
if ($("#status_hud").length === 0) {
$('body').append('<div id="status_hud"></div>');
}

$("#status_hud").html(`
<div class="hud-head">
<div class="hud-title">🏫 コイカツ学園 在籍数</div>
<div class="hud-total"><span class="${flashCls('total_students')}">${f.total_students}</span><small>名</small></div>
</div>

<div class="split-bar">
<div class="seg" style="width:${aPct}%; background:linear-gradient(90deg,#cc99ff,#b26bff);"></div>
<div class="seg" style="width:${bPct}%; background:linear-gradient(90deg,#ff99cc,#ff6bab);"></div>
</div>
<div class="split-legend">
<span>非処女 ${aPct}%</span>
<span>処女 ${bPct}%</span>
</div>

<div class="grp">
<div class="grp-head">
<div class="grp-name" style="color:#cc99ff;"><span class="grp-dot" style="background:#cc99ff;"></span>非処女(攻略済み)</div>
<div class="grp-count"><span class="${flashCls('a_total')}">${f.a_total}</span><small>名</small></div>
</div>
<div class="row"><span class="row-label">生涯最愛</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.a_true_love/aMax*100)}%; background:#cc99ff;"></div></div><span class="row-val ${flashCls('a_true_love')}">${f.a_true_love}</span></div>
<div class="row"><span class="row-label">嫉妬・依存</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.a_jealousy/aMax*100)}%; background:#cc99ff;"></div></div><span class="row-val ${flashCls('a_jealousy')}">${f.a_jealousy}</span></div>
<div class="row"><span class="row-label">一夫多妻</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.a_polygamy/aMax*100)}%; background:#cc99ff;"></div></div><span class="row-val ${flashCls('a_polygamy')}">${f.a_polygamy}</span></div>
</div>

<div class="grp">
<div class="grp-head">
<div class="grp-name" style="color:#ff99cc;"><span class="grp-dot" style="background:#ff99cc;"></span>処女</div>
<div class="grp-count"><span class="${flashCls('b_total')}">${f.b_total}</span><small>名</small></div>
</div>
<div class="row"><span class="row-label">片想い</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.b_unrequited/bMax*100)}%; background:#ff99cc;"></div></div><span class="row-val ${flashCls('b_unrequited')}">${f.b_unrequited}</span></div>
<div class="row"><span class="row-label">嫉妬・依存</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.b_jealousy/bMax*100)}%; background:#ff99cc;"></div></div><span class="row-val ${flashCls('b_jealousy')}">${f.b_jealousy}</span></div>
<div class="row"><span class="row-label">一夫多妻</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.b_polygamy/bMax*100)}%; background:#ff99cc;"></div></div><span class="row-val ${flashCls('b_polygamy')}">${f.b_polygamy}</span></div>
<div class="row"><span class="row-label">その他</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.b_other/bMax*100)}%; background:#ff99cc;"></div></div><span class="row-val ${flashCls('b_other')}">${f.b_other}</span></div>
</div>

<div class="grp">
<div class="grp-head">
<div class="grp-name" style="color:#ffcc66;"><span class="grp-dot" style="background:#ffcc66;"></span>女性教員</div>
<div class="grp-count">${cTotal}<small>名</small></div>
</div>
<div class="row"><span class="row-label">攻略済み</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.c_conquered/cMax*100)}%; background:#ffcc66;"></div></div><span class="row-val ${flashCls('c_conquered')}">${f.c_conquered}</span></div>
<div class="row"><span class="row-label">片想い</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.c_unrequited/cMax*100)}%; background:#ffcc66;"></div></div><span class="row-val ${flashCls('c_unrequited')}">${f.c_unrequited}</span></div>
<div class="row"><span class="row-label">気になる</span><div class="row-track"><div class="row-fill" style="width:${Math.round(f.c_interested/cMax*100)}%; background:#ffcc66;"></div></div><span class="row-val ${flashCls('c_interested')}">${f.c_interested}</span></div>
</div>
`);

// フラッシュ用クラスを一定時間後に除去（次回の誤爆防止）
setTimeout(() => { $("#status_hud .flash").removeClass('flash'); }, 700);
[endscript]

[_tb_end_tyrano_code]

[tb_show_message_window  ]
[tb_start_text mode=1 ]
#
ぐったりと疲れた柏木くん。[p]
朝早くからハーレムプレイに勤しみ、昼も夜も延々と女子が代わる代わるに押し寄せて、夜更けまで続く毎日なのだ。[p]
寝てる間でも、ずっとペニスは弄られ続けて搾精されていると言い、本当に休む間もない24時間の射精地獄である。[p]
先程、一瞬の隙を突かれて空き教室へと誘われた柏木くん。[p]
行為が終わり、柏木くんに気を遣う2人の女子のお陰もあって、奇跡的に1人の時間が訪れた。[p]
さて、どうしよう？[p]
スマホには、100を超える通知が届いている。[p]
いつもなら、部活動を順繰りと巡る時間だ。[p]
でも、ペニスはヘロヘロで余力は無さそうだ……[p]
[_tb_end_text]

[tb_hide_message_window  ]
[wait  time="1000"  ]
*choice

[glink  color="btn_01_red"  storage="scene2.ks"  size="20"  text="女子の誘いに乗る"  target="*1"  x="100"  y="100"  width="300"  height="52"  _clickable_img=""  autopos="false"  ]
[glink  color="btn_01_red"  storage="scene2.ks"  size="20"  text="処女開発をする"  target="*2"  x="100"  y="200"  width="300"  height="52"  _clickable_img=""  autopos="false"  ]
[glink  color="btn_01_red"  storage="scene2.ks"  size="20"  text="家に帰る"  target="*3"  x="100"  y="300"  width="300"  height="52"  _clickable_img=""  autopos="false"  ]
[s  ]
[tb_start_tyrano_code]
[iscript]
// ステータスHUDを完全に消去する場合
$("#status_hud").remove();
[endscript]
[_tb_end_tyrano_code]

