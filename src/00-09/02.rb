# 02. 「パトカー」+「タクシー」=「パタトクカシーー」
# 「パトカー」+「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ.

def solve
  a = 'パトカー'
  b = 'タクシー'
  ret = ''
  (0..(a.length - 1)).each do |i|
    ret += a[i] + b[i]
  end
  ret
end