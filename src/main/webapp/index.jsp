<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
  <title>Sorry • with baby rohee 🍼</title>
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
    /* ===== BABY ROHEE IMAGES (SVG data URIs) ===== */
    /* ============================================= */
    .baby-rohee-img {
      position: absolute;
      width: 110px;
      height: 110px;
      z-index: 3;
      pointer-events: none;
      filter: drop-shadow(0 12px 24px rgba(255, 140, 200, 0.55));
      animation: floatBabyImg 12s infinite alternate ease-in-out;
      will-change: transform;
    }

    /* Different sizes for variety */
    .baby-rohee-img.size-sm { width: 70px; height: 70px; }
    .baby-rohee-img.size-md { width: 95px; height: 95px; }
    .baby-rohee-img.size-lg { width: 130px; height: 130px; }
    .baby-rohee-img.size-xl { width: 160px; height: 160px; }

    @keyframes floatBabyImg {
      0% { transform: translate(0, 0) rotate(-3deg) scale(1); }
      25% { transform: translate(20px, -25px) rotate(4deg) scale(1.05); }
      50% { transform: translate(-15px, -45px) rotate(-5deg) scale(1.1); }
      75% { transform: translate(28px, -18px) rotate(3deg) scale(1.02); }
      100% { transform: translate(-10px, 20px) rotate(-2deg) scale(0.98); }
    }

    /* Individual positions & timings */
    .baby-rohee-img.br1  { top: 5%;  left: 4%;   animation-duration: 13s; animation-delay: 0s; }
    .baby-rohee-img.br2  { top: 12%; right: 6%;  left: auto; animation-duration: 16s; animation-delay: -3s; }
    .baby-rohee-img.br3  { bottom: 8%; left: 8%; animation-duration: 14s; animation-delay: -6s; }
    .baby-rohee-img.br4  { bottom: 15%; right: 10%; left: auto; animation-duration: 18s; animation-delay: -1s; }
    .baby-rohee-img.br5  { top: 42%; left: 2%;  animation-duration: 15s; animation-delay: -8s; }
    .baby-rohee-img.br6  { top: 58%; right: 3%; left: auto; animation-duration: 12s; animation-delay: -4s; }
    .baby-rohee-img.br7  { top: 72%; left: 20%; animation-duration: 17s; animation-delay: -2s; }
    .baby-rohee-img.br8  { top: 28%; right: 22%; left: auto; animation-duration: 11s; animation-delay: -7s; }
    .baby-rohee-img.br9  { top: 88%; left: 45%; animation-duration: 14s; animation-delay: -5s; }
    .baby-rohee-img.br10 { top: 2%; left: 42%;  animation-duration: 19s; animation-delay: -9s; }
    .baby-rohee-img.br11 { top: 50%; left: 50%; animation-duration: 13.5s; animation-delay: -3.5s; }
    .baby-rohee-img.br12 { top: 20%; left: 26%; animation-duration: 15.5s; animation-delay: -1.5s; }

    /* Soft glow behind babies */
    .baby-glow {
      position: absolute;
      border-radius: 50%;
      background: radial-gradient(circle, rgba(255, 190, 225, 0.35) 0%, rgba(255, 150, 200, 0.1) 40%, transparent 70%);
      pointer-events: none;
      z-index: 1;
      animation: glowPulse 5s infinite alternate;
    }

    @keyframes glowPulse {
      0% { opacity: 0.3; transform: scale(0.85); }
      100% { opacity: 0.85; transform: scale(1.15); }
    }

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 480px) {
      .sorry-card { padding: 2rem 1.2rem; border-radius: 36px; }
      h1 { font-size: 2.2rem; }
      .apology-icon { font-size: 3.2rem; }
      .sorry-message p { font-size: 1.2rem; }
      .forgive-btn { font-size: 1.2rem; padding: 0.9rem 2rem; }
      .baby-rohee-img { width: 75px; height: 75px; }
      .baby-rohee-img.size-sm { width: 50px; height: 50px; }
      .baby-rohee-img.size-md { width: 65px; height: 65px; }
      .baby-rohee-img.size-lg { width: 90px; height: 90px; }
      .baby-rohee-img.size-xl { width: 110px; height: 110px; }
    }

    @media (max-width: 360px) {
      .sorry-message p { font-size: 1rem; }
      h1 { font-size: 1.9rem; }
      .baby-rohee-img { width: 60px; height: 60px; }
      .baby-rohee-img.size-sm { width: 40px; height: 40px; }
      .baby-rohee-img.size-md { width: 52px; height: 52px; }
      .baby-rohee-img.size-lg { width: 72px; height: 72px; }
      .baby-rohee-img.size-xl { width: 88px; height: 88px; }
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
  <!-- ===== ROHee / BABY ROHEE ANIMATION BG ======= -->
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

    <!-- ================================================== -->
    <!-- ===== BABY ROHEE IMAGES (Embedded SVG data URIs) = -->
    <!-- ================================================== -->

    <!-- Baby Rohee #1 – Pink baby face with pacifier -->
    <img class="baby-rohee-img br1 size-lg"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g1' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23fff0f5'/><stop offset='100%25' stop-color='%23ffb6d9'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g1)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M70 125 Q100 155 130 125' stroke='%23e75480' stroke-width='6' fill='none' stroke-linecap='round'/><circle cx='100' cy='135' r='8' fill='%23ff9ec2' stroke='%23e75480' stroke-width='3'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><path d='M40 55 Q60 35 85 45' stroke='%23ff8ec4' stroke-width='5' fill='none' stroke-linecap='round'/><text x='100' y='190' font-size='20' text-anchor='middle' fill='%23ff5e9c' font-family='sans-serif'>baby rohee</text></svg>" alt="Baby Rohee" />

    <!-- Baby Rohee #2 – Blue baby with bottle -->
    <img class="baby-rohee-img br2 size-md"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g2' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23e6f0ff'/><stop offset='100%25' stop-color='%23a6c8ff'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g2)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M75 125 Q100 150 125 125' stroke='%234a7cbf' stroke-width='6' fill='none' stroke-linecap='round'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ffb6d9' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ffb6d9' opacity='0.7'/><rect x='140' y='140' width='22' height='30' rx='5' fill='%23ffffff' stroke='%234a7cbf' stroke-width='3'/><rect x='146' y='135' width='10' height='8' rx='2' fill='%23ffd966'/><text x='100' y='195' font-size='18' text-anchor='middle' fill='%234a7cbf' font-family='sans-serif'>rohee</text></svg>" alt="Baby Rohee" />

    <!-- Baby Rohee #3 – Purple cute baby with teddy -->
    <img class="baby-rohee-img br3 size-xl"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g3' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23f5e6ff'/><stop offset='100%25' stop-color='%23c99eff'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g3)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M70 128 Q100 158 130 128' stroke='%238e44ad' stroke-width='6' fill='none' stroke-linecap='round'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ffb6d9' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ffb6d9' opacity='0.7'/><circle cx='50' cy='55' r='10' fill='%23ffd966' stroke='%23e6a817' stroke-width='2'/><circle cx='150' cy='50' r='10' fill='%23ffd966' stroke='%23e6a817' stroke-width='2'/><text x='100' y='192' font-size='20' text-anchor='middle' fill='%238e44ad' font-family='sans-serif'>rohee</text></svg>" alt="Baby Rohee" />

    <!-- Baby Rohee #4 – Peach baby with flower -->
    <img class="baby-rohee-img br4 size-lg"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g4' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23fff5e6'/><stop offset='100%25' stop-color='%23ffcc99'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g4)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M75 130 Q100 155 125 130' stroke='%23e67e22' stroke-width='6' fill='none' stroke-linecap='round'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><circle cx='45' cy='45' r='6' fill='%23ff6bcb'/><circle cx='55' cy='38' r='6' fill='%23ff6bcb'/><circle cx='58' cy='50' r='6' fill='%23ff6bcb'/><circle cx='48' cy='55' r='6' fill='%23ff6bcb'/><circle cx='52' cy='46' r='4' fill='%23ffd966'/><text x='100' y='195' font-size='18' text-anchor='middle' fill='%23e67e22' font-family='sans-serif'>baby rohee</text></svg>" alt="Baby Rohee" />

    <!-- Baby Rohee #5 – Mint baby with sparkle -->
    <img class="baby-rohee-img br5 size-md"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g5' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23e6fff5'/><stop offset='100%25' stop-color='%2399e6cc'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g5)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M72 126 Q100 154 128 126' stroke='%2327ae60' stroke-width='6' fill='none' stroke-linecap='round'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><path d='M155 60 L160 70 L170 72 L162 80 L164 90 L155 85 L146 90 L148 80 L140 72 L150 70 Z' fill='%23ffd966' stroke='%23e6a817' stroke-width='1'/><text x='100' y='192' font-size='18' text-anchor='middle' fill='%2327ae60' font-family='sans-serif'>rohee</text></svg>" alt="Baby Rohee" />

    <!-- Baby Rohee #6 – Yellow baby with bib -->
    <img class="baby-rohee-img br6 size-sm"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g6' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23fffce6'/><stop offset='100%25' stop-color='%23ffe680'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g6)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M75 130 Q100 150 125 130' stroke='%23d4a017' stroke-width='6' fill='none' stroke-linecap='round'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><path d='M70 150 Q100 170 130 150 L125 165 Q100 180 75 165 Z' fill='%23ffffff' stroke='%23d4a017' stroke-width='2'/><text x='100' y='192' font-size='18' text-anchor='middle' fill='%23d4a017' font-family='sans-serif'>rohee</text></svg>" alt="Baby Rohee" />

    <!-- Baby Rohee #7 – Pink baby girl with bow -->
    <img class="baby-rohee-img br7 size-lg"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g7' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23ffe6f0'/><stop offset='100%25' stop-color='%23ff99c8'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g7)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M75 128 Q100 156 125 128' stroke='%23c2185b' stroke-width='6' fill='none' stroke-linecap='round'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ff6bcb' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ff6bcb' opacity='0.7'/><path d='M55 40 Q45 25 60 25 Q75 25 65 40 Z' fill='%23ff4081'/><path d='M65 40 Q75 25 90 25 Q105 25 95 40 Z' fill='%23ff4081'/><circle cx='75' cy='35' r='6' fill='%23ff80ab'/><text x='100' y='195' font-size='18' text-anchor='middle' fill='%23c2185b' font-family='sans-serif'>baby rohee</text></svg>" alt="Baby Rohee" />

    <!-- Baby Rohee #8 – Lavender baby with moon -->
    <img class="baby-rohee-img br8 size-md"
      src="data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 200 200'><defs><radialGradient id='g8' cx='35%25' cy='30%25'><stop offset='0%25' stop-color='%23f0e6ff'/><stop offset='100%25' stop-color='%23b399ff'/></radialGradient></defs><circle cx='100' cy='100' r='95' fill='url(%23g8)'/><circle cx='65' cy='75' r='12' fill='%23333'/><circle cx='135' cy='75' r='12' fill='%23333'/><circle cx='65' cy='75' r='4' fill='white'/><circle cx='135' cy='75' r='4' fill='white'/><path d='M75 130 Q100 152 125 130' stroke='%236a1b9a' stroke-width='6' fill='none' stroke-linecap='round'/><ellipse cx='55' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><ellipse cx='145' cy='105' rx='10' ry='7' fill='%23ff9ec2' opacity='0.7'/><path d='M155 50 A15 15 0 1 1 155 80 A12 12 0 1 0 155 50 Z' fill='%23ffd966' stroke='%23e6a817' stroke-width='
