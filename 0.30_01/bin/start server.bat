@echo off
set /p ram=How much RAM would you like to allocate to the server? (in megabytes; for example, 2048): 
set /p rc=Would you like to connect to the Retrocraft network and have your server listed in https://retrocraft.net/servers.php? (Y/N): 
if %rc%==Y goto rctrue
if %rc%==y goto rctrue
if %rc%==N goto rcfalse
if %rc%==n goto rcfalse

:rctrue
java -Xmx%ram%M -cp cloth-server-rc.jar -Dhttp.proxyHost=classic.retrocraft.net -Dhttp.proxyPort=80 com.mojang.minecraft.server.MinecraftServer
pause
exit

:rcfalse
java -Xmx%ram%M -cp cloth-server.jar com.mojang.minecraft.server.MinecraftServer
pause
exit