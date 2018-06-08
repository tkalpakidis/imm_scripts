@echo on
if exist log*.txt del /F log*.txt
rem enter user and password below
for /f %%i in (IMM-list.txt) do (
echo y | plink -ssh YOUR_USER@%%i -pw ***** -t "info" >>log_imm_cli.txt 2>&1
echo y | plink -ssh YOUR_USER@%%i -pw ***** -t "clearlog" >>log_imm_cli.txt 2>&1
)
