# 06. 集合
# "paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を,それぞれ, XとYとして求め,XとYの和集合,積集合,差集合を求めよ.さらに,'se'というbi-gramがXおよびYに含まれるかどうかを調べよ.

def char_n_gram(s, n)
  chars = s.gsub(' ', '')
  len = chars.length
  return if len < n || len == 0 || n == 0

  (0..(len - n)).map do |i|
    chars[i..(n + i - 1)]
  end
end

def solve
  raw1 = 'paraparaparadise'
  raw2 = 'paragraph'
  x = char_n_gram(raw1, 2)
  y = char_n_gram(raw2, 2)
  p x
  p y
  p x | y
  p x & y
  p x - y
  p x.include?('se')
  p y.include?('se')
end
