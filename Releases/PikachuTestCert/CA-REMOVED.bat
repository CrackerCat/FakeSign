@echo off
title CA֤��ж�ع��� - Fake
mode con lines=42 cols=60
cls
color 02
echo.
echo.
echo             ##################################
echo             #                                #
echo             #     ***Ƥ����CAж�ع���***     #
echo             #                                #
echo             ##################################
echo.
echo.

regedit.exe /s .\CA-REMOVED.reg
certmgr.exe      -del /all .\ROOTCA-CRT.crt -s -r localMachine AuthRoot
certmgr.exe      -del /all .\ROOTCA-CRT.crt -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\ROOT-CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\ROOT-CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\ROOT-CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\ROOT-CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\CODECA-CRT.crt -s -r localMachine AuthRoot
certmgr.exe      -del /all .\CODECA-CRT.crt -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\CODE-CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\CODE-CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\CODE-CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\CODE-CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\TIMECA-CRT.crt -s -r localMachine AuthRoot
certmgr.exe      -del /all .\TIMECA-CRT.crt -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\TIME-CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\TIME-CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\TIME-CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\TIME-CA-G2.crl -s -r currentUser  AuthRoot

certmgr.exe      -del /all .\UEFICA-CRT.crt -s -r localMachine AuthRoot
certmgr.exe      -del /all .\UEFICA-CRT.crt -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\UEFI-CA-G1.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\UEFI-CA-G1.crl -s -r currentUser  AuthRoot
certmgr.exe -crl -del /all .\UEFI-CA-G2.crl -s -r localMachine AuthRoot
certmgr.exe -crl -del /all .\UEFI-CA-G2.crl -s -r currentUser  AuthRoot