# 02. 「パトカー」+「タクシー」=「パタトクカシーー」
# 「パトカー」+「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ.


def solve(a, b):
    a_len = len(a)
    if a_len != len(b):
        return
    ret = ''
    n = 0
    while n < a_len:
        ret += a[n]
        ret += b[n]
        n += 1
    return ret


print(solve('パトカー', 'タクシー'))
