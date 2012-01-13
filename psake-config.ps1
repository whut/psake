<#
-------------------------------------------------------------------
Defaults
-------------------------------------------------------------------
<<<<<<< HEAD
$config.buildFileName="default.ps1"
$config.framework = "3.5"
$config.taskNameFormat="Executing {0}"
$config.verboseError=$false
$config.coloredOutput = $true
$config.modules=$null
=======
$psake.config.defaultBuildFileName="default.ps1";
$psake.config.framework = "3.5";
$psake.config.taskNameFormat="Executing {0}";
$psake.config.exitCode="1";
$psake.config.verboseError=$true;
$psake.config.coloredOutput = $false;
$psake.config.modules=(new-object psobject -property @{ autoload=$false })
>>>>>>> parent of d706e52... Configuration from psake-config now supports nested Invoke-Psake invocations

-------------------------------------------------------------------
Load modules from .\modules folder and from file my_module.psm1
-------------------------------------------------------------------
<<<<<<< HEAD
$config.modules=(".\modules\*.psm1",".\my_module.psm1")
=======
$psake.config.modules=(new-object psobject -property @{ autoload=$true})
>>>>>>> parent of d706e52... Configuration from psake-config now supports nested Invoke-Psake invocations

-------------------------------------------------------------------
Use scriptblock for taskNameFormat
-------------------------------------------------------------------
<<<<<<< HEAD
$config.taskNameFormat= { param($taskName) "Executing $taskName at $(get-date)" }
#>
=======
$psake.config.modules=(new-object psobject -property @{ autoload=$true; directory=".\my_modules" })

-------------------------------------------------------------------
Explicitly load module(s)
-------------------------------------------------------------------
$psake.config.modules=(new-object psobject -property @{
    autoload=$false; 
    module=(new-object psobject -property @{path="c:\module1dir\module1.ps1"}), 
           (new-object psobject -property @{path="c:\module1dir\module2.ps1"})
  })
}
#>
>>>>>>> parent of d706e52... Configuration from psake-config now supports nested Invoke-Psake invocations
