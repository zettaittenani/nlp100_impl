# 09. Typoglycemia
# スペースで区切られた単語列に対して,各単語の先頭と末尾の文字は残し,それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ.ただし,長さが4以下の単語は並び替えないこととする.適当な英語の文(例えば"I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .")を与え,その実行結果を確認せよ.


import random as rand


def shuffle(s):
    s_len = len(s)
    if s_len < 4:
        return s
    else:
        return (s[0] + ''.join(rand.sample(s[1:-1], (s_len - 2))) + s[-1])


def solve(s):
    splitted = s.split()
    return ' '.join([*map(lambda s: shuffle(s), splitted)])


print(solve("I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."))
