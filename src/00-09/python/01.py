# 01. 「パタトクカシーー」
# 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ.


def solve(s):
    ret = ''
    for i in [*map(lambda x: (x - 1), [1, 3, 5, 7])]:
        ret += s[i]
    return ret


print(solve('パタトクカシーー'))
