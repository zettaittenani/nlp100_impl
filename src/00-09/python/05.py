# 05. n-gram
# 与えられたシーケンス(文字列やリストなど)からn-gramを作る関数を作成せよ.この関数を用い,"I am an NLPer"という文から単語bi-gram,文字bi-gramを得よ.


from functools import reduce
from operator import add


def word_n_gram(s, n):
    splitted = s.split()
    return [*map(lambda x: splitted[splitted.index(x):(splitted.index(x) + n)],
                 splitted)]


def char_n_gram(s, n):
    chars = [*(reduce(add, s.split()))]
    return [*map(lambda x: chars[chars.index(x):(chars.index(x) + n)],
                 chars)]


print(word_n_gram('I am an NLPer', 2))
print(char_n_gram('I am an NLPer', 2))
