# Windows

## O que fazer após formatar?

- Atualizar sistema (Windows Update)
- Atualizar apps nativos (Microsoft Store)
  - `winget upgrade --all`
- Rectify11
- Instalação de drivers (APENAS NO SITE DA FABRICANTE)
- Configurações e otimização do sistema
- Instalação de softwares (SCRIPT)
- Fixar pastas no acesso rápido
- Habilitar visualização de extensões de arquivos
- Configurar para o startup do explorador de arquivos abrir no 'Início'
- Configurações de Modos de exibição:
  - Iniciar janelas de pastas em um processo separado
  - Restaurar janelas de pastas anteriores no logon
- Aplicativos padrão
- Opções de conta: aplicativos reiniciáveis
- Região: USA (traz benefícios)
- Habilitar opção de finalizar tarefas
- Configurar horário ativo
- Aplicativos de inicialização

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

[Video sobre](https://www.youtube.com/watch?v=wxY2roIWvAs)
