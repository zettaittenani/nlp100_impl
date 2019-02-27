# 03. 円周率
# "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."という文を単語に分解し,各単語の(アルファベットの)文字数を先頭から出現順に並べたリストを作成せよ.

def solve
  raw = 'Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.'
  raw.split.map do |r|
    target = r[r.length - 1]
    if target == ',' || target == '.'
      r[0..(r.length - 2)]
    else
      r
    end
  end.map(&:length)
end
