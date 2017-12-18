# 一行のコメント

#[
  複数行のコメント
  #[
    コメント内のコメント
  ]#
]#

# 再代入可能な宣言
# var 変数名: 型 = 値
var hallo: string = "hallo"

# 再代入不可能な宣言
# let 変数名: 型 = 値
let world: string = "world"

# 標準出力
echo(hallo)

# 括弧なしでも可
echo world

# 文字列を & 演算子で連結して表示
echo hallo & " " & world

# world = "work"  # <-- コンパイルエラー

# 文字列を連結して再代入
hallo = hallo & " " & world
echo hallo

# 文字型
# シングルクオート ' で囲む
let ch: char = 'a'
echo ch

# 文字列型
# ダブルクオート " で囲む
var str1: string = "kitten"
echo str1

# インデクシングできる
echo str1[0]

# 文字列型はゼロ終端（ヌル文字 '\0' で終わる）
if str1[6] == '\0':
  echo "End of string"
else:
  echo "character"

# 文字と文字列は連結可能
echo ch & " " & str1

# str1 の末尾に ch を連結して str1 に代入
str1 &= ch
echo str1

# 整数型（デフォルト）
let i: int = 1
echo "int: i = ", i

# 整数型 8ビット
# 'A' のアスキーコードを代入（c = 65）
let c: int8 = int8('A')
echo "int8: c = ", c

# 浮動小数点数型（デフォルト）
let f: float = 1.0
echo "float: f = ", f

# 型変換
# メソッド風の書き方
echo "int --> float: i = ", i.toFloat
echo "float --> int: i = ", f.toInt
echo "int --> char: c = ", c.chr

# 上記と同じ結果
echo "int --> float: i = ", float(i)
echo "float --> int: i = ", int(f)
echo "int --> char: c = ", chr(c)

# if 文を使った代入
let d: int =
  if i == 1: 1
  else: 0
echo "d = ", d
