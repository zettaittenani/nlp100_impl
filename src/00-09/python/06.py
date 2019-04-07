# 06. 集合
# "paraparaparadise"と"paragraph"に含まれる文字bi-gramの集合を,それぞれ, XとYとして求め,XとYの和集合,積集合,差集合を求めよ.さらに,'se'というbi-gramがXおよびYに含まれるかどうかを調べよ.


from functools import reduce
from operator import add


def char_n_gram(s, n):
    chars = [*(reduce(add, s.split()))]
    set_list = [
        *map(lambda x: reduce(add, chars[chars.index(x):(chars.index(x) + n)]), chars)]
    return set(set_list)


x = char_n_gram('paraparaparadise', 2)
y = char_n_gram('paragraph', 2)
print(x)
print(y)
print(x | y)
print(x & y)
print(x - y)
print('se' in x)
print('se' in y)
