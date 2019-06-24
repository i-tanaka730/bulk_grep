# bulk_grep

## Overview

It is a batch to grep multiple characters at once.

## Usage

#### 1. Git clone
```sh
git clone https://github.com/i-tanaka730/bulk_grep/
```

#### 2. Edit build.bat
```sh
rem 検索対象のフォルダパス
set SEARCH_TARGET_DIR=C:\管理\01.git\bulk_grep\grep_test\target

rem 検索したい文字列を定義したファイルのパス
set SEARCH_STRIGS_FILE=C:\管理\01.git\bulk_grep\grep_test\strings.txt
```

#### 3. Run bulk_grep.bat
```sh
bulk_grep.bat
```

## License
[MIT](https://github.com/i-tanaka730/bulk_grep//blob/master/LICENSE)

## Author
[Ikuya Tanaka](https://github.com/i-tanaka730)
