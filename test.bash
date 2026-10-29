#!/bin/bash
# SPDX-FileCopyrightText: 2026 Chihiro Watanabe
# SPDX-License-Identifier: BSD-3-Clause

ng () {                        # 関数ngの定義
        echo ${1}行目のテスト失敗
        res=1                  # 失敗したことを記録
}

res=0                            # 0: 失敗なし（ngが呼ばれると1になる）

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK

exit $res     # 終了ステータスを返して終了
