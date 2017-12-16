@echo off

SET jvm=-Xmx16g -Xms4g
SET app=-cp bxstudy.jar fragmentation.exe.QueryEvaluatorDPS
SET ips=-iplist range:172.21.52.50:16 
SET dbs=-dblist xmark600_16_4M:16 
SET f=-f g:\data\fragments\xmark600_16_4M_20171126 

java %jvm% %app% %ips% %dbs% %f% -key %1.dps -p %2 -debug %3 -serial %4
