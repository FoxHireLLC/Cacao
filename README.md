# 🚀 Boxstarter Installation Guide

This guide leverages [Boxstarter](http://boxstarter.org) and [Chocolatey](http://chocolatey.org) to quickly set up the essential developer tools used for daily productivity.  

For a deeper dive into the automation process, see my blog post:  
👉 [Automating My Development Machine Installation](https://laurentkempe.com/2018/06/01/Automating-development-machine-installation/)

Some script components are adapted from Microsoft’s [windows-dev-box-setup-scripts](https://github.com/Microsoft/windows-dev-box-setup-scripts).

---

## 📋 Prerequisites

Before you begin, ensure the following:  
- You are running **Windows 10 or later**.  
- You have **administrative privileges** on your machine.  
- PowerShell execution policy allows remote scripts:  
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```  
- Internet connection is available (required to fetch and install packages).  

---

## 📦 Installation Options

Choose one or more of the following preconfigured toolsets to install:  

- [**Install Minimum Tools**](http://boxstarter.org/package/url?https://raw.githubusercontent.com/FoxHireLLC/Cacao/refs/heads/master/Minimum.ps1)  
  *Sets directory settings, removes garbage apps, and installs Chrome, Slack, and OpenVPN.*  

- [**Install Normal Tools**](http://boxstarter.org/package/url?https://raw.githubusercontent.com/FoxHireLLC/Cacao/refs/heads/master/Normal.ps1)  
  *Standard tools for general productivity and daily use.*  

- [**Install Developer Tools**](http://boxstarter.org/package/url?https://raw.githubusercontent.com/FoxHireLLC/Cacao/refs/heads/master/Developer.ps1)  
  *Extended tools for software engineering and development workflows.*  

- [**Install Ryan’s Tools**](http://boxstarter.org/package/url?https://raw.githubusercontent.com/FoxHireLLC/Cacao/refs/heads/master/Ryan.ps1)  
  *Customized toolset tailored to Ryan’s development environment.*  

---

## 🛠️ Step-by-Step Workflow

1. **Open PowerShell as Administrator.**  
   Right-click the PowerShell icon → *Run as Administrator*.  

2. **Verify Execution Policy.**  
   ```powershell
   Get-ExecutionPolicy -List
   ```  
   Ensure `CurrentUser` is set to `RemoteSigned`.
   
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```  

3. **Choose a Toolset.**  
   Click one of the links above (*Minimum, Normal, Developer, or Ryan’s Tools*) to trigger Boxstarter.  

4. **Boxstarter Runs Automated Setup.**  
   - Installs Chocolatey (if not already installed).  
   - Fetches the script from GitHub.  
   - Sequentially installs packages defined in the script.  

5. **System May Reboot.**  
   Boxstarter automatically resumes installation after reboots.  

6. **Post-Setup – Install Ninja Agent.**  
   ⚠️⚠️⚠️ Finalize the setup with the NinjaOne monitoring agent:  [**Install Ninja Agent**](https://app.ninjarmm.com/agent/installer/b77fc1d6-e9bb-49bb-9407-46f5b0eeae02/9.0.4639/NinjaOne-Agent-Foxhire-MainOffice-WINDOWSLAPTOP.msi)  

---

## ⏱️ Expected Duration

- **Minimum Tools**: ~5–15 minutes  
- **Normal Tools**: ~10–15 minutes  
- **Developer Tools**: ~20–30 minutes  
- **Ryan’s Tools**: ~15–25 minutes  
*(Varies based on internet speed and system performance.)*  




