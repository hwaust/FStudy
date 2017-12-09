@echo off
setlocal enabledelayedexpansion

echo script format: copyXMLdata N datafolder, where 
echo N is the number of servers,
echo datafolder is the name of the folder in g:\data\fragments\, such as xmark1_4_20K_20171126

SET ip0=50
set pwd=-pw root00
set usr=matsu-lab
set srcdir=g:\data\fragments\%2
set dstdir=/home/matsu-lab/hao
set dstname=%2.xml
set /a end=%1-1


for /L %%i IN (0,1,%end%) DO (
  SET /A ip0 = %%i + 50 
  pscp %pwd% %srcdir%\mfrag%%i.xml %usr%@172.21.52.!ip0!:%dstdir%/data/%dstname%
)

 