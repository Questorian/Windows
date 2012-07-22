PowerShell
----------

First thing we need to do is enable PowerShell scripts to run - We need to set the local PowerShell execution policy. So we need to open an administrative shell, and then start 'powershell.exe' within that shell issue the following comands:

    get-ExecutionPolicy
    set-ExecutionPolicy Unrestricted
    
    # check again
    get-ExecutionPolicy

You are now ready to roll - start scripting!

Permissions Note:
-----------------
This is per user and not a system wide setting. This has always worked ok for me but recently it would not let me change the ExecutionPolicy and if I run as administration it works bu this only changes the setting for the administrator. My solution was to give myself full permissions to the key (wiht RegEdit) :

    HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft
        \PowerShell\1\ShellIds\Microsoft.PowerShell

This works, but is really stupid.

Running Scripts
---------------
Lot of Linux/Unix similarity here, but you can use the ./ syntax to run a script, but of-course in PowerShell that would be .\ (dot backslash) just to cause extra problems for those of us that use both platforms. If you use both plagorms, be aware, and pay attention!


Growth of PowerShell
--------------------
The corresponding number of applets for each versino of Windows:
WS08        130 cmdlets
WS08R2      230 cmdlets
WS12       2300 cmdlets

All functionality in WS12 (formerly Windows Server 8) Server Manager can now be scripted with PowerShell. This is part of the so-called "Windows Engineering Criteria".


PowerShell Versions
-------------------
Windows 8 and Server 2012 will ship with PowerShell 3.0.
Windows 7 - PowerShell 2.0
Vista - Powershell 1.0
