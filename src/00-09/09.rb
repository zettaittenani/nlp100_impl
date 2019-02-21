# 09. Typoglycemia
# スペースで区切られた単語列に対して,各単語の先頭と末尾の文字は残し,それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ.ただし,長さが4以下の単語は並び替えないこととする.適当な英語の文(例えば"I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .")を与え,その実行結果を確認せよ.

def solve
  raw = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
  raw.split.map do |s|
    len = s.length
    if 4 <= len
      s[0] + s[1..(len - 2)].chars.shuffle.reduce(:+) + s[len - 1]
    else
      s
    end
  end.join(' ')
end
