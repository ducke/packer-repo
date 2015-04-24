@echo off
SETLOCAL

PATH=C:\dev\packer;%PATH%

SET HYPERV_BUILDER=hyperv-iso
SET PACKER_VARS=
SET ISO_URL=D:\ISO\SW_DVD5_Windows_Svr_Std_and_DataCtr_2012_R2_64Bit_English_Core_MLF_X19-05182.ISO
SET ISO_CHECKSUM=

packer build --debug -only=%HYPERV_BUILDER% %PACKER_VARS% -var "iso_url=%ISO_URL%" -var "iso_checksum=%ISO_CHECKSUM%" win2012r2-standard.json