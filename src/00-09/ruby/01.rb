# 01. 「パタトクカシーー」
# 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ.

def solve
  'パタトクカシーー'.chars.map.with_index { |s, idx| s if idx % 2 == 0 }.compact.reduce(:+)
end
