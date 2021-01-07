::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcACHMGeGIrof/eX+4f6UnmwZWOsDVZab6aCbJuYvyUrpZZ8h02hmm84PBBRnfBulUgwxqmZN+GGdMqc=
::fBE1pAF6MU+EWHreyHcjLQlHcACHMGeGIrof/eX+4f6UnmwZWOsDVZab6aCbJuYvyUrpZZ8h02hmj8wJGFVdZhfL
::fBE1pAF6MU+EWHreyHcjLQlHcACHMGeGIrof/eX+4f6UnmwZWOsDVZab6aCbJuYvyUrpZZ8h02hmudgPBRJkeh28YAAmo3tRommAVw==
::fBE1pAF6MU+EWHreyHcjLQlHcACHMGeGIrof/eX+4f6UnmwZWOsDVZab6aCbJuYvyUrpZZ8h02hmutkZGB4YWB25bQom6T8M5CrVC+W6jCnoRk2a2kg/F2pmhGvRnmU+eNYI
::fBE1pAF6MU+EWHreyHcjLQlHcACHMGeGIrof/eX+4f6UnmwZWOsDVZab6aCbJuYvyUrpZZ8h02hmudgPBRJkdwbsfRoksA4=
::fBE1pAF6MU+EWHreyHcjLQlHcACHMGeGIrof/eX+4f6UnmwZWOsDVZab6aCbJuYvyUrpZZ8h02hmudgPBRJkdwbsfQs7vmBL1g==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFB9RQAi+GGStCLkT6ezo086hiGBTXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAl3MbyXoZg==
::ZQ05rAF9IAHYFVzEqQIZO1tdWESmM3y0RroOqMLu/P7Hj0h9
::eg0/rx1wNQPfEVWB+kM9LVsJDCCNK2X6Cadcxufvjw==
::fBEirQZwNQPfEVWB+kM9LVsJDCmDJWm/RpET/+a7wPjHl11CNA==
::cRolqwZ3JBvQF1fEqQIzIB5XR0SVNG6uDrAOqPzz6qqQp08OXfY6OIbImqGeYO8BqkHrYphjtg==
::dhA7uBVwLU+EWG2M8WUxJR5GVkShE0+fZg==
::YQ03rBFzNR3SWATE21I1JlZnQxGQP276L6Zc3OD+r92Guw1GHYI=
::dhAmsQZ3MwfNWATExkc8LRpHSQDCM3u/CPgP5/3p7O/Ht0MZUfB/X7/3zOfAQA==
::ZQ0/vhVqMQ3MEVWAtB9weFUBAlfMbQs=
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRmt5wIpJw5GDAKDKmSvFLwI7ajs6uiUq1kYFOYwb4GEmoSBN+UB70Gkd49twX1fjIsKHhRVPgelZxchvWdO+AQ=
::Zh4grVQjdCyDJGyX8VAjFB9RQAi+GGS5E7gZ5vzo08uDrkQheft/S5vO3LKyBO8E5AXieoRt82xfitIDAh4YcQDrRBonvS5vs1ihONCS8wnuWAis8E4iAmp6giPfnmsRdcB82u4GnSWm+S0=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
::Created by TheGamerz CODE
::Licenced GPLv3
::Hides unnecessery files.
color 0f
attrib +h wget.exe
attrib +h cecho.exe
attrib +h downorjustme
attrib +h it'sdowni
attrib +h it'supy
attrib +h colorchar.exe
mode 1500
::Check if log-file by wget exist,
::If it's exist, it will hide it.
if exist .wget-hsts ( 
 goto hidden
) else (
 goto Menu
)

:hidden
attrib +h .wget-hsts>nul
goto Menu

:Menu
::Main Menu
title Please wait...
color 0f
cls
cecho {0f}optimizing this application and initializing...{0b}(This may take a few moment...){\n}{#}
cls
title Is it Down for Everyone or Just Me?
type downorjustme
cecho {\n}
cecho {0b}Is this {0a}website {0c}down{09}???{\n}
call :userinput
set /p website=
cls
cecho {0a}Please {0d}wait...{04}(May take up to {0a}5 Second){\n}
::main script
wget --timeout=5 --tries=1 --quiet --spider %website% >nul 2>&1 && goto Up || goto down
:: Down here are the result
:down
cls
color 0b
title %computername%,%website% is DOWN... :(
type it'sdowni
pause
goto Quest

:Up
cls
color 0b
title %computername%,%website% is UP! :)
type it'supy
pause
goto Quest
::question
:Quest
cls
cecho {0a}check another? y/n?{\n}
call :userinput
set /p checkan= 
if %checkan%== y goto Menu
if %checkan%== n goto bye
if %checkan%== Y goto Menu
if %checkan%== N goto bye
echo invalid input...
goto Quest

:bye
cecho {0a}Bye {0b}%computername%!{\n}
cecho {03}press any key to exit
pause>nul

:userinput
call colorchar.exe /0d "-"
call colorchar.exe /0b "> "
goto :eof