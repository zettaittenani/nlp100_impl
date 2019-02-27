# 03. 円周率
# "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."という文を単語に分解し,各単語の(アルファベットの)文字数を先頭から出現順に並べたリストを作成せよ.


def solve(s):
    return [*map(lambda x: len(x), (e[0:-1] if (e[-1] == ',' or e[-1] == '.') else e for e in s.split()))]


print(solve('Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics'))
