<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
  <title>Sorry • with love</title>
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
      background: #0b0e14;  /* deep fallback */
      padding: 16px;
    }

    /* ---------- MAIN CARD (GLASS MORPHISM) ---------- */
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

    /* ---------- HEART / SORRY SYMBOL ---------- */
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

    /* ---------- CUTE BUTTON (just for interaction) ---------- */
    .forgive-btn {
      background: linear-gradient(145deg, #ff90b6, #ff5e9c);
      border: none;
      padding: 1rem 2.8rem;
      border-radius: 100px;
      font-size: 1.4rem;
      font-weight: 600;
      color: #1a0f14;
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

    /* ---------- ROHee / ROHAN ANIMATION BACKGROUND ---------- */
    /* 'rohee' interpreted as a sweet floating animation inspired by 'Rohi' / soft shapes */
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

    /* floating orbs / hearts = 'rohee' animation */
    .rohee {
      position: absolute;
      border-radius: 50%;
      filter: blur(22px);
      opacity: 0.6;
      animation: floatRohee 14s infinite alternate ease-in-out;
      mix-blend-mode: screen;
    }

    /* individual rohee elements – varied colors & sizes */
    .r1 {
      width: 380px;
      height: 380px;
      background: #ff7eb3;
      top: -120px;
      left: -100px;
      animation-duration: 16s;
      opacity: 0.3;
      filter: blur(60px);
    }

    .r2 {
      width: 520px;
      height: 520px;
      background: #b86bff;
      bottom: -180px;
      right: -120px;
      animation-duration: 22s;
      opacity: 0.25;
      filter: blur(70px);
    }

    .r3 {
      width: 280px;
      height: 280px;
      background: #ffb86b;
      top: 40%;
      left: 70%;
      animation-duration: 18s;
      opacity: 0.3;
      filter: blur(50px);
    }

    .r4 {
      width: 400px;
      height: 400px;
      background: #6b9eff;
      bottom: 10%;
      left: 5%;
      animation-duration: 20s;
      opacity: 0.25;
      filter: blur(65px);
    }

    .r5 {
      width: 220px;
      height: 220px;
      background: #ff6bcb;
      top: 15%;
      right: 15%;
      animation-duration: 12s;
      opacity: 0.4;
      filter: blur(40px);
    }

    /* tiny floating hearts/sparkles (rohee magic) */
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

    /* extra floating rohee-like shapes (soft circles) */
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

    /* ---------- RESPONSIVE ---------- */
    @media (max-width: 480px) {
      .sorry-card {
        padding: 2rem 1.2rem;
        border-radius: 36px;
      }
      h1 {
        font-size: 2.2rem;
      }
      .apology-icon {
        font-size: 3.2rem;
      }
      .sorry-message p {
        font-size: 1.2rem;
      }
      .forgive-btn {
        font-size: 1.2rem;
        padding: 0.9rem 2rem;
      }
    }

    @media (max-width: 360px) {
      .sorry-message p {
        font-size: 1rem;
      }
      h1 {
        font-size: 1.9rem;
      }
    }

    /* make sure content stays above bg */
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

  <!-- ===== ROHee ANIMATION BACKGROUND ===== 
       Soft floating orbs, sparkles and glowing dots 
       Inspired by 'rohee' = gentle, dreamy, loving motion -->
  <div class="rohee-bg" aria-hidden="true">
    <!-- large soft orbs -->
    <div class="rohee r1"></div>
    <div class="rohee r2"></div>
    <div class="rohee r3"></div>
    <div class="rohee r4"></div>
    <div class="rohee r5"></div>

    <!-- little floating dots (rohee dots) -->
    <div class="rohee-dot" style="width: 18px; height: 18px; top: 20%; left: 15%; animation-duration: 14s;"></div>
    <div class="rohee-dot" style="width: 32px; height: 32px; top: 70%; left: 80%; animation-duration: 20s; animation-delay: -3s;"></div>
    <div class="rohee-dot" style="width: 24px; height: 24px; top: 50%; left: 45%; animation-duration: 16s; animation-delay: -7s;"></div>
    <div class="rohee-dot" style="width: 12px; height: 12px; top: 85%; left: 30%; animation-duration: 12s; animation-delay: -2s;"></div>
    <div class="rohee-dot" style="width: 40px; height: 40px; top: 10%; left: 70%; animation-duration: 22s; animation-delay: -5s; background: rgba(200, 140, 255, 0.2);"></div>

    <!-- floating sparkles (rohee hearts) -->
    <div class="sparkle" style="top: 12%; left: 18%; animation-duration: 5s; animation-delay: 0s;">❤️</div>
    <div class="sparkle" style="top: 78%; left: 88%; animation-duration: 7s; animation-delay: 1s; font-size: 2rem;">🌸</div>
    <div class="sparkle" style="top: 45%; left: 8%; animation-duration: 6s; animation-delay: 2s; font-size: 1.4rem;">✨</div>
    <div class="sparkle" style="top: 30%; left: 92%; animation-duration: 8s; animation-delay: 0.5s; font-size: 2.2rem;">💗</div>
    <div class="sparkle" style="top: 88%; left: 12%; animation-duration: 5.5s; animation-delay: 1.8s;">🌷</div>
    <div class="sparkle" style="top: 60%; left: 75%; animation-duration: 9s; animation-delay: 0.2s; font-size: 1.6rem;">✨</div>
    <div class="sparkle" style="top: 22%; left: 55%; animation-duration: 6.5s; animation-delay: 2.5s;">🌸</div>
  </div>

  <!-- ===== MAIN APOLOGY CARD ===== -->
  <div class="content-wrapper">
    <div class="sorry-card">
      <div class="apology-icon">🤍</div>
      <h1>I'm Sorry</h1>
      <div class="subhead">from the bottom of my heart</div>

      <div class="sorry-message">
        <p>
          I know I messed up. You mean the world to me, and I hate that I hurt you.<br>
          Please forgive me — I'll do everything to make it right. 🌸
        </p>
        <span class="signature">— with all my love</span>
      </div>

      <!-- interactive button (just for UI warmth) -->
      <button class="forgive-btn" id="forgiveBtn">
        <span>💖</span> I forgive you <span>💖</span>
      </button>
    </div>
  </div>

  <!-- small script for a friendly touch (optional) -->
  <script>
    (function() {
      const btn = document.getElementById('forgiveBtn');
      if (btn) {
        btn.addEventListener('click', function(e) {
          e.preventDefault();
          // create a quick burst of floating hearts / rohee effect on click
          const colors = ['#ff90b6', '#ffb86b', '#b86bff', '#6b9eff', '#ff6bcb'];
          for (let i = 0; i < 18; i++) {
            const heart = document.createElement('div');
            heart.innerHTML = ['❤️', '🌸', '✨', '💗', '🤍'][Math.floor(Math.random() * 5)];
            heart.style.position = 'fixed';
            heart.style.left = (e.clientX || window.innerWidth / 2) + (Math.random() * 80 - 40) + 'px';
            heart.style.top = (e.clientY || window.innerHeight / 2) + (Math.random() * 60 - 30) + 'px';
            heart.style.fontSize = (Math.random() * 24 + 16) + 'px';
            heart.style.pointerEvents = 'none';
            heart.style.zIndex = '9999';
            heart.style.opacity = '1';
            heart.style.transition = 'transform 1.2s ease-out, opacity 1.2s ease-out';
            heart.style.transform = 'translate(0, 0) scale(1)';
            heart.style.filter = 'drop-shadow(0 0 12px rgba(255,150,200,0.8))';
            document.body.appendChild(heart);

            // animate
            requestAnimationFrame(() => {
              const angle = Math.random() * Math.PI * 2;
              const radius = 100 + Math.random() * 180;
              const x = Math.cos(angle) * radius;
              const y = Math.sin(angle) * radius - 60; // bias upward
              heart.style.transform = `translate(${x}px, ${y}px) scale(0.4) rotate(${Math.random() * 40 - 20}deg)`;
              heart.style.opacity = '0';
            });

            // remove after animation
            setTimeout(() => {
              if (heart.parentNode) heart.remove();
            }, 1400);
          }

          // subtle button feedback
          btn.style.transform = 'scale(0.96)';
          setTimeout(() => { btn.style.transform = ''; }, 150);
          btn.innerHTML = '🌸 Thank you 🌸';
          setTimeout(() => {
            btn.innerHTML = '<span>💖</span> I forgive you <span>💖</span>';
          }, 2000);
        });
      }
    })();
  </script>
</body>
</html>
