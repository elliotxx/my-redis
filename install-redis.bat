@echo off
set cur_path=%cd%

echo ��� path ������������
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_SZ /d "%path%;%cur_path%" /f

echo ���� start-redis.bat �����ű�����
echo "%cur_path%\redis-server.exe" "%cur_path%\redis.windows.conf" > start-redis.bat

echo Redis 3.2.100 ��װ��ɣ�
pause

