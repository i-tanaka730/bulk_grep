@echo off

rem +----------------------------------------------------------+
rem | 複数の文字を一括検索するバッチです。(一括grep)
rem | 存在した場合は[〇]、存在しない場合は[×]が出力されます。
rem | 以下の手順で使用してください。
rem |   1. ユーザー変数をプロジェクトに合わせて書き換え。
rem |   2. 当バッチを実行。
rem +----------------------------------------------------------+

rem --- ユーザー変数 ---
rem 検索対象のフォルダパス
set SEARCH_TARGET_DIR=C:xxx
rem 検索したい文字列を定義したファイルのパス
set SEARCH_STRIGS_FILE=C:xxx\xxx.txt

SETLOCAL enabledelayedexpansion

@echo --- start ---
cd %SEARCH_TARGET_DIR%
for /f %%a in (%SEARCH_STRIGS_FILE%) do (
	findstr -n -s %%a *.* > nul
	if !ERRORLEVEL! == 0 (
		set /p= [〇]< nul
	) else (
		set /p= [×]< nul
	)
	echo  %%a
)

@echo --- end ---
pause
