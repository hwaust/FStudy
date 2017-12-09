@echo off
set pwd=-pw root00
set cmd=-m mkdir.txt
set usr=matsu-lab
set src=g:\data\fragment\xmark1_4_20K_20171126
set dst=/home/matsu/hao/data/xmark1_4_20K.xml


for %%i in (50 51 52 53 54 55 56 57 58 59 60 61 62 63) do (
putty -ssh %usr%@172.21.52.%%i %pwd% %cmd% 
)

echo complete.