@echo off
setlocal enabledelayedexpansion

SET ip0=50
SET /a end=%1-1
SET pwd=-pw root00
SET cmd=-m %2
SET usr=matsu-lab

FOR /L %%i IN (0,1,%end%) DO (
  SET /A ip0 = %%i + 50
  echo putty -ssh %usr%@172.21.52.!ip0! %pwd% %cmd%
  putty -ssh %usr%@172.21.52.!ip0! %pwd% %cmd%
)