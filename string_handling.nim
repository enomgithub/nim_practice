import strutils  # 文字列操作用モジュール
import unicode   # Unicode 操作用モジュール

# ASCII文字
echo "# char"
let ch: char = 'a'
echo "ch: ", ch
echo "code of ch: ", ch.ord
echo ""

# ASCII文字列
echo "# string"
let str: string = "abc"

# 一文字ずつ表示する
for i in 0..2:
  echo "str[", i, "]: ", str[i]

# 同様に、一文字ずつ表示する
for i, c in str:
  echo "str[", i, "]: ", c
echo ""

# マルチバイト文字の文字列
echo "# string (multibyte character)"
let strJp: string = "テスト"
echo "length = ", strJp.len  # 長さは9
echo "strJp: ", strJp        # テスト と表示

# 一文字ずつ表示できない
for i in 0..strJp.len:
  echo "strJp[", i, "]: ", strJp[i]

# 同様に、一文字ずつ表示できない
for i, c in strJp:
  echo "strJp[", i, "]: ", c

# 文字コードを1バイトずつ表示
for i in 0..strJp.len:
  echo "strJp[", i, "].ord: ", strJp[i].ord

# unicode モジュールを使って文字列を Unicode として扱い、UTF-8 へエンコードする
# unicode モジュールのドキュメントを参照
if strJp.validateUtf8 == -1:
  echo "length of Unicode strJp: ", strJp.runeLen
  for u in strJp.toRunes:
    echo u.toUTF8

  # テスト --> ラスト に置換
  for u in strJp.replace("テ", "ラ").toRunes:
    echo u.toUTF8

# 編集距離を求める
echo editDistance("santa", "satan")  # --> 2

# マルチバイト文字には対応しない
echo editDistance("ニーモニック", "デモニック")  # --> 4（正しくは2）
