<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Korean Popular Baby Rohee · Gallery</title>
  <!-- Font Awesome for cute icons (optional) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: linear-gradient(145deg, #fff9f0 0%, #ffe9d6 100%);
      font-family: 'Segoe UI', 'Quicksand', system-ui, -apple-system, sans-serif;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
    }

    .app-container {
      max-width: 1300px;
      width: 100%;
      background: rgba(255, 255, 255, 0.75);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-radius: 56px;
      padding: 32px 28px 40px;
      box-shadow: 0 30px 50px rgba(233, 186, 150, 0.25),
                  0 10px 25px rgba(0, 0, 0, 0.05),
                  inset 0 1px 4px rgba(255, 255, 255, 0.8);
      border: 1px solid rgba(255, 245, 235, 0.9);
      transition: all 0.2s ease;
    }

    /* header with korean + heart */
    .header {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 28px;
      padding: 0 8px;
    }

    .title-section {
      display: flex;
      align-items: center;
      gap: 14px;
    }

    .title-section h1 {
      font-size: 2.2rem;
      font-weight: 700;
      letter-spacing: -0.01em;
      color: #5e3e2c;
      text-shadow: 0 2px 4px rgba(255, 215, 180, 0.6);
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .title-section h1 i {
      color: #ff8a7a;
      font-size: 2rem;
      filter: drop-shadow(0 4px 6px rgba(255, 120, 100, 0.3));
      animation: softBeat 2.4s infinite ease-in-out;
    }

    @keyframes softBeat {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.12); }
    }

    .korean-badge {
      background: #ffd9cc;
      color: #8b4e37;
      border-radius: 60px;
      padding: 8px 20px;
      font-weight: 600;
      font-size: 1rem;
      letter-spacing: 0.5px;
      display: flex;
      align-items: center;
      gap: 10px;
      box-shadow: 0 4px 8px rgba(255, 180, 150, 0.3);
      border: 1px solid #ffc8b5;
    }

    .korean-badge i {
      font-size: 1.1rem;
      color: #e5654b;
    }

    .subhead {
      font-size: 1rem;
      color: #a77b64;
      margin-top: 6px;
      margin-left: 8px;
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .subhead i {
      color: #f7b09c;
    }

    /* gallery grid */
    .gallery {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 24px;
      margin: 20px 0 12px;
    }

    /* card style */
    .card {
      background: #fffffffa;
      border-radius: 36px;
      overflow: hidden;
      box-shadow: 0 12px 28px -8px rgba(160, 110, 80, 0.2),
                  0 4px 12px rgba(0, 0, 0, 0.02);
      transition: transform 0.3s cubic-bezier(0.2, 0.9, 0.3, 1.1), 
                  box-shadow 0.35s ease;
      border: 1px solid #ffe7dc;
      display: flex;
      flex-direction: column;
      backdrop-filter: blur(4px);
    }

    .card:hover {
      transform: translateY(-8px) scale(1.01);
      box-shadow: 0 28px 38px -10px rgba(190, 130, 100, 0.3),
                  0 8px 18px rgba(255, 200, 170, 0.2);
      border-color: #ffd7c4;
    }

    .card-img {
      width: 100%;
      aspect-ratio: 1 / 1;
      background: #fceae3;
      display: flex;
      justify-content: center;
      align-items: center;
      overflow: hidden;
      position: relative;
    }

    /* SVG baby Rohee images — handcrafted cute Korean baby */
    .rohee-svg {
      width: 100%;
      height: 100%;
      display: block;
      transition: transform 0.5s ease;
    }

    .card:hover .rohee-svg {
      transform: scale(1.03);
    }

    /* Caption / name */
    .card-caption {
      padding: 16px 12px 18px;
      text-align: center;
      background: #fffdfb;
      border-top: 1px solid #ffe2d4;
    }

    .rohee-name {
      font-weight: 700;
      font-size: 1.15rem;
      color: #573e30;
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 8px;
      letter-spacing: 0.2px;
    }

    .rohee-name i {
      color: #f28b82;
      font-size: 0.95rem;
      opacity: 0.9;
    }

    .rohee-tag {
      display: inline-block;
      margin-top: 6px;
      font-size: 0.75rem;
      background: #ffeae1;
      padding: 4px 12px;
      border-radius: 40px;
      color: #ab6b52;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.4px;
    }

    /* footer */
    .footer-note {
      margin-top: 28px;
      text-align: center;
      color: #a58372;
      font-size: 0.9rem;
      display: flex;
      justify-content: center;
      align-items: center;
      gap: 8px;
      background: #fff3edb3;
      padding: 12px 18px;
      border-radius: 100px;
      width: fit-content;
      margin-left: auto;
      margin-right: auto;
      border: 1px solid #ffdbcd;
      backdrop-filter: blur(5px);
    }

    .footer-note i {
      color: #ff8e7a;
      font-size: 1rem;
    }

    /* responsive */
    @media (max-width: 600px) {
      .app-container {
        padding: 22px 16px 30px;
        border-radius: 36px;
      }

      .title-section h1 {
        font-size: 1.6rem;
      }

      .title-section h1 i {
        font-size: 1.5rem;
      }

      .korean-badge {
        font-size: 0.8rem;
        padding: 6px 14px;
      }

      .gallery {
        gap: 16px;
      }

      .rohee-name {
        font-size: 1rem;
      }
    }

    @media (max-width: 420px) {
      .header {
        flex-direction: column;
        align-items: flex-start;
        gap: 12px;
      }

      .korean-badge {
        align-self: flex-start;
      }
    }
  </style>
</head>
<body>
  <div class="app-container">

    <!-- Header with Korean & baby theme -->
    <div class="header">
      <div class="title-section">
        <h1>
          <i class="fas fa-baby"></i> 
          Rohee
        </h1>
        <div class="korean-badge">
          <i class="fas fa-heart"></i> 한국 인기 아기
        </div>
      </div>
      <div class="subhead">
        <i class="fas fa-camera-retro"></i> cute moments · 로희
      </div>
    </div>

    <!-- Gallery of Rohee images (using SVG illustrations) -->
    <div class="gallery">

      <!-- Card 1: Smiling Rohee with hanbok style -->
      <div class="card">
        <div class="card-img">
          <svg class="rohee-svg" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Cute Korean baby Rohee smiling">
            <!-- background soft circle -->
            <circle cx="100" cy="100" r="88" fill="#FFF0E8" />
            <!-- hair (dark, soft) -->
            <ellipse cx="100" cy="75" rx="44" ry="38" fill="#2E1E14" />
            <!-- face -->
            <circle cx="100" cy="105" r="42" fill="#FDE3D3" />
            <!-- cheeks -->
            <circle cx="72" cy="118" r="12" fill="#FDB6A2" opacity="0.6" />
            <circle cx="128" cy="118" r="12" fill="#FDB6A2" opacity="0.6" />
            <!-- eyes -->
            <ellipse cx="82" cy="98" rx="7" ry="9" fill="#2F1F17" />
            <ellipse cx="118" cy="98" rx="7" ry="9" fill="#2F1F17" />
            <!-- eye highlights -->
            <circle cx="80" cy="94" r="2.8" fill="white" />
            <circle cx="116" cy="94" r="2.8" fill="white" />
            <!-- tiny nose -->
            <ellipse cx="100" cy="113" rx="4" ry="2.5" fill="#EC9F8B" />
            <!-- mouth (happy) -->
            <path d="M90 124 Q100 135, 110 124" stroke="#C15C4A" stroke-width="3.5" fill="none" stroke-linecap="round" />
            <!-- korean traditional hair pin (binyeo) accent -->
            <rect x="122" y="55" width="20" height="6" rx="3" fill="#D44C3A" transform="rotate(25 132 58)" />
            <circle cx="142" cy="68" r="5" fill="#F7C35C" />
            <!-- little bow on head -->
            <path d="M62 58 L74 52 L78 64 L66 70 Z" fill="#F97F6B" />
            <circle cx="72" cy="60" r="4" fill="#FFD966" />
          </svg>
        </div>
        <div class="card-caption">
          <div class="rohee-name">
            <i class="fas fa-smile-wink"></i> 로희 · Smiling
          </div>
          <span class="rohee-tag">#행복</span>
        </div>
      </div>

      <!-- Card 2: Rohee with binky / pacifier -->
      <div class="card">
        <div class="card-img">
          <svg class="rohee-svg" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Baby Rohee with pacifier">
            <circle cx="100" cy="100" r="88" fill="#FDF3ED" />
            <!-- hair with bangs -->
            <ellipse cx="100" cy="70" rx="46" ry="38" fill="#2E1E14" />
            <circle cx="80" cy="52" r="14" fill="#1F140E" />
            <circle cx="120" cy="52" r="14" fill="#1F140E" />
            <!-- face -->
            <circle cx="100" cy="105" r="44" fill="#FCE3D2" />
            <!-- rosy cheeks -->
            <circle cx="68" cy="118" r="13" fill="#FDB6A2" opacity="0.6" />
            <circle cx="132" cy="118" r="13" fill="#FDB6A2" opacity="0.6" />
            <!-- eyes (curious) -->
            <ellipse cx="80" cy="100" rx="8" ry="10" fill="#2F1F17" />
            <ellipse cx="120" cy="100" rx="8" ry="10" fill="#2F1F17" />
            <circle cx="77" cy="95" r="3.2" fill="white" />
            <circle cx="117" cy="95" r="3.2" fill="white" />
            <!-- pacifier -->
            <circle cx="100" cy="127" r="15" fill="#FFB7A8" />
            <circle cx="100" cy="127" r="10" fill="#FF8E7A" />
            <circle cx="100" cy="127" r="6" fill="#FFE0D6" />
            <rect x="94" y="139" width="12" height="10" rx="4" fill="#E57B65" />
            <!-- small hair clip -->
            <rect x="58" y="60" width="20" height="6" rx="3" fill="#FFA07A" transform="rotate(-10 68 63)" />
          </svg>
        </div>
        <div class="card-caption">
          <div class="rohee-name">
            <i class="fas fa-baby-carriage"></i> 로희 · Pacifier
          </div>
          <span class="rohee-tag">#쪽쪽이</span>
        </div>
      </div>

      <!-- Card 3: Rohee with Korean traditional hat (gulle) -->
      <div class="card">
        <div class="card-img">
          <svg class="rohee-svg" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Rohee wearing traditional Korean baby hat">
            <circle cx="100" cy="100" r="88" fill="#FEF5EF" />
            <!-- face -->
            <circle cx="100" cy="108" r="42" fill="#FDE3D3" />
            <!-- hair peeking under hat -->
            <path d="M62 90 Q70 75, 100 75 Q130 75, 138 90 Q130 80, 100 80 Q70 80, 62 90" fill="#2E1E14" />
            <!-- traditional Korean baby hat (gulle) -->
            <path d="M58 82 Q100 35, 142 82 L138 98 Q100 78, 62 98 Z" fill="#2E1E14" />
            <path d="M64 84 Q100 45, 136 84 L134 92 Q100 72, 66 92 Z" fill="#4A3326" />
            <!-- hat ribbon -->
            <rect x="90" y="57" width="20" height="6" rx="3" fill="#C0392B" transform="rotate(-5 100 60)" />
            <circle cx="100" cy="52" r="6" fill="#E6B422" />
            <!-- eyes happy -->
            <ellipse cx="82" cy="108" rx="7" ry="9" fill="#2F1F17" />
            <ellipse cx="118" cy="108" rx="7" ry="9" fill="#2F1F17" />
            <circle cx="80" cy="104" r="2.8" fill="white" />
            <circle cx="116" cy="104" r="2.8" fill="white" />
            <!-- blush -->
            <circle cx="72" cy="124" r="10" fill="#FDB6A2" opacity="0.6" />
            <circle cx="128" cy="124" r="10" fill="#FDB6A2" opacity="0.6" />
            <!-- mouth -->
            <ellipse cx="100" cy="130" rx="8" ry="5" fill="#D46A56" />
            <ellipse cx="100" cy="128" rx="4" ry="2.5" fill="#FFC5B5" />
            <!-- korean flag accent (small) -->
            <circle cx="168" cy="46" r="12" fill="#CD2E3A" opacity="0.9" />
            <circle cx="168" cy="46" r="5" fill="#0047A0" />
          </svg>
        </div>
        <div class="card-caption">
          <div class="rohee-name">
            <i class="fas fa-crown"></i> 로희 · Hanbok
          </div>
          <span class="rohee-tag">#한복</span>
        </div>
      </div>

      <!-- Card 4: Rohee sleeping / adorable -->
      <div class="card">
        <div class="card-img">
          <svg class="rohee-svg" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Baby Rohee sleeping peacefully">
            <circle cx="100" cy="100" r="88" fill="#FCF0E8" />
            <!-- hair -->
            <ellipse cx="100" cy="78" rx="44" ry="36" fill="#2E1E14" />
            <!-- face -->
            <circle cx="100" cy="108" r="40" fill="#FDE3D3" />
            <!-- closed eyes (sleeping) -->
            <path d="M76 105 Q82 115, 88 105" stroke="#2F1F17" stroke-width="4" fill="none" stroke-linecap="round" />
            <path d="M112 105 Q118 115, 124 105" stroke="#2F1F17" stroke-width="4" fill="none" stroke-linecap="round" />
            <!-- cheeks -->
            <circle cx="72" cy="120" r="11" fill="#FDB6A2" opacity="0.6" />
            <circle cx="128" cy="120" r="11" fill="#FDB6A2" opacity="0.6" />
            <!-- mouth (tiny) -->
            <ellipse cx="100" cy="126" rx="5" ry="3" fill="#E68A7A" />
            <!-- zzz -->
            <text x="150" y="52" font-family="Segoe UI, sans-serif" font-size="24" fill="#B38B7A" font-weight="600" opacity="0.8">Z</text>
            <text x="165" y="38" font-family="Segoe UI, sans-serif" font-size="18" fill="#B38B7A" font-weight="600" opacity="0.7">Z</text>
            <text x="176" y="26" font-family="Segoe UI, sans-serif" font-size="14" fill="#B38B7A" font-weight="600" opacity="0.5">Z</text>
            <!-- small blanket -->
            <path d="M62 148 Q100 170, 138 148 L138 160 Q100 180, 62 160 Z" fill="#FFCFB8" opacity="0.7" />
            <!-- hair accessory (small flower) -->
            <circle cx="64" cy="70" r="8" fill="#FFA07A" />
            <circle cx="60" cy="66" r="3" fill="#FFD966" />
            <circle cx="68" cy="66" r="3" fill="#FFD966" />
          </svg>
        </div>
        <div class="card-caption">
          <div class="rohee-name">
            <i class="fas fa-moon"></i> 로희 · Sleeping
          </div>
          <span class="rohee-tag">#잠자는</span>
        </div>
      </div>

      <!-- Card 5: Rohee with heart / love -->
      <div class="card">
        <div class="card-img">
          <svg class="rohee-svg" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Baby Rohee with heart">
            <circle cx="100" cy="100" r="88" fill="#FFF3ED" />
            <!-- hair -->
            <ellipse cx="100" cy="73" rx="45" ry="38" fill="#2E1E14" />
            <circle cx="70" cy="55" r="12" fill="#1F140E" />
            <circle cx="130" cy="55" r="12" fill="#1F140E" />
            <!-- face -->
            <circle cx="100" cy="107" r="42" fill="#FDE3D3" />
            <!-- eyes with hearts -->
            <circle cx="82" cy="102" r="7" fill="#2F1F17" />
            <circle cx="118" cy="102" r="7" fill="#2F1F17" />
            <circle cx="80" cy="98" r="3" fill="white" />
            <circle cx="116" cy="98" r="3" fill="white" />
            <!-- heart shaped mouth / cheeks -->
            <circle cx="70" cy="118" r="12" fill="#FDB6A2" opacity="0.6" />
            <circle cx="130" cy="118" r="12" fill="#FDB6A2" opacity="0.6" />
            <!-- small heart near face -->
            <path d="M143 72 C143 65, 152 63, 155 70 C158 63, 167 65, 167 72 C167 82, 155 90, 155 90 C155 90, 143 82, 143 72 Z" fill="#FF6B6B" />
            <!-- korean finger heart gesture (hand) -->
            <circle cx="52" cy="125" r="10" fill="#FDE3D3" stroke="#E6B89C" stroke-width="2" />
            <circle cx="44" cy="116" r="8" fill="#FDE3D3" stroke="#E6B89C" stroke-width="2" />
            <!-- tiny heart above hand -->
            <path d="M38 102 L42 96 L46 102 L42 108 Z" fill="#FF6B6B" />
          </svg>
        </div>
        <div class="card-caption">
          <div class="rohee-name">
            <i class="fas fa-heart"></i> 로희 · Love
          </div>
          <span class="rohee-tag">#사랑</span>
        </div>
      </div>

      <!-- Card 6: Rohee with Korean traditional norigae / accessory -->
      <div class="card">
        <div class="card-img">
          <svg class="rohee-svg" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Rohee with norigae">
            <circle cx="100" cy="100" r="88" fill="#FFFAF7" />
            <!-- hair with side buns -->
            <ellipse cx="100" cy="73" rx="44" ry="36" fill="#2E1E14" />
            <circle cx="58" cy="68" r="18" fill="#2E1E14" />
            <circle cx="142" cy="68" r="18" fill="#2E1E14" />
            <!-- face -->
            <circle cx="100" cy="106" r="42" fill="#FDE3D3" />
            <!-- eyes -->
            <ellipse cx="82" cy="102" rx="7" ry="9" fill="#2F1F17" />
            <ellipse cx="118" cy="102" rx="7" ry="9" fill="#2F1F17" />
            <circle cx="80" cy="98" r="2.8" fill="white" />
            <circle cx="116" cy="98" r="2.8" fill="white" />
            <!-- blush -->
            <circle cx="72" cy="119" r="11" fill="#FDB6A2" opacity="0.6" />
            <circle cx="128" cy="119" r="11" fill="#FDB6A2" opacity="0.6" />
            <!-- smile -->
            <path d="M90 124 Q100 134, 110 124" stroke="#C15C4A" stroke-width="3.5" fill="none" stroke-linecap="round" />
            <!-- norigae (traditional Korean pendant) -->
            <path d="M68 152 L72 142 L80 152 L72 162 Z" fill="#E63946" />
            <circle cx="72" cy="152" r="6" fill="#F4D03F" />
            <path d="M120 148 L128 142 L136 148 L128 162 Z" fill="#E63946" />
            <circle cx="128" cy="148" r="5" fill="#F4D03F" />
            <!-- hair ribbon -->
            <rect x="44" y="74" width="26" height="8" rx="4" fill="#D44C3A" transform="rotate(-20 57 78)" />
          </svg>
        </div>
        <div class="card-caption">
          <div class="rohee-name">
            <i class="fas fa-gem"></i> 로희 · Norigae
          </div>
          <span class="rohee-tag">#노리개</span>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <div class="footer-note">
      <i class="fas fa-baby"></i> 
      <span>Korean popular baby Rohee · 로희 · adorable moments</span>
      <i class="fas fa-heart" style="color: #ff8e7a;"></i>
    </div>
  </div>
</body>
</html>
