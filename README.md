# Web Development Environment Setup Scripts

> Scripts for Windows 10 and macOS X to install web development tools

**Absolutely NO WARRANTIES or GUARANTEES are provided.**

## Minimum System Requirements

**MacOS X:** macOS Sierra v10.12.6+ with Terminal (Bash or Oh My Zsh)

**Windows 10:** Windows 10 Pro v1703+ with PowerShell v5.1+ (Recommended: Powershell Core 7)

## Install

Execute the following command in for you system to begin installation:

### MacOS Terminal

```bash
bash <(wget -O - https://git.io/JUNhm)
```

- Installs from this repo on [GitHub](https://git.io/JUNhm)

### Windows Powershell

```powershell
Install-Script -Name setup-windows-dev-env
setup-windows-dev-env.ps1
```

- Installs from [PowerShell Gallery](https://www.powershellgallery.com/packages/setup-windows-dev-env).

## Manual Installation Steps

If it irks you to run scripts automatically from the internet (and in 99% of cases it should), then you can clone this repo and install the scripts manually.

### MacOS Terminal

- In the folder where you've cloned this project, execute:

```bash
chmod a+x setup-mac-dev-env.sh
./setup-mac-dev-env.sh
```

### Windows Powershell

- In the folder where you've cloned this project, execute:

```powershell
Set-ExecutionPolicy Unrestricted; .\setup-windows-dev-env.ps1
```

If you're interested in developing your own scripts and publishing them, check out https://github.com/PowerShell/PowerShell.
