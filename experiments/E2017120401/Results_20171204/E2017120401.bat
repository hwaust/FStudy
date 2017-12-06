@echo off

REM There are two arguments: key and stoarge
REM key is the key for query, such as xm1, xm2, etc.
REM storage means where to store data, such as mem or disk.

set vms=-Xmx12g -Xms2g
set app=-cp bxstudy.jar basex.ORIG 
set db=-db xmark600
set runs=-run 5
set query=-query %1.org
set folder=-f H:\data\results
set storage=-st %2

echo java %vms% %app% %db% %runs% %query% %folder% %storage% 
java %vms% %app% %db% %runs% %query% %folder% %storage%
 
 
 