import unicode

let ch: char = 'a'
echo "ch: ", ch
echo "code of ch: ", ch.ord

# 文字列
let str: string = "abc"

# 一文字ずつ表示する
for i in [0..2]:
  echo str[i]

# 同様に、一文字ずつ表示する
for c in str:
  echo c

# マルチバイト文字の文字列
let strJp: string = "テスト"
echo "length = ", strJp.len  # 長さは9
echo "strJp: ", strJp        # テスト と表示

# 一文字ずつ表示できない
for i in 0..strJp.len:
  echo "strJp[", i, "]: ", strJp[i]

# 同様に、一文字ずつ表示できない
for c in strJp:
  echo c

for i in 0..strJp.len:
  echo "strJp[", i, "].ord: ", strJp[i].ord

# unicode モジュールを使って文字列を Unicode として扱い、UTF-8 へエンコードする
# unicode モジュールのドキュメントを参照
if strJp.validateUtf8 == -1:
  echo "length of Unicode strJp: ", strJp.runeLen
  for u in strJp.toRunes:
    echo u.toUTF8
