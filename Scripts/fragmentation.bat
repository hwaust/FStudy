@echo off

echo script format: fragmentation xmfactor Ns maxsize
echo xmfactor is the number at the suffix of an xmark file. e.g. 600 to xmark600.

java -Xmx16g -Xms8g -cp bxstudy.jar fragmentation.exe.TreeMaker -db xmark%1 -n %2 -ms %3 -seed 20171126 -f g:\data\fragments
java -Xmx16g -Xms8g -cp bxstudy.jar fragmentation.exe.TreeExporter -db xmark%1 -n %2 -ms %3 -seed 20171126 -f g:\data\fragments