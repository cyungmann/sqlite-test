Set-StrictMode -Version 3
$ErrorActionPreference = 'Stop'

Remove-Item -Force -Recurse SqliteTest/bin -ErrorAction SilentlyContinue
Remove-Item -Force -Recurse SqliteTest/obj -ErrorAction SilentlyContinue
dotnet publish --runtime linux-x64 --configuration Release
docker build SqliteTest/bin/Release/net6.0/linux-x64/publish/ --file Dockerfile --tag sqlite-test
docker run sqlite-test