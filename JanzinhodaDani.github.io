<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Uma mensagem especial e romântica para Danielle." />
  <title>Para Danielle</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: linear-gradient(to right, #000000, #1a001a);
      color: #fff;
      font-family: 'Segoe UI', sans-serif;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      overflow: hidden;
      text-align: center;
      padding: 20px;
      position: relative;
    }

    h1 {
      font-size: 2.2em;
      color: #ff4444;
      margin: 30px 20px 10px;
      white-space: nowrap;
      overflow: hidden;
      border-right: 3px solid #ff4444;
      width: 0;
      animation: typing 4s steps(40, end) forwards, blink 0.75s step-end infinite;
      z-index: 2;
    }

    @keyframes typing {
      from { width: 0 }
      to { width: 100% }
    }

    @keyframes blink {
      50% { border-color: transparent }
    }

    .message {
      margin-top: 40px;
      font-size: 1.5em;
      max-width: 600px;
      color: #ffb6c1;
      line-height: 1.5;
      animation: fadeIn 3s ease forwards;
      opacity: 0;
    }

    @keyframes fadeIn {
      to {
        opacity: 1;
      }
    }

    .hidden-player {
      position: absolute;
      left: -9999px;
    }

    .heart {
      position: absolute;
      width: 20px;
      height: 20px;
      background: #ff4444;
      transform: rotate(45deg);
      animation: fall 6s linear infinite;
      opacity: 0.8;
    }

    .heart::before,
    .heart::after {
      content: '';
      position: absolute;
      width: 20px;
      height: 20px;
      background: #ff4444;
      border-radius: 50%;
    }

    .heart::before {
      top: -10px;
      left: 0;
    }

    .heart::after {
      left: -10px;
      top: 0;
    }

    @keyframes fall {
      0% {
        transform: translateY(-100px) rotate(45deg);
        opacity: 0;
      }
      50% {
        opacity: 0.8;
      }
      100% {
        transform: translateY(100vh) rotate(45deg);
        opacity: 0;
      }
    }
  </style>
</head>
<body>

  <h1>Para Danielle 💖</h1>

  <div class="message">
    Danielle, cada batida do meu coração é um lembrete do quanto você é especial. <br/>
    Esta página é só uma pequena prova do imenso carinho e amor que sinto por você. <br/>
    Que nosso amor floresça cada dia mais. 💕🌹
  </div>

  <!-- Música de fundo (homesick - wave to earth) -->
  <iframe class="hidden-player" width="0" height="0" frameborder="no" scrolling="no" 
    src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1770274552&amp;color=%23ff4444&amp;auto_play=true&amp;hide_related=true&amp;show_comments=false&amp;show_user=false&amp;show_reposts=false&amp;show_teaser=false&amp;visual=false">
  </iframe>

  <script>
    function createHeart() {
      const heart = document.createElement('div');
      heart.className = 'heart';
      heart.style.left = Math.random() * 100 + 'vw';
      heart.style.animationDuration = (Math.random() * 3 + 3) + 's';
      document.body.appendChild(heart);
      setTimeout(() => heart.remove(), 6000);
    }

    setInterval(createHeart, 300);
  </script>

</body>
</html>
