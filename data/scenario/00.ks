[_tb_system_call storage=system/_00.ks]

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
"「あぁああぁあああっ……💗　ワイシャツの上から胸を触られるだけでイッちゃう……💗」",
"「みんなの柏木くんが……いまだけ。私達だけを相手にしてくれてるなんて幸せ💗　柏木くんを2人で独占だよぉ💗」",
"「少し触れられただけで……スカートの中がびしょびしょだよお……」",
"「んっ……もっとたくさん、触って……？」",
"「あっ、そこ……なんだか変な感じがする……///」",
"「キスもして……？　キスなら、何回しても疲れないでしょ？」",
"「あぁあ、好きな人とキスするだけで蕩けちゃう💗　ごめん、こんな時なのに、オナニー、したくなっちゃう……」",
"「あぅ……声が出ちゃう……っ、自分の部屋で柏木くんの写真でオナニーする時より1000倍気持ち良いのお💗」",
"「ひゃああぁあっ……あ、あああっ、あっ……💗」",
"「そこ、弱いんだから……意地悪しないで……っ💗　あぁあああ、イッちゃう、イッちゃう、イッちゃう……」",
"「ううう、柏木くん、1日に数えきれない女子とエッチしてて大変だよね。男の人って、射精に限りがあるって聞いたことあるけど……」",
"「でも……ごめんなさい、私達もセックスしたいですぅ💗　みんなと同じく。私達も柏木くんのおちんちん、挿入れてほしいんです💗」",
"「……セックスしてくれたら、なんでもしますからぁ。ああ、他の、柏木くんに迷惑かける女子と同じになっちゃううう……💗」"
];

tf.current_text = texts[f.s_index];

// ゲージUIが既にあれば、現在値に同期しておく（ラベル再訪問対策）
if (typeof window._updateSkinshipGauge === 'function') {
window._updateSkinshipGauge(Math.min(f.s_gauge, 100));
}
[endscript]

; --- 3. 進行度に応じた画像の表示 ---
[if exp="f.s_index <= 3"]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-42-56-Render.jpg" width="1280" height="720"]
[elsif exp="f.s_index <= 7"]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-44-25-Render.jpg" width="1280" height="720"]
[elsif exp="f.s_index <= 10"]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-45-15-Render.jpg" width="1280" height="720"]
[else]
[tb_image_show time="100" storage="default/1/CharaStudio-2026-09-21-18-45-53-Render.jpg" width="1280" height="720"]
[endif]

; --- 4. セリフの描画 ---
[er]
#ヒロイン
[emb exp="tf.current_text"]

; --- 5. クリックイベント（初回のみ登録） ---
[iscript]
if (!window._skinship_bound) {
window._skinship_bound = true;

$(".message_outer, .message_inner").css("pointer-events", "none");

let heartSeq = 0;
const MAX_HEARTS = 120;
const HEART_ICONS = ["💗"];

// --- ゲージUIを生成（初回のみ） ---
if ($("#skinship_gauge_container").length === 0) {
const $gauge = $(
'<div id="skinship_gauge_container" style="position:absolute; top:20px; right:20px; width:270px; padding:14px 18px; background:linear-gradient(135deg, rgba(15,5,20,0.7), rgba(30,10,25,0.55)); backdrop-filter:blur(14px); -webkit-backdrop-filter:blur(14px); border:1px solid rgba(255,120,180,0.35); border-radius:14px; z-index:999998; box-shadow: 0 6px 24px rgba(0,0,0,0.45), 0 0 20px rgba(255,80,150,0.25); font-family: \'Segoe UI\', sans-serif;">' +
// コーナーアクセント（HUD風）
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

if ($("#gauge_shimmer_style").length === 0) {
$('head').append(
'<style id="gauge_shimmer_style">' +
'@keyframes gauge_shimmer_anim { 0% { background-position: 0% 0; } 100% { background-position: 200% 0; } }' +
'@keyframes gauge_pulse_anim { 0%,100% { transform: scale(1); } 50% { transform: scale(1.015); } }' +
'#skinship_gauge_fill { animation: gauge_shimmer_anim 1.3s linear infinite; }' +
'</style>'
);
}

// --- %に応じて色・発光・脈動を更新する関数（グローバルに保持） ---
window._updateSkinshipGauge = function(percent) {
const t = Math.min(Math.max(percent, 0), 100) / 100;

// 淡いピンク(255,158,203) → 濃いマゼンタレッド(255,0,70) へ線形補間
const r = Math.round(255 + (255 - 255) * t);
const g = Math.round(158 + (0 - 158) * t);
const b = Math.round(203 + (70 - 203) * t);
const color = `rgb(${r},${g},${b})`;
const glow = 6 + t * 22; // 発光の強さ

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
}

$("#tyrano_base").on("click.skinship_effect", (e) => {
const rect = e.currentTarget.getBoundingClientRect();
const x = e.clientX - rect.left;
const y = e.clientY - rect.top;

f.s_count++;

// ゲージを1%進める（上限100%）
f.s_gauge = Math.min(f.s_gauge + 1, 100);
window._updateSkinshipGauge(f.s_gauge);

// ゲージMAX到達 → *next1 へ統一ジャンプ
if (f.s_gauge >= 100) {
$("#tyrano_base").off("click.skinship_effect");
$(".message_outer, .message_inner").css("pointer-events", "auto");
window._skinship_bound = false;

TYRANO.kag.ftag.startTag("jump", {
storage: "scene1.ks",
target: "*next1"
});
return;
}

// --- 演出A：メッセージやUI以外の画面上の画像だけを安全に揺らす ---
const progressRatio = f.s_count / f.s_target;
const intensity = progressRatio > 0.7 ? 6 : 2;
const rx = (Math.random() - 0.5) * intensity * 2;
const ry = (Math.random() - 0.5) * intensity * 2;

// メッセージウィンドウやゲージ等を除外した、画面内のすべての画像要素を対象にする
const $imgTarget =$("#tyrano_base img").not(".message_outer img, .message_inner img, #skinship_gauge_container img");
if ($imgTarget.length > 0) {$imgTarget.css("transform", `translate(${rx}px, ${ry}px)`);
setTimeout(() => {
$imgTarget.css("transform", "translate(0px, 0px)");
}, 120);
}

// --- 演出B：クリック位置にハート＆キラキラを散らす ---
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
const $heart = $(`<div id="${uid}" class="skinship-heart" style="position:absolute; left:${rx}px; top:${ry}px; font-size:${size}px; opacity:0; transform: scale(0.3) rotate(${rotate}deg); transition: all 1.4s cubic-bezier(0.1, 0.8, 0.3, 1); pointer-events:none; z-index:999999; text-shadow: 0 0 8px rgba(255,150,200,0.8);">${icon}</div>`);

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

// --- 目標回数に達した場合の処理 ---
if (f.s_count >= f.s_target) {
f.s_count = 0;
f.s_target = Math.floor(Math.random() * 8) + 5;
f.s_index++;

$("#tyrano_base").off("click.skinship_effect");
$(".message_outer, .message_inner").css("pointer-events", "auto");
window._skinship_bound = false;

// 全セリフ終了 → *next1 へ統一ジャンプ
if (f.s_index > 12) {
f.s_index = 0;
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

// 揺れアニメーション用CSS（通常・強化の2種類）
if ($("#shake_animation_style").length === 0) {
$('head').append(
'<style id="shake_animation_style">' +
'@keyframes shake-hard-anim {' +
'0% { transform: translate(0, 0); }' +
'25% { transform: translate(-1px, -1px); }' +
'50% { transform: translate(1px, 1px); }' +
'75% { transform: translate(-1px, 1px); }' +
'100% { transform: translate(0, 0); }' +
'}' +
'@keyframes shake-hard-max-anim {' +
'0% { transform: translate(0, 0); }' +
'25% { transform: translate(-4px, -4px); }' +
'50% { transform: translate(4px, 4px); }' +
'75% { transform: translate(-4px, 4px); }' +
'100% { transform: translate(0, 0); }' +
'}' +
'.shake-hard {' +
'animation: shake-hard-anim 0.15s ease-in-out infinite;' +
'pointer-events: auto !important;' +
'}' +
'.shake-hard-max {' +
'animation: shake-hard-max-anim 0.12s ease-in-out infinite;' +
'pointer-events: auto !important;' +
'}' +
'</style>'
);
}
[endscript]

[s]

[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
新しいシナリオです[p]
[_tb_end_text]

[tb_start_tyrano_code]
[iscript]
// 1. 各種変数の初期化（初回のみ）
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

// 2. ステータス表示用HTMLコンテナの生成（重複防止）
if ($("#status_hud").length === 0) {
$('body').append(`
<div id="status_hud" style="
position: absolute;
top: 20px;
right: 20px;
width: 260px;
background: rgba(20, 20, 30, 0.9);
border: 2px solid #ff69b4;
border-radius: 8px;
padding: 12px 14px;
color: #ffffff;
font-family: sans-serif;
font-size: 13px;
z-index: 99999;
pointer-events: none;
box-shadow: 0 0 15px rgba(255, 105, 180, 0.4);
">
<div style="font-weight: bold; margin-bottom: 8px; color: #ffb6c1; border-bottom: 1px solid #555; padding-bottom: 4px; text-align: center;">
🏫 コイカツ在籍数 <span id="val_total">${f.total_students}</span>名
</div>

<!-- グループA -->
<div style="margin-bottom: 6px;">
<div style="color: #cc99ff; font-weight: bold; font-size: 12px;">■ 非処女：<span id="val_a_total">${f.a_total}</span>名</div>
<div style="padding-left: 10px; font-size: 12px; line-height: 1.4;">
・生涯最愛：<span id="val_a_true">${f.a_true_love}</span>名<br>
・嫉妬・依存：<span id="val_a_jeal">${f.a_jealousy}</span>名<br>
・一夫多妻賛成：<span id="val_a_poly">${f.a_polygamy}</span>名
</div>
</div>

<!-- グループB -->
<div>
<div style="color: #ff99cc; font-weight: bold; font-size: 12px;">■ 処女：<span id="val_b_total">${f.b_total}</span>名</div>
<div style="padding-left: 10px; font-size: 12px; line-height: 1.4;">
・片想い：<span id="val_b_unreq">${f.b_unrequited}</span>名<br>
・嫉妬・依存：<span id="val_b_jeal">${f.b_jealousy}</span>名<br>
・一夫多妻賛成：<span id="val_b_poly">${f.b_polygamy}</span>名<br>
・その他：<span id="val_b_other">${f.b_other}</span>名
</div>
</div>
</div>
`);
} else {
// 既に存在する場合は数値を更新して表示
$("#val_total").text(f.total_students);
$("#val_a_total").text(f.a_total);
$("#val_a_true").text(f.a_true_love);
$("#val_a_jeal").text(f.a_jealousy);
$("#val_a_poly").text(f.a_polygamy);
$("#val_b_total").text(f.b_total);
$("#val_b_unreq").text(f.b_unrequited);
$("#val_b_jeal").text(f.b_jealousy);
$("#val_b_poly").text(f.b_polygamy);
$("#val_b_other").text(f.b_other);
$("#status_hud").show();
}
[endscript]
[_tb_end_tyrano_code]

