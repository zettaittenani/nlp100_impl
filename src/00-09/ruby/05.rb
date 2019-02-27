# 05. n-gram
# 与えられたシーケンス(文字列やリストなど)からn-gramを作る関数を作成せよ.この関数を用い,"I am an NLPer"という文から単語bi-gram,文字bi-gramを得よ.

def word_n_gram(s, n)
  s = s.split
  c = s.count
  return if c < n || c == 0 || n == 0

  (0..(c - n)).map do |i|
    s[i..(i + n - 1)].join('-')
  end
end

def char_n_gram(s, n)
  chars = s.gsub(' ', '')
  len = chars.length
  return if len < n || len == 0 || n == 0

  (0..(len - n)).map do |i|
    chars[i..(n + i - 1)]
  end
end

def solve
  raw = 'I am an NLPer'
  p word_n_gram(raw, 2)
  p char_n_gram(raw, 2)
end
