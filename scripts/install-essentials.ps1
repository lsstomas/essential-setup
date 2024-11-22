# PowerShell script for installing essential applications on Windows using Winget

# Function to check Winget availability
function Test-WingetAvailability {
    if (-not (Get-Command winget -ErrorAction SilentlyContinue)) {
        Write-Error "Winget is not installed. Please install it before running this script."
        Exit 1
    }
}

# Function to check if an application is already installed
function Test-AppInstalled {
    param (
        [string]$AppId
    )
    winget list --id $AppId | Out-Null
    return $LASTEXITCODE -eq 0
}

# Function to install applications
function Install-Application {
    param (
        [string]$AppName,
        [string]$AppId
    )
    if (Test-AppInstalled -AppId $AppId) {
        Write-Host "$AppName is already installed. Skipping..." -ForegroundColor Yellow
    } else {
        Write-Host "Installing $AppName..." -ForegroundColor Cyan
        winget install --id=$AppId --silent --accept-package-agreements --accept-source-agreements
        if ($?) {
            Write-Host "$AppName installed successfully!" -ForegroundColor Green
        } else {
            Write-Host "Failed to install $AppName." -ForegroundColor Red
        }
    }
}

# Check if Winget is available
Test-WingetAvailability

# Dictionary of applications and Winget IDs
$apps = @{
    # Browsers
    # "Arc" = "Arc.Browser"
    # "Brave" = "Brave.Brave"
    # "Firefox" = "Mozilla.Firefox"
    # "Google Chrome" = "Google.Chrome"
    # "Tor Browser" = "TorProject.TorBrowser"
    # "Zen Browser" = "Zen.Browser"

    # Social Networks
    # "Instagram" = "Meta.Instagram"
    # "LinkedIn" = "Microsoft.LinkedIn"
    # "Telegram" = "Telegram.TelegramDesktop"
    # "WhatsApp Beta" = "WhatsApp.Beta"

    # Productivity
    # "Notepads App" = "JasonSteele.NotepadsApp"
    # "Notion" = "Notion.Notion"
    # "Obsidian" = "Obsidian.Obsidian"

    # Media
    # "HandBrake" = "HandBrake.HandBrake"
    # "MPC-HC" = "MPC-HC.MPC-HC"
    # "Spotify" = "Spotify.Spotify"
    # "VLC Media Player" = "VideoLAN.VLC"

    # Images
    # "Figma" = "Figma.Figma"
    # "GIMP" = "GIMP.GIMP"
    # "ShareX" = "ShareX.ShareX"
    # "Upscayl" = "Upscayl.Upscayl"

    # Documents
    # "Adobe Acrobat" = "Adobe.Acrobat.Reader"
    # "Google Drive" = "Google.Drive"
    # "LibreOffice" = "TheDocumentFoundation.LibreOffice"
    # "LiquidText PDF" = "LiquidText.LiquidText"

    # System Personalization
    # "ExplorerPatcher" = "ExplorerPatcher.ExplorerPatcher"
    # "Files" = "FilesCommunity.Files"
    # "Mica For Everyone" = "MicaForEveryone.MicaForEveryone"
    # "Rectify11" = "Rectify11.Installer"
    # "RoundedTB" = "RoundedTB.RoundedTB"
    # "TranslucentTB" = "TranslucentTB.TranslucentTB"
    # "Windhawk" = "Windhawk.Windhawk"

    # System Management
    # "EaseUS Data Recovery Wizard" = "EaseUS.DataRecoveryWizard"
    # "EaseUS Partition Master" = "EaseUS.PartitionMaster"
    # "Microsoft PC Manager" = "Microsoft.PCManager"
    # "Microsoft PowerToys" = "Microsoft.PowerToys"
    # "Winaero Tweaker" = "Winaero.Tweaker"
    # "WizTree" = "WizTree.WizTree"

    # Utilities
    # "7-Zip" = "7zip.7zip"
    # "Bitwarden" = "Bitwarden.Bitwarden"
    # "EarTrumpet" = "File-New-Project.EarTrumpet"
    # "Everything" = "Voidtools.Everything"
    # "Flow Launcher" = "FlowLauncher.FlowLauncher"
    # "QuickLook" = "PaddyXu.QuickLook"
    # "Revo Uninstaller" = "VSRevoGroup.RevoUninstaller"
    # "uTorrent" = "uTorrent.uTorrent"
    # "WinRAR" = "RARLab.WinRAR"

    # Gaming
    # "Discord" = "Discord.Discord"
    # "Epic Games Store" = "EpicGames.EpicGamesLauncher"
    # "GOG Galaxy" = "GOG.Galaxy"
    # "Steam" = "Valve.Steam"

    # Development Tools
    # "Visual Studio Code" = "Microsoft.VisualStudioCode"
    # "DBeaver" = "DBeaver.DBeaver"
    # "Insomnia" = "Insomnia.Insomnia"
    # "Postman" = "Postman.Postman"
    # "Termius" = "Termius.Termius"
    # "WinMerge" = "WinMerge.WinMerge"
    # "WinSCP" = "WinSCP.WinSCP"

    # Virtualization
    # "VirtualBox" = "Oracle.VirtualBox"
    # "VMware Workstation Player" = "VMware.WorkstationPlayer"
    # "Docker Desktop" = "Docker.DockerDesktop"
    # "WSL 2" = "Canonical.WSL"

    # Runtimes and Environments
    # "Git" = "Git.Git"
    # "Node.js" = "NodeJS.NodeJS"
    # "NVM" = "CoreyButler.NVMforWindows"
    # "Python" = "Python.Python.3"

    # Communication
    # "Gather" = "Gather.Gather"
    # "Slack" = "SlackTechnologies.Slack"
}

# Start the application installation process
Write-Host "Starting application installation..." -ForegroundColor Yellow

# Loop through the dictionary to install all applications
foreach ($app in $apps.GetEnumerator()) {
    Install-Application -AppName $app.Key -AppId $app.Value
}

Write-Host "Application installation completed successfully!" -ForegroundColor Green
