# PowerShell runner for AutoPassword project
# Right-click and "Run with PowerShell" or run from a terminal:
#    .\run-autopassword.ps1
# This script will attempt to find Python and run autopassword.py with GUI if available.

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Push-Location $scriptDir

# Try common python executables
$pyCandidates = @("python", "python3", "py")
$pythonExe = $null
foreach ($c in $pyCandidates) {
    $which = Get-Command $c -ErrorAction SilentlyContinue
    if ($which) {
        $pythonExe = $which.Path
        break
    }
}

if (-not $pythonExe) {
    Write-Host "Python not found in PATH. Please install Python 3 and ensure 'python' is on PATH." -ForegroundColor Yellow
    Pause
    Pop-Location
    exit 1
}

# Prefer to run GUI if Tkinter available, else run CLI
# We'll attempt to run with --gui; if that errors, user can rerun manually.
& $pythonExe autopassword.py --gui

Pop-Location
