@echo off 

echo script format: N cmdfile, where
echo N is the number of servers, 
echo cmdfile is the file that contains commands.

set ips=-iplist range:172.21.52.50:4
set dbs=-dblist xmark1_16_20K:4
set f=-f g:\data\fragments\xmark1_4_20K_20171126

echo start
for %%i in (1 2 3 4 5 6) do (
echo java -Xmx6g -Xms6g -cp bxstudy.jar fragmentation.exe.QueryEvaluator %ips% %dbs% -key xm%%i.org %f% -sys win
java -Xmx6g -Xms6g -cp bxstudy.jar fragmentation.exe.QueryEvaluator %ips% %dbs% -key xm%%i.org %f% -sys linux
)
 