@echo off
color 3A
title DNF������ By:Cat73 QQ:1901803382
echo ==========================
echo =      DNF������       =
echo = By:Cat73 QQ:1901803382 =
rem �汾�Ź���: ��������_�ܵڼ��θ���
echo =    Ver.20151004_013    =
echo ==========================
echo.

echo ��������DNF�ļ�...

rem ��ȡDNF·��
reg query HKEY_CURRENT_USER\SOFTWARE\Tencent\DNF /v InstallPath > "%Temp%.\_readreg.dat"
FOR /F "tokens=2*" %%A IN ('TYPE "%Temp%.\_readreg.dat" 2^>NUL ^| FINDSTR /I /B /R /C:" *InstallPath *REG_SZ *"') DO (
	SET DNFInstallPath=%%~B
)
del /f /q "%Temp%.\_readreg.dat"
if exist "%DNFInstallPath%" (
    echo �ɹ���ȡDNF��װ·��: %DNFInstallPath%
) else (
    echo ��ȡDNF��װ·��ʧ�ܣ������в����ļ��޷�����
)
rem ��ȡDNF·�����

rem DNFר������
set killdnf="n"
tasklist | find /i "dnf.exe" 1>nul 2>nul && echo ��⵽DNF�������У������в����ļ��޷�����
tasklist | find /i "dnf.exe" 1>nul 2>nul && set /p killdnf=�Ƿ�ر�DNF������(y/n):
if "%killdnf%" == "y" (
    taskkill /f /im dnf.exe 2>nul
)

taskkill /f /im QQLOING.exe 2>nul
taskkill /f /im DNFchina.exe 2>nul
taskkill /f /im TenSafe.exe 2>nul
taskkill /f /im TenSafe_1.exe 2>nul
taskkill /f /im TenSafe_2.exe 2>nul
taskkill /f /im TP3Helper.exe 2>nul
taskkill /f /im TXPlatform.exe 2>nul
taskkill /f /im QQDL.exe 2>nul
taskkill /f /im TenioDL.exe 2>nul
taskkill /f /im tencentdl.exe 2>nul

ping 127.0.0.1 -n 2 1>nul 2>nul

del /f /q %windir%\system32\ddf.ini 2>nul
del /f /q %windir%\system32\error.dd 2>nul
del /f /q %windir%\system32\TesSafe.sys 2>nul
mkdir %windir%\system32\TesSafe.sys\ 1>nul 2>nul

if exist "%DNFInstallPath%" (
	del /f /q %DNFInstallPath%\Tenparty.dat 2>nul
	del /f /q %DNFInstallPath%\TenSLX.dat 2>nul
	del /f /q %DNFInstallPath%\TenSP.dat 2>nul
	del /f /q %DNFInstallPath%\TenSRL.dat 2>nul
	del /f /q %DNFInstallPath%\tseloder.dat 2>nul
	del /f /q %DNFInstallPath%\tsengine.dat 2>nul
	del /f /q %DNFInstallPath%\tsepb.dat 2>nul
	del /f /q %DNFInstallPath%\tsgscan.dat 2>nul
	del /f /q %DNFInstallPath%\LagLog.txt 2>nul
	del /f /q %DNFInstallPath%\start\TenProtect\TenSLX2.dat 2>nul
	
	del /f /s /q %DNFInstallPath%\*.log 2>nul
	del /f /s /q %DNFInstallPath%\*.bak 2>nul
	del /f /s /q %DNFInstallPath%\*.dmp.z 2>nul
	del /f /s /q %DNFInstallPath%\Logs\*.* 2>nul
	del /f /s /q %DNFInstallPath%\start\Cross\Logs\*.* 2>nul
	del /f /s /q %DNFInstallPath%\TCLS\tlog\*.* 2>nul
  del /f /s /q %DNFInstallPath%\TesSafe.sys 2>nul
)

del /f /s /q %userprofile%\AppData\LocalLow\DNF\*.* 2>nul
rem DNFר���������

echo DNF�ļ��������!
echo ����������ϵͳ����(���ļ��϶�������ɾ���ɹ���ʾ�������ǲ�����)

rem ����ϵͳ��������
echo ����������ʱ�ļ��������ļ���Ԥ����ű�... 
del /f /s /q %windir%\*.bak 1>nul 2>nul
del /f /s /q %windir%\prefetch\*.* 1>nul 2>nul
del /f /s /q %windir%\temp\*.* 1>nul 2>nul
del /f /s /q %temp%\*.* 1>nul 2>nul

echo ��������IE��ʱ�ļ�Ŀ¼... 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 1>nul 2>nul

echo ��������ϵͳ��ʱ�ļ� *.tmp *._tmp *.log *.chk *.old �����Ե�... 
del /f /s /q %systemdrive%\*.tmp 1>nul 2>nul
del /f /s /q %systemdrive%\*._mp 1>nul 2>nul
del /f /s /q %systemdrive%\*.log 1>nul 2>nul
del /f /s /q %systemdrive%\*.gid 1>nul 2>nul
del /f /s /q %systemdrive%\*.chk 1>nul 2>nul
del /f /s /q %systemdrive%\*.old 1>nul 2>nul
rem ����ϵͳ�������

echo ����ϵͳ�����������!
pause 
