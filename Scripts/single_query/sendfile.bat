@echo off
setlocal enabledelayedexpansion

echo sendfile N f
echo copy a file f to N workers.

SET ip0=50
set pwd=-pw root00
set usr=matsu-lab
set dstdir=/home/matsu-lab/hao/

set /a end=%1-1


for /L %%i IN (0,1,%end%) DO (
  SET /A ip0 = %%i + 50
  pscp %pwd% %2 %usr%@172.21.52.!ip0!:%dstdir%/
)

 