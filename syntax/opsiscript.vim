" OpsiScript Syntax Highlighting
" Not perfect, but works for me
" Jan Heinemeyer <j.heinemeyer@isd.uni-hannover.de>

if exists("b:current_syntax")
    syntax clear
    " finish
endif

let b:current_syntax = "opsiscript"

" opsiscript is case insensitve
syntax case ignore

syntax keyword opsiscriptKeyword if else endif not DefVar DefStringList Set
syntax match opsiscriptVariables /\$\h\w*\$/
syntax match opsiscriptComments "\v;.*$"

syntax region opsiscriptString start=/"/ end=/"/ contains=opsiscriptConstants
syntax region opsiscriptString start=/'/ end=/'/ contains=opsiscriptConstants

syntax keyword opsiscriptFunctions comment demandLicenseKey FileExists
            \ FreeLicense getLastExitCode getLastServiceErrorClass
            \ getLastServiceErrorMessage GetProductProperty
            \ GetProductPropertyList GetRegistryStringValue32 HasMinimumSpace
            \ isFatalError LogError Message opsiLicenseManagementEnabled
            \ requiredWinstVersion ShowBitmap splitString Sub takeString

syntax match opsiscriptSection "\[Actions\]"
syntax match opsiscriptSection "^\[Sub_.\+\]$\|^\s*Sub_.\+"
syntax match opsiscriptSection "^\[WinBatch_.\+\]$\|^\s*WinBatch_.\+"
syntax match opsiscriptSection "^\[DosBatch_.\+\]$\|^\s*DosBatch_.\+"
syntax match opsiscriptSection "^\[DosInAnIcon_.\+\]$\|^\s*DosInAnIcon_.\+"
syntax match opsiscriptSection "^\[ShellBatch_.\+\]$\|^\s*ShellBatch_.\+"
syntax match opsiscriptSection "^\[ShellInAnIcon_.\+\]$\|^\s*ShellInAnIcon_.\+"
syntax match opsiscriptSection "^\[ExecWith_.\+\]$\|^\s*ExecWith_.\+"
syntax match opsiscriptSection "^\[Files_.\+\]$\|^\s*Files_.\+"
syntax match opsiscriptSection "^\[Registry_.\+\]$\|^\s*Registry_.\+"
syntax match opsiscriptSection "^\[Patches_.\+\]$\|^\s*Patches_.\+"
syntax match opsiscriptSection "^\[PatchTextFile_.\+\]$\|^\s*PatchTextFile_.\+"
syntax match opsiscriptSection "^\[LinkFolder_.\+\]$\|^\s*LinkFolder_.\+"
syntax match opsiscriptSection "^\[OpsiServiceCall_.\+\]$\|^\s*OpsiServiceCall_.\+"
syntax match opsiscriptSection "^\[PatchHosts_.\+\]$\|^\s*PatchHosts_.\+"
syntax match opsiscriptSection "^\[ExecPython_.\+\]$\|^\s*ExecPython_.\+"
syntax match opsiscriptSection "^\[LdapSearch_.\+\]$\|^\s*LdapSearch_.\+"

syntax match opsiscriptConstants '%ProgramFiles64Dir%'
syntax match opsiscriptConstants '%ProgramFilesDir%'
syntax match opsiscriptConstants '%ProgramFiles32Dir%'
syntax match opsiscriptConstants '%ProgramFilesSysNativeDir%'
syntax match opsiscriptConstants '%SystemRoot%'
syntax match opsiscriptConstants '%System%'
syntax match opsiscriptConstants '%SystemDrive%'
syntax match opsiscriptConstants '%ProfileDir%'
syntax match opsiscriptConstants '%AllUsersProfileDir%'
syntax match opsiscriptConstants '%CommonProfileDir%'
syntax match opsiscriptConstants '%CommonStartMenuPath%'
syntax match opsiscriptConstants '%CommonStartmenuDir%'
syntax match opsiscriptConstants '%CommonAppdataDir%'
syntax match opsiscriptConstants '%CommonDesktopDir%'
syntax match opsiscriptConstants '%CommonStartupDir%'
syntax match opsiscriptConstants '%CommonProgramsDir%'
syntax match opsiscriptConstants '%DefaultUserProfileDir%'
syntax match opsiscriptConstants '%AppdataDir%'
syntax match opsiscriptConstants '%CurrentAppdataDir%'
syntax match opsiscriptConstants '%CurrentStartmenuDir%'
syntax match opsiscriptConstants '%CurrentDesktopDir%'
syntax match opsiscriptConstants '%CurrentStartupDir%'
syntax match opsiscriptConstants '%CurrentProgramsDir%'
syntax match opsiscriptConstants '%CurrentSendToDir%'
syntax match opsiscriptConstants '%CurrentProfileDir%'
syntax match opsiscriptConstants '%UserProfileDir%'
syntax match opsiscriptConstants '%CurrentProfileDir%'
syntax match opsiscriptConstants '%ScriptPath%'
syntax match opsiscriptConstants '%ScriptDir%'
syntax match opsiscriptConstants '%ScriptDrive%'
syntax match opsiscriptConstants '%WinstDir%'
syntax match opsiscriptConstants '%WinstVersion%'
syntax match opsiscriptConstants '%Logfile%'
syntax match opsiscriptConstants '%OpsiScriptHelperPath%'
syntax match opsiscriptConstants '%OpsiTmpDir%'
syntax match opsiscriptConstants '%OpsiLogDir%'
syntax match opsiscriptConstants '%Host%'
syntax match opsiscriptConstants '%PCName%'
syntax match opsiscriptConstants '%UserName%'
syntax match opsiscriptConstants '%IPName%'
syntax match opsiscriptConstants '%IPAddress%'
syntax match opsiscriptConstants '%HostID%'
syntax match opsiscriptConstants '%OpsiserviceURL%'
syntax match opsiscriptConstants '%OpsiServer%'
syntax match opsiscriptConstants '%OpsiDepotId%'
syntax match opsiscriptConstants '%OpsiServiceUser%'
syntax match opsiscriptConstants '%OpsiServicePassword%'
syntax match opsiscriptConstants '%InstallingProdName%'
syntax match opsiscriptConstants '%InstallingProdVersion%'
syntax match opsiscriptConstants '%InstallingProduct%'

hi def link opsiscriptSection       PreProc
hi def link opsiscriptKeyword       Statement
hi def link opsiscriptFunctions     Function
hi def link opsiscriptComments      Comment
hi def link opsiscriptVariables     Identifier 
hi def link opsiscriptString        String
hi def link opsiscriptConstants     Constant
