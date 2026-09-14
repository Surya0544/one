<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
  <title>Sorry • with Jinmiran Baby 🍼</title>
  <style>
    /* ---------- RESET & BASE ---------- */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: system-ui, -apple-system, 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif;
    }

    body {
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      background: #0b0e14;
      padding: 16px;
      overflow-x: hidden;
    }

    /* ---------- MAIN CARD ---------- */
    .sorry-card {
      position: relative;
      z-index: 10;
      width: 100%;
      max-width: 600px;
      background: rgba(20, 25, 35, 0.55);
      backdrop-filter: blur(12px) saturate(180%);
      -webkit-backdrop-filter: blur(12px) saturate(180%);
      border-radius: 48px;
      padding: 2.8rem 2rem 2.8rem 2rem;
      box-shadow: 0 30px 45px -20px rgba(0, 0, 0, 0.8), 
                  0 0 0 1px rgba(255, 255, 255, 0.05) inset,
                  0 0 35px rgba(220, 120, 180, 0.3);
      border: 1px solid rgba(255, 200, 230, 0.2);
      text-align: center;
      transition: transform 0.3s ease;
      animation: cardAppear 1.2s cubic-bezier(0.23, 1, 0.32, 1) forwards;
    }

    @keyframes cardAppear {
      0% { opacity: 0; transform: scale(0.92) translateY(20px); }
      100% { opacity: 1; transform: scale(1) translateY(0); }
    }

    /* ---------- HEART SYMBOL ---------- */
    .apology-icon {
      font-size: 4.2rem;
      line-height: 1;
      margin-bottom: 0.4rem;
      filter: drop-shadow(0 8px 18px rgba(255, 120, 180, 0.5));
      animation: gentlePulse 2.8s infinite ease-in-out;
    }

    @keyframes gentlePulse {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.08); }
    }

    /* ---------- TYPOGRAPHY ---------- */
    h1 {
      font-size: 2.8rem;
      font-weight: 700;
      letter-spacing: -0.02em;
      background: linear-gradient(135deg, #ffe6f0, #ffb6d9, #ff8ec4);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      margin-bottom: 0.5rem;
      text-shadow: 0 2px 10px rgba(255, 140, 200, 0.4);
    }

    .subhead {
      font-size: 1.2rem;
      color: #e0c0d0;
      font-weight: 300;
      letter-spacing: 0.3px;
      margin-bottom: 2rem;
      opacity: 0.9;
    }

    .sorry-message {
      background: rgba(0, 0, 0, 0.25);
      border-radius: 32px;
      padding: 1.8rem 1.4rem;
      margin: 1.5rem 0 2rem 0;
      border: 1px solid rgba(255, 180, 210, 0.25);
      box-shadow: 0 0 25px rgba(200, 100, 160, 0.2) inset;
    }

    .sorry-message p {
      font-size: 1.35rem;
      line-height: 1.7;
      color: #ffd9ec;
      font-weight: 400;
      text-shadow: 0 2px 6px rgba(0, 0, 0, 0.4);
      word-break: break-word;
    }

    .sorry-message .signature {
      display: block;
      margin-top: 1rem;
      font-size: 1rem;
      color: #c0a0b0;
      font-style: italic;
      letter-spacing: 0.5px;
    }

    /* ---------- CUTE BUTTON ---------- */
    .forgive-btn {
      background: linear-gradient(145deg, #ff90b6, #ff5e9c);
      border: none;
      padding: 1rem 2.8rem;
      border-radius: 100px;
      font-size: 1.4rem;
      font-weight: 600;
      color: #1e1016;
      letter-spacing: 0.5px;
      cursor: pointer;
      box-shadow: 0 16px 30px -8px rgba(255, 80, 150, 0.5), 0 0 0 1px rgba(255, 255, 255, 0.2) inset;
      transition: all 0.2s ease;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      border: 1px solid rgba(255, 255, 255, 0.3);
      backdrop-filter: blur(4px);
      margin-bottom: 0.5rem;
    }

    .forgive-btn:hover {
      transform: scale(1.02) translateY(-3px);
      box-shadow: 0 22px 35px -6px #ff4090, 0 0 0 1px white inset;
      background: linear-gradient(145deg, #ff9ec2, #ff6ba8);
    }

    .forgive-btn:active {
      transform: scale(0.98);
    }

    /* ============================================= */
    /* ===== ROHee BACKGROUND ====================== */
    /* ============================================= */
    .rohee-bg {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 0;
      overflow: hidden;
      background: radial-gradient(circle at 30% 20%, #2e1a2b, #0d0b12 80%);
    }

    /* floating orbs */
    .rohee {
      position: absolute;
      border-radius: 50%;
      filter: blur(22px);
      opacity: 0.6;
      animation: floatRohee 14s infinite alternate ease-in-out;
      mix-blend-mode: screen;
    }

    .r1 { width: 380px; height: 380px; background: #ff7eb3; top: -120px; left: -100px; animation-duration: 16s; opacity: 0.3; filter: blur(60px); }
    .r2 { width: 520px; height: 520px; background: #b86bff; bottom: -180px; right: -120px; animation-duration: 22s; opacity: 0.25; filter: blur(70px); }
    .r3 { width: 280px; height: 280px; background: #ffb86b; top: 40%; left: 70%; animation-duration: 18s; opacity: 0.3; filter: blur(50px); }
    .r4 { width: 400px; height: 400px; background: #6b9eff; bottom: 10%; left: 5%; animation-duration: 20s; opacity: 0.25; filter: blur(65px); }
    .r5 { width: 220px; height: 220px; background: #ff6bcb; top: 15%; right: 15%; animation-duration: 12s; opacity: 0.4; filter: blur(40px); }

    .sparkle {
      position: absolute;
      color: rgba(255, 200, 230, 0.7);
      font-size: 1.8rem;
      user-select: none;
      pointer-events: none;
      animation: twinkleRohee 6s infinite alternate;
      filter: drop-shadow(0 0 6px #ff90b0);
      z-index: 1;
    }

    @keyframes floatRohee {
      0% { transform: translate(0, 0) scale(1); }
      50% { transform: translate(40px, -30px) scale(1.1); }
      100% { transform: translate(-30px, 40px) scale(0.95); }
    }

    @keyframes twinkleRohee {
      0% { opacity: 0.2; transform: translateY(0) scale(0.8); }
      100% { opacity: 0.9; transform: translateY(-25px) scale(1.3); }
    }

    .rohee-dot {
      position: absolute;
      background: rgba(255, 180, 210, 0.25);
      border-radius: 50%;
      filter: blur(5px);
      animation: floatDot 18s infinite alternate;
      z-index: 1;
    }

    @keyframes floatDot {
      0% { transform: translate(0, 0); opacity: 0.2; }
      100% { transform: translate(-60px, -40px); opacity: 0.5; }
    }

    /* ============================================= */
    /* ===== JINMIRAN BABY IMAGES (SVG data URIs) == */
    /* ============================================= */
    .jinmiran-baby {
      position: absolute;
      z-index: 3;
      pointer-events: none;
      filter: drop-shadow(0 14px 28px rgba(255, 150, 200, 0.6));
      animation: floatJinmiran 13s infinite alternate ease-in-out;
      will-change: transform;
    }

    /* Size variants */
    .jinmiran-baby.size-xs { width: 55px;  height: 55px; }
    .jinmiran-baby.size-sm { width: 75px;  height: 75px; }
    .jinmiran-baby.size-md { width: 100px; height: 100px; }
    .jinmiran-baby.size-lg { width: 130px; height: 130px; }
    .jinmiran-baby.size-xl { width: 165px; height: 165px; }

    @keyframes floatJinmiran {
      0%   { transform: translate(0, 0) rotate(-4deg) scale(1); }
      20%  { transform: translate(22px, -30px) rotate(5deg) scale(1.06); }
      45%  { transform: translate(-18px, -50px) rotate(-6deg) scale(1.12); }
      70%  { transform: translate(30px, -22px) rotate(4deg) scale(1.03); }
      100% { transform: translate(-12px, 22px) rotate(-3deg) scale(0.97); }
    }

    /* Individual placement + timing */
    .jinmiran-baby.jb1  { top: 4%;   left: 3%;    animation-duration: 13s; animation-delay: 0s; }
    .jinmiran-baby.jb2  { top: 10%;  right: 5%;   left: auto; animation-duration: 16s; animation-delay: -3s; }
    .jinmiran-baby.jb3  { bottom: 7%; left: 6%;   animation-duration: 14s; animation-delay: -6s; }
    .jinmiran-baby.jb4  { bottom: 14%; right: 8%; left: auto; animation-duration: 18s; animation-delay: -1s; }
    .jinmiran-baby.jb5  { top: 40%;  left: 1%;    animation-duration: 15s; animation-delay: -8s; }
    .jinmiran-baby.jb6  { top: 55%;  right: 2%;   left: auto; animation-duration: 12s; animation-delay: -4s; }
    .jinmiran-baby.jb7  { top: 70%;  left: 18%;   animation-duration: 17s; animation-delay: -2s; }
    .jinmiran-baby.jb8  { top: 26%;  right: 20%;  left: auto; animation-duration: 11s; animation-delay: -7s; }
    .jinmiran-baby.jb9  { top: 86%;  left: 42%;   animation-duration: 14.5s; animation-delay: -5s; }
    .jinmiran-baby.jb10 { top: 1%;   left: 40%;   animation-duration: 19s; animation-delay: -9s; }
    .jinmiran-baby.jb11 { top: 48%;  left: 48%;   animation-duration: 13.5s; animation-delay: -3.5s; }
    .jinmiran-baby.jb12 { top: 18%;  left: 24%;   animation-duration: 15.5s; animation-delay: -1.5s; }
    .jinmiran-baby.jb13 { bottom: 26%; left: 30%; animation-duration: 16.5s; animation-delay: -10s; }
    .jinmiran-baby.jb14 { top: 63%;  left: 62%;   animation-duration: 12.5s; animation-delay: -2.5s; }
    .jinmiran-baby.jb15 { bottom: 4%; right: 30%; left: auto; animation-duration: 18.5s; animation-delay: -6.5s; }

    /* Soft glow behind babies */
    .baby-glow {
      position: absolute;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(255, 200, 230, 0.4) 0%, rgba(255, 150, 200, 0.12) 45%, transparent 70%);
      pointer-events: none;
      z-index: 1;
      animation: glowPulse 5s infinite alternate;
    }

    @keyframes glowPulse {
      0%   { opacity: 0.3; transform: scale(0.85); }
      100% { opacity: 0.9; transform: scale(1.2); }
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 480px) {
      .sorry-card { padding: 2rem 1.2rem; border-radius: 36px; }
      h1 { font-size: 2.2rem; }
      .apology-icon { font-size: 3.2rem; }
      .sorry-message p { font-size: 1.2rem; }
      .forgive-btn { font-size: 1.2rem; padding: 0.9rem 2rem; }
      .jinmiran-baby.size-xs { width: 38px;  height: 38px; }
      .jinmiran-baby.size-sm { width: 52px;  height: 52px; }
      .jinmiran-baby.size-md { width: 70px;  height: 70px; }
      .jinmiran-baby.size-lg { width: 92px;  height: 92px; }
      .jinmiran-baby.size-xl { width: 115px; height: 115px; }
    }

    @media (max-width: 360px) {
      .sorry-message p { font-size: 1rem; }
      h1 { font-size: 1.9rem; }
      .jinmiran-baby.size-xs { width: 32px;  height: 32px; }
      .jinmiran-baby.size-sm { width: 44px;  height: 44px; }
      .jinmiran-baby.size-md { width: 58px;  height: 58px; }
      .jinmiran-baby.size-lg { width: 76px;  height: 76px; }
      .jinmiran-baby.size-xl { width: 95px;  height: 95px; }
    }

    .content-wrapper {
      position: relative;
      z-index: 20;
      width: 100%;
      display: flex;
      justify-content: center;
    }
  </style>
</head>
<body>

  <!-- ============================================= -->
  <!-- ===== ROHee / JINMIRAN BABY ANIMATION BG ==== -->
  <!-- ============================================= -->
  <div class="rohee-bg" aria-hidden="true">
    <!-- large soft orbs -->
    <div class="rohee r1"></div>
    <div class="rohee r2"></div>
    <div class="rohee r3"></div>
    <div class="rohee r4"></div>
    <div class="rohee r5"></div>

    <!-- floating dots -->
    <div class="rohee-dot" style="width: 18px; height: 18px; top: 20%; left: 15%; animation-duration: 14s;"></div>
    <div class="rohee-dot" style="width: 32px; height: 32px; top: 70%; left: 80%; animation-duration: 20s; animation-delay: -3s;"></div>
    <div class="rohee-dot" style="width: 24px; height: 24px; top: 50%; left: 45%; animation-duration: 16s; animation-delay: -7s;"></div>
    <div class="rohee-dot" style="width: 12px; height: 12px; top: 85%; left: 30%; animation-duration: 12s; animation-delay: -2s;"></div>
    <div class="rohee-dot" style="width: 40px; height: 40px; top: 10%; left: 70%; animation-duration: 22s; animation-delay: -5s; background: rgba(200, 140, 255, 0.2);"></div>

    <!-- sparkles -->
    <div class="sparkle" style="top: 12%; left: 18%; animation-duration: 5s; animation-delay: 0s;">❤️</div>
    <div class="sparkle" style="top: 78%; left: 88%; animation-duration: 7s; animation-delay: 1s; font-size: 2rem;">🌸</div>
    <div class="sparkle" style="top: 45%; left: 8%; animation-duration: 6s; animation-delay: 2s; font-size: 1.4rem;">✨</div>
    <div class="sparkle" style="top: 30%; left: 92%; animation-duration: 8s; animation-delay: 0.5s; font-size: 2.2rem;">💗</div>
    <div class="sparkle" style="top: 88%; left: 12%; animation-duration: 5.5s; animation-delay: 1.8s;">🌷</div>
    <div class="sparkle" style="top: 60%; left: 75%; animation-duration: 9s; animation-delay: 0.2s; font-size: 1.6rem;">✨</div>
    <div class="sparkle" style="top: 22%; left: 55%; animation-duration: 6.5s; animation-delay: 2.5s;">🌸</div>
    <div class="sparkle" style="top: 92%; left: 55%; animation-duration: 7.5s; animation-delay: 1.2s;">🍼</div>

    <!-- ===================================================== -->
    <!-- ===== JINMIRAN BABY IMAGES (SVG data URIs) =========== -->
    <!-- These are cute Korean-style baby characters with soft   -->
    <!-- pastel colors, blush cheeks, and adorable expressions.  -->
    <!-- ===================================================== -->

    <!-- Jinmiran Baby 1 – Pink hanbok baby with flower -->
    <img class="jinmiran-baby jb1 size-xl"
      alt="Jinmiran Baby"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='jg1' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23fff5f9'/><stop offset='100%25' stop-color='%23ffb6d9'/></radialGradient></defs><ellipse cx='100' cy='190' rx='70' ry='12' fill='%23000' opacity='0.15'/><circle cx='100' cy='100' r='90' fill='url(%23jg1)' stroke='%23ff8ec4' stroke-width='3'/><path d='M40 60 Q60 20 100 40 Q140 20 160 60' stroke='%23ff5e9c' stroke-width='4' fill='none'/><circle cx='65' cy='80' r='11' fill='%23222'/><circle cx='135' cy='80' r='11' fill='%23222'/><circle cx='68' cy='77' r='3.5' fill='white'/><circle cx='138' cy='77' r='3.5' fill='white'/><ellipse cx='55' cy='105' rx='11' ry='8' fill='%23ffb6d9' opacity='0.75'/><ellipse cx='145' cy='105' rx='11' ry='8' fill='%23ffb6d9' opacity='0.75'/><path d='M78 128 Q100 150 122 128' stroke='%23e75480' stroke-width='5' fill='none' stroke-linecap='round'/><circle cx='100' cy='132' r='6' fill='%23ff6bcb'/><path d='M150 45 Q160 35 170 45 Q180 55 170 65 Q160 55 150 45 Z' fill='%23ff6bcb'/><path d='M165 40 Q170 32 178 40 Q185 48 178 55 Q170 48 165 40 Z' fill='%23ff9ec2'/><text x='100' y='192' font-size='16' text-anchor='middle' fill='%23c2185b' font-family='sans-serif' font-weight='bold'>진미란</text></svg>" />

    <!-- Jinmiran Baby 2 – Blue baby with bottle -->
    <img class="jinmiran-baby jb2 size-lg"
      alt="Jinmiran Baby"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='jg2' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23eef6ff'/><stop offset='100%25' stop-color='%23a6c8ff'/></radialGradient></defs><ellipse cx='100' cy='190' rx='70' ry='12' fill='%23000' opacity='0.15'/><circle cx='100' cy='100' r='90' fill='url(%23jg2)' stroke='%234a7cbf' stroke-width='3'/><path d='M45 55 Q65 25 100 42 Q135 25 155 55' stroke='%234a7cbf' stroke-width='4' fill='none'/><circle cx='65' cy='80' r='11' fill='%23222'/><circle cx='135' cy='80' r='11' fill='%23222'/><circle cx='68' cy='77' r='3.5' fill='white'/><circle cx='138' cy='77' r='3.5' fill='white'/><ellipse cx='55' cy='105' rx='11' ry='8' fill='%23ffb6d9' opacity='0.75'/><ellipse cx='145' cy='105' rx='11' ry='8' fill='%23ffb6d9' opacity='0.75'/><path d='M80 130 Q100 150 120 130' stroke='%234a7cbf' stroke-width='5' fill='none' stroke-linecap='round'/><rect x='140' y='140' width='20' height='28' rx='5' fill='white' stroke='%234a7cbf' stroke-width='2.5'/><rect x='145' y='135' width='10' height='7' rx='2' fill='%23ffd966'/><text x='100' y='192' font-size='16' text-anchor='middle' fill='%234a7cbf' font-family='sans-serif' font-weight='bold'>진미란</text></svg>" />

    <!-- Jinmiran Baby 3 – Mint baby with sparkles -->
    <img class="jinmiran-baby jb3 size-md"
      alt="Jinmiran Baby"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='jg3' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23eafff7'/><stop offset='100%25' stop-color='%2399e6cc'/></radialGradient></defs><ellipse cx='100' cy='190' rx='70' ry='12' fill='%23000' opacity='0.15'/><circle cx='100' cy='100' r='90' fill='url(%23jg3)' stroke='%2327ae60' stroke-width='3'/><circle cx='65' cy='80' r='11' fill='%23222'/><circle cx='135' cy='80' r='11' fill='%23222'/><circle cx='68' cy='77' r='3.5' fill='white'/><circle cx='138' cy='77' r='3.5' fill='white'/><ellipse cx='55' cy='105' rx='11' ry='8' fill='%23ffb6d9' opacity='0.75'/><ellipse cx='145' cy='105' rx='11' ry='8' fill='%23ffb6d9' opacity='0.75'/><path d='M78 130 Q100 152 122 130' stroke='%2327ae60' stroke-width='5' fill='none' stroke-linecap='round'/><path d='M160 55 L165 68 L178 70 L168 80 L171 93 L160 86 L149 93 L152 80 L142 70 L155 68 Z' fill='%23ffd966' stroke='%23e6a817' stroke-width='1'/><text x='100' y='192' font-size='16' text-anchor='middle' fill='%2327ae60' font-family='sans-serif' font-weight='bold'>진미란</text></svg>" />

    <!-- Jinmiran Baby 4 – Peach baby with bow -->
    <img class="jinmiran-baby jb4 size-lg"
      alt="Jinmiran Baby"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='jg4' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23fffaf0'/><stop offset='100%25' stop-color='%23ffcc99'/></radialGradient></defs><ellipse cx='100' cy='190' rx='70' ry='12' fill='%23000' opacity='0.15'/><circle cx='100' cy='100' r='90' fill='url(%23jg4)' stroke='%23e67e22' stroke-width='3'/><circle cx='65' cy='80' r='11' fill='%23222'/><circle cx='135' cy='80' r='11' fill='%23222'/><circle cx='68' cy='77' r='3.5' fill='white'/><circle cx='138' cy='77' r='3.5' fill='white'/><ellipse cx='55' cy='105' rx='11' ry='8' fill='%23ff9ec2' opacity='0.75'/><ellipse cx='145' cy='105' rx='11' ry='8' fill='%23ff9ec2' opacity='0.75'/><path d='M80 130 Q100 150 120 130' stroke='%23e67e22' stroke-width='5' fill='none' stroke-linecap='round'/><path d='M70 40 Q60 25 75 25 Q90 25 80 40 Z' fill='%23ff4081'/><path d='M80 40 Q90 25 105 25 Q120 25 110 40 Z' fill='%23ff4081'/><circle cx='90' cy='35' r='6' fill='%23ff80ab'/><text x='100' y='192' font-size='16' text-anchor='middle' fill='%23e67e22' font-family='sans-serif' font-weight='bold'>진미란</text></svg>" />

    <!-- Jinmiran Baby 5 – Lavender baby with moon -->
    <img class="jinmiran-baby jb5 size-md"
      alt="Jinmiran Baby"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='jg5' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23f8f0ff'/><stop offset='100%25' stop-color='%23c9a6ff'/></radialGradient></defs><ellipse cx='100' cy='190' rx='70' ry='12' fill='%23000' opacity='0.15'/><circle cx='100' cy='100' r='90' fill='url(%23jg5)' stroke='%236a1b9a' stroke-width='3'/><circle cx='65' cy='80' r='11' fill='%23222'/><circle cx='135' cy='80' r='11' fill='%23222'/><circle cx='68' cy='77' r='3.5' fill='white'/><circle cx='138' cy='77' r='3.5' fill='white'/><ellipse cx='55' cy='105' rx='11' ry='8' fill='%23ff9ec2' opacity='0.75'/><ellipse cx='145' cy='105' rx='11' ry='8' fill='%23ff9ec2' opacity='0.75'/><path d='M80 130 Q100 148 120 130' stroke='%236a1b9a' stroke-width='5' fill='none' stroke-linecap='round'/><path d='M155 50 A14 14 0 1 1 155 78 A10 10 0 1 0 155 50 Z' fill='%23ffd966' stroke='%23e6a817' stroke-width='1.5'/><text x='100' y='192' font-size='16' text-anchor='middle' fill='%236a1b9a' font-family='sans-serif' font-weight='bold'>진미란</text></svg>" />

    <!-- Jinmiran Baby 6 – Yellow baby with bib -->
    <img class="jinmiran-baby jb6 size-sm"
      alt="Jinmiran Baby"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='jg6' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23fffdf0'/><stop offset='100%25' stop-color='%23ffe680'/></radialGradient></defs><ellipse cx='100' cy='190' rx='70' ry='12' fill='%23000' opacity='0.15'/><circle cx='100' cy='100' r='90' fill='url(%23jg6)' stroke='%23d4a017' stroke-width='3'/><circle cx='65' cy='80' r='11' fill='%23222'/><circle cx='135' cy='80' r='11' fill='%23222'/><circle cx='68' cy='77' r='3.5' fill='white'/><circle cx='138' cy='77' r='3.5' fill='white'/><ellipse cx='55' cy='105' rx='11' ry='8' fill='%23ff9ec2' opacity='0.75'/><ellipse cx='145' cy='105' rx='11' ry='8' fill='%23ff9ec2' opacity='0.75'/><path d='M80 130 Q100 148 120 130' stroke='%23d4a017' stroke-width='5' fill='none' stroke-linecap='round'/><path d='M75 145 Q100 165 125 145 L120 160 Q100 175 80 160 Z' fill='white' stroke='%23d4a017' stroke-width='2'/><text x='100' y='192' font-size='16' text-anchor='middle' fill='%23d4a017' font-family='sans-serif' font-weight='bold'>진미란</text></svg>" />

    <!-- Jinmiran Baby 7 – Pink baby with hair tuft -->
    <img class="jinmiran-baby jb7 size-lg"
      alt="Jinmiran Baby"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='jg7' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23fff0f7'/><stop offset='100%25' stop-color
