# Windows Essential Guides

## Chris Titus Tech's Windows Utility

`irm "https://christitus.com/win" | iex`

- [**Windows Utility Improved for 2024**](https://www.youtube.com/watch?v=5_AaHXrelTE) - Chris Titus Tech
- [**New Windows Tool and MicroWin 5 Minute Install**](https://www.youtube.com/watch?v=92SM8Az5QVM) - Chris Titus Tech

## Formatação e Instalação

- [**Você nunca mais vai querer instalar o Windows de outra forma!**](https://www.youtube.com/watch?v=JzZM0h8_8T8) - Diolinux
- [**FORMATANDO E OTIMIZANDO O WINDOWS 10...**](https://www.youtube.com/watch?v=H0tVZtcckQI&list=PL-XVOHQfzk3jkxnun2cTYShMkqNWqVxrp&index=7) - Tito Tech
- [**FORMATANDO E OTIMIZANDO O WINDOWS 11...**](https://www.youtube.com/watch?v=rTbFY1mVGDA&list=PL-XVOHQfzk3jkxnun2cTYShMkqNWqVxrp&index=6) - Tito Tech
- [**TUTORIAL COMPLETO OTIMIZANDO E FORMATANDO WINDOWS 10...**](https://www.youtube.com/watch?v=EzMxyxrT-rQ) - Tito Tech

## Configuração e Otimização

- [**GUIA COMPLETO: O que fazer APÓS FORMATAR o Windows?**](https://www.youtube.com/watch?v=wxY2roIWvAs) - Canal WINchester
- [**How PROS Optimize Windows For FPS Boost (Optimization Guide)**](https://www.youtube.com/watch?v=eSebSEeejOM) - Codelife
- [**DICAS PARA RESOLVER PROBLEMAS E DEFEITOS NO SEU PC - VEJA COMO DIAGNOSTICAR**](https://www.youtube.com/watch?v=HZOGmQsU63o) - Tito Tech
- [**MSI AFTERBURNER - MONITORE PROCESSADOR E PLACA DE VIDEO...**](https://www.youtube.com/watch?v=ttNruSuGKgE) - Tito Tech
- [**OTIMIZANDO O RYZEN R5 8600G NA B650M ASROCK - MAIS FPS DE GRAÇA**](https://www.youtube.com/watch?v=5qRkHgaVULQ) - Tito Tech
- [**2024 Ultimate Windows Gaming Performance Optimization**](https://www.youtube.com/watch?v=Nnb5WNdQt5M) - TroubleChute

## Otimização para Jogos

- Aceleração do mouse OFF
- Energia: `powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb6`
- DDU + Driver Nvidia/Driver AMD
- Escalonamento: Tela cheia (GPU + Substituir)
- Pausar atualizações
- Efeitos de transparência DESLIGADOS
- Barra de Jogos do XBOX DESLIGADA
  - `Computador\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR`: AppCaptureEnabled = 0
- Agendamento de GPU acelerado por hardware PADRÃO (DESLIGADO se houver algum problema)
- Modo de Jogo LIGADO
- Aplicativos em segundo plano DESLIGADOS
  - Editar política de grupo: Modelos Administrativos > Componentes do Windows > Privacidade de Aplicativos: aplicativos em segundo plano DESLIGADOS
- Desativar aceleração gráfica em aplicativos
- Estado P2 da CUDA FORÇADO DESLIGADO

## Outros

unnatend.xml
criar instalacao automatizada

winstall para pegar id dos pacotes de apps
