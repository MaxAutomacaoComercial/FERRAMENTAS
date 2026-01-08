@echo off
cls
echo ==========================================
echo   Baixando Inovafarma v1.79.4... Aguarde!
echo ==========================================

set "URL=https://github.com/precisaosistemas/inovafarma/releases/download/v1.79.4/inovafarma-1.79.4.exe"
set "ARQUIVO=inovafarma-1.79.4.exe"

if exist "%ARQUIVO%" del "%ARQUIVO%"

powershell -Command "(New-Object Net.WebClient).DownloadFile('%URL%', '%ARQUIVO%')"

IF NOT EXIST "%ARQUIVO%" (
    echo ERRO: o download falhou!
    pause
    exit /b
)

echo.
echo Download concluído!
echo Executando o instalador...

start "" "%ARQUIVO%"

exit
