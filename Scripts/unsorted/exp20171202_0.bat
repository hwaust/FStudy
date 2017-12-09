@echo off

echo xmark factor, i.e 600 to xmark600.
echo runningTime, the number of runs.

set vms=-Xmx6g -Xms6g
set db=-db xmark%1
set runs=-run %2

for %%i in (2 3 4 5 6) do (
echo java %vms% -cp bxstudy.jar basex.ORIG %db% %runs% -query xm%%i.org
java %vms% -cp bxstudy.jar basex.ORIG %db% %runs% -query xm%%i.org
)

for %%i in (2 3 4 5 6) do (
echo java %vms% -cp bxstudy.jar basex.ORIG %db% %runs% -query xm%%i.org -st mem
java %vms% -cp bxstudy.jar basex.ORIG %db% %runs% -query xm%%i.org -st mem
)
