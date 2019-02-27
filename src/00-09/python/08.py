# 08. 暗号文
# 与えられた文字列の各文字を,以下の仕様で変換する関数cipherを実装せよ.
#
# 英小文字ならば(219 - 文字コード)の文字に置換
# その他の文字はそのまま出力
# この関数を用い,英語のメッセージを暗号化・復号化せよ.


def solve(s):
    splitted = s.split()
    strs = []
    for s in splitted:
        strs.append(
            ''.join([*map(lambda c:
                          chr(219 - ord(c)) if c.islower() else c,
                          list(s))])
        )
    return ' '.join(strs)


print(solve('Watashi NLP chotto dekiru'))
