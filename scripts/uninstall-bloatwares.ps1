# PowerShell script for uninstalling bloatwares using Winget

# Function to check if an application is already installed
function Test-AppInstalled {
    param (
        [string]$AppId
    )
    winget list --id $AppId | Out-Null
    return $LASTEXITCODE -eq 0
}

# Function to uninstall a package
function Uninstall-Application {
    param (
        [string]$AppName,
        [string]$AppId
    )
    if (Test-AppInstalled -AppId $AppId) {
        Write-Host "Uninstalling $AppName..." -ForegroundColor Cyan
        winget uninstall --id=$AppId --silent
        if ($?) {
            Write-Host "$AppName uninstalled successfully!" -ForegroundColor Green
        } else {
            Write-Host "Failed to uninstall $AppName." -ForegroundColor Red
        }
    } else {
        Write-Host "$AppName is not installed. Skipping..." -ForegroundColor Yellow
    }
}

# Dictionary of bloatware applications and their Winget IDs
$bloatwares = @{
    # "Calculator" = "Microsoft.WindowsCalculator_8wekyb3d8bbwe"
    # "Camera" = "WindowsCamera_8wekyb3d8bbwe"
    # "Clipchamp" = "Clipchamp.Clipchamp_yxz26nhyzhsrt"
    # "Cortana" = "Microsoft.549981C3F5F10_8wekyb3d8bbwe"
    # "Feedback Hub" = "Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe"
    # "Get Help" = "Microsoft.GetHelp_8wekyb3d8bbwe"
    # "Get Started" = "Microsoft.Getstarted_8wekyb3d8bbwe"
    # "Mail and Calendar" = "microsoft.windowscommunicationsapps_8wekyb3d8bbwe"
    # "Microsoft 365 (Office Hub)" = "Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe"
    # "Microsoft People" = "Microsoft.People_8wekyb3d8bbwe"
    # "Microsoft Photos" = "Microsoft.Windows.Photos_8wekyb3d8bbwe"
    # "Microsoft To Do" = "Microsoft.Todos_8wekyb3d8bbwe"
    # "Movies & TV" = "Microsoft.ZuneVideo_8wekyb3d8bbwe"
    # "News" = "Microsoft.BingNews_8wekyb3d8bbwe"
    # "Outlook for Windows" = "Microsoft.OutlookForWindows_8wekyb3d8bbwe"
    # "Power Automate" = "Microsoft.PowerAutomateDesktop_8wekyb3d8bbwe"
    # "Quick Assist" = "MicrosoftCorporationII.QuickAssist_8wekyb3d8bbwe"
    # "Sound Recorder" = "Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe"
    "Sticky Notes" = "MSIX\Microsoft.MicrosoftStickyNotes_6.1.4.0_x64__8wekyb3d8bbwe"
    # "Weather" = "MSIX\Microsoft.BingWeather_4.53.62621.0_x64__8wekyb3d8bbwe"
    # "Windows Clock" = "Microsoft.WindowsAlarms_8wekyb3d8bbwe"
    # "Windows Maps" = "Microsoft.WindowsMaps_8wekyb3d8bbwe"
    # "Windows Media Player" = "Microsoft.ZuneMusic_8wekyb3d8bbwe"
    # "Xbox App" = "Microsoft.GamingApp_8wekyb3d8bbwe"
    # "Xbox Gaming Overlay" = "Microsoft.XboxGamingOverlay_8wekyb3d8bbwe"
    # "Your Phone" = "Microsoft.YourPhone_8wekyb3d8bbwe"
}

# Start the uninstallation process
Write-Host "Starting bloatware uninstallation process..." -ForegroundColor Yellow

foreach ($app in $bloatwares.GetEnumerator()) {
    Uninstall-Application -AppName $app.Key -AppId $app.Value
}

Write-Host "Bloatware uninstallation process completed!" -ForegroundColor Green
