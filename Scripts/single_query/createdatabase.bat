@echo off
setlocal enabledelayedexpansion

SET ip0=50
set pwd=-pw root00
set cmd=-m mkdb.txt
set usr=matsu-lab
set srcdir=g:\data\fragments\xmark1_4_20K_20171126
set dstdir=/home/matsu-lab/hao/data
set dstname=xmark1_4_20K.xml
set /a end=%1-1


for /L %%i IN (0,1,%end%) DO (
  SET /A ip0 = %%i + 50 
  putty -ssh %usr%@172.21.52.!ip0! %pwd% %cmd%
)




 