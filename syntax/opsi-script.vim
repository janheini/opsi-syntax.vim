" Opsi-Script Syntax Highlighting
" Not perfect, but works for me
" Jan Heinemeyer <j.heinemeyer@isd.uni-hannover.de>

if exists("b:current_syntax")
    finish
endif

syntax keyword opsiBasicKeywords if else endif not DefVar DefStringList Set set

syntax keyword opsiFunctions Message comment HasMinimumSpace WinBatch DosBatch DosInAnIcon ShellBatch ShellInAnIcon ExecWith Files Registry Patches PatchTextFile LinkFolder OpsiServiceCall PatchHosts ExecPython LdapSearch ShowBitmap GetProductPropertyList GetProductProperty takeString splitString 

syntax match opsiComments "\v;.*$"

syntax region opsiVariables start=/\v\$/ skip=/\v\\./ end=/\v\$/

syntax match opsiGlobalTextConstants '%ProgramFiles64Dir%'
syntax match opsiGlobalTextConstants '%ProgramFilesDir%'
syntax match opsiGlobalTextConstants '%ProgramFiles32Dir%'
syntax match opsiGlobalTextConstants '%ProgramFilesSys[Nn]ativeDir%'
syntax match opsiGlobalTextConstants '%System[Rr]oot%'
syntax match opsiGlobalTextConstants '%System%'
syntax match opsiGlobalTextConstants '%System[Dd]rive%'
syntax match opsiGlobalTextConstants '%ProfileDir%'
syntax match opsiGlobalTextConstants '%AllUsersProfileDir%'
syntax match opsiGlobalTextConstants '%CommonProfileDir%'
syntax match opsiGlobalTextConstants '%CommonStartMenuPath%'
syntax match opsiGlobalTextConstants '%CommonStartmenuDir%'
syntax match opsiGlobalTextConstants '%CommonAppdataDir%'
syntax match opsiGlobalTextConstants '%CommonDesktopDir%'
syntax match opsiGlobalTextConstants '%CommonStartupDir%'
syntax match opsiGlobalTextConstants '%CommonProgramsDir%'
syntax match opsiGlobalTextConstants '%DefaultUserProfileDir%'
syntax match opsiGlobalTextConstants '%AppdataDir%'
syntax match opsiGlobalTextConstants '%CurrentAppdataDir%'
syntax match opsiGlobalTextConstants '%CurrentStartmenuDir%'
syntax match opsiGlobalTextConstants '%CurrentDesktopDir%'
syntax match opsiGlobalTextConstants '%CurrentStartupDir%'
syntax match opsiGlobalTextConstants '%CurrentProgramsDir%'
syntax match opsiGlobalTextConstants '%CurrentSendToDir%'
syntax match opsiGlobalTextConstants '%CurrentProfileDir%'
syntax match opsiGlobalTextConstants '%UserProfileDir%'
syntax match opsiGlobalTextConstants '%CurrentProfileDir%'
syntax match opsiGlobalTextConstants '%ScriptPath%'
syntax match opsiGlobalTextConstants '%ScriptDir%'
syntax match opsiGlobalTextConstants '%ScriptDrive%'
syntax match opsiGlobalTextConstants '%WinstDir%'
syntax match opsiGlobalTextConstants '%WinstVersion%'
syntax match opsiGlobalTextConstants '%Logfile%'
syntax match opsiGlobalTextConstants '%[Oo]psiScriptHelperPath%'
syntax match opsiGlobalTextConstants '%[Oo]psiTmpDir%'
syntax match opsiGlobalTextConstants '%[Oo]psiLogDir%'
syntax match opsiGlobalTextConstants '%Host%'
syntax match opsiGlobalTextConstants '%P[Cc]Name%'
syntax match opsiGlobalTextConstants '%User[Nn]ame%'
syntax match opsiGlobalTextConstants '%I[Pp]Name%'
syntax match opsiGlobalTextConstants '%I[Pp]Address%'
syntax match opsiGlobalTextConstants '%HostI[Dd]%'
syntax match opsiGlobalTextConstants '%[Oo]psiserviceU[Rr][Ll]%'
syntax match opsiGlobalTextConstants '%[Oo]psiServer%'
syntax match opsiGlobalTextConstants '%[Oo]psiDepotId%'
syntax match opsiGlobalTextConstants '%[Oo]psi[Ss]erviceUser%'
syntax match opsiGlobalTextConstants '%[Oo]psi[Ss]ervicePassword%'
syntax match opsiGlobalTextConstants '%[Ii]nstallingProdName%'
syntax match opsiGlobalTextConstants '%[Ii]nstallingProdVersion%'
syntax match opsiGlobalTextConstants '%[Ii]nstallingProduct%'

let b:current_syntax = "opsi-script"

hi def link opsiBasicKeywords			 LineNr
hi def link opsiFunctions				 NonText
hi def link opsiComments                 Directory
hi def link opsiVariables			     Title 
hi def link opsiGlobalTextConstants      WarningMsg

