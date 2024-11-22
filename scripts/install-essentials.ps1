# Script PowerShell para instalação de aplicativos essenciais no Windows usando Winget

# Função para verificar a disponibilidade do Winget
Function Check-Winget {
    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
        Write-Error "Winget não está instalado no sistema. Instale-o antes de executar este script."
        Exit 1
    }
}

# Função para instalar aplicativos
Function Install-App {
    param (
        [string]$AppName,
        [string]$AppId
    )
    Write-Host "Instalando $AppName..." -ForegroundColor Cyan
    winget install -e --id=$AppId --silent --accept-package-agreements --accept-source-agreements
    if ($?) {
        Write-Host "$AppName instalado com sucesso!" -ForegroundColor Green
    } else {
        Write-Host "Falha ao instalar $AppName." -ForegroundColor Red
    }
}

# Verifica se o Winget está disponível
Check-Winget

# Define o dicionário com Nome do Aplicativo e ID
$apps = @{
    # Aplicativos Pessoais
    # "Arc" = "Arc.Browser"
    # "Brave" = "Brave.Brave"
    # "Firefox" = "Mozilla.Firefox"
    # "Google Chrome" = "Google.Chrome"
    "Tor Browser" = "TorProject.TorBrowser"
    # "Zen Browser" = "Zen.Browser"

    # Redes Sociais
    # "Instagram" = "Meta.Instagram"
    # "LinkedIn" = "Microsoft.LinkedIn"
    # "Telegram" = "Telegram.TelegramDesktop"
    # "WhatsApp Beta" = "WhatsApp.Beta"

    # Produtividade
    # "Notepads App" = "JasonSteele.NotepadsApp"
    # "Notion" = "Notion.Notion"
    # "Obsidian" = "Obsidian.Obsidian"

    # Mídia
    # "HandBrake" = "HandBrake.HandBrake"
    # "MPC-HC" = "MPC-HC.MPC-HC"
    # "Spotify" = "Spotify.Spotify"
    # "VLC Media Player" = "VideoLAN.VLC"
}

# Exemplo de uso: Instalação de aplicativos
Write-Host "Iniciando instalação de aplicativos..." -ForegroundColor Yellow

# Loop para instalar todos os aplicativos do dicionário
foreach ($app in $apps.GetEnumerator()) {
    Install-App -AppName $app.Key -AppId $app.Value
}

Write-Host "Instalação concluída! 🎉" -ForegroundColor Green
