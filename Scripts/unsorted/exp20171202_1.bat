@echo off

 
set vms=-Xmx12g -Xms2g
set app=-cp bxstudy.jar basex.ORIG 
set db=-db xmark600
set runs=-run 5
set query=-query xm6.org
set folder=-f H:\data\results
set storage=-st mem
 
java %vms% %app% %db% %runs% %query% %folder% %storage%
 
 
 