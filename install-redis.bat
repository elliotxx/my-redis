@echo off
set cur_path=%cd%

echo 添加 path 环境变量……
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_SZ /d "%path%;%cur_path%" /f

echo 创建 start-redis.bat 启动脚本……
echo "%cur_path%\redis-server.exe" "%cur_path%\redis.windows.conf" > start-redis.bat

echo Redis 3.2.100 安装完成！
pause

