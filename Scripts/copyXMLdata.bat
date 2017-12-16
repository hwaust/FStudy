@echo off
setlocal enabledelayedexpansion

SET ip0=50
SET /a end=%1-1
SET pwd=-pw root00
SET usr=matsu-lab
SET srcdir=g:\data\fragments\%2
SET dstdir=/home/matsu-lab/hao
SET dstname=%2.xml

for /L %%i IN (0,1,%end%) DO (
  SET /A ip0 = %%i + 50
  echo pscp %pwd% %srcdir%\mfrag%%i.xml %usr%@172.21.52.!ip0!:%dstdir%/data/%dstname%
  pscp %pwd% %srcdir%\mfrag%%i.xml %usr%@172.21.52.!ip0!:%dstdir%/data/%dstname%
)