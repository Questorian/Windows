PowerShell
----------

First thing we need to do is enable PowerShell scripts to run - We need to set the local PowerShell execution policy. So we need to open an administrative shell, and then start 'powershell.exe' within that:

    get-ExecutionPolicy
    set-ExecutionPolicy Unrestricted
    
    # check again
    get-ExecutionPolicy

You are now ready to roll.

