# 04. 元素記号
# "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."という文を単語に分解し,1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字,それ以外の単語は先頭に2文字を取り出し,取り出した文字列から単語の位置(先頭から何番目の単語か)への連想配列(辞書型もしくはマップ型)を作成せよ.

def solve
  raw = 'Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.'
  nums = [1, 5, 6, 7, 8, 9, 15, 16, 19].map { |i| i - 1 }
  raw.split.map do |r|
    target = r[r.length - 1]
    if target == ',' || target == '.'
      r[0..(r.length - 2)]
    else
      r
    end
  end.map.with_index do |r, idx|
    if nums.include?(idx)
      r[0]
    else
      r[0] + r[1]
    end
  end.map.with_index do |r, idx|
    {r => (idx + 1)}
  end.reduce(&:merge)
end
