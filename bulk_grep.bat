@echo off

rem +----------------------------------------------------------+
rem | �����̕������ꊇ��������o�b�`�ł��B(�ꊇgrep)
rem | ���݂����ꍇ��[�Z]�A���݂��Ȃ��ꍇ��[�~]���o�͂���܂��B
rem | �ȉ��̎菇�Ŏg�p���Ă��������B
rem |   1. ���[�U�[�ϐ����v���W�F�N�g�ɍ��킹�ď��������B
rem |   2. ���o�b�`�����s�B
rem +----------------------------------------------------------+

rem --- ���[�U�[�ϐ� ---
rem �����Ώۂ̃t�H���_�p�X
set SEARCH_TARGET_DIR=C:\�Ǘ�\01.git\bulk_grep\grep_test\target
rem ������������������`�����t�@�C���̃p�X
set SEARCH_STRIGS_FILE=C:\�Ǘ�\01.git\bulk_grep\grep_test\strings.txt

SETLOCAL enabledelayedexpansion

@echo --- start ---
cd %SEARCH_TARGET_DIR%
for /f %%a in (%SEARCH_STRIGS_FILE%) do (
	findstr -n -s %%a *.* > nul
	if !ERRORLEVEL! == 0 (
		set /p= [�Z]< nul
	) else (
		set /p= [�~]< nul
	)
	echo  %%a
)

@echo --- end ---
pause