+++
author = "maeda"
title = "内積"
date = "2022-08-19T06:52:17Z"
description = ""
tags = [
    "ベクトル",
    "内積",
]
categories = [
    "ベクトル解析",
]
series = []
aliases = ["ドット積"]
draft = false
mathjax = true
+++


# 定義

> $R$ 上のベクトル空間を $V$ とする．写像 $\langle \cdot, \cdot \rangle : V \times V \to R$ が次の性質を持つとき，この写像を $V$ の内積という．

$$
\begin{aligned}
&1. \quad
\langle \boldsymbol{x}, \boldsymbol{x} \rangle \ge 0
\quad
\text{(等号条件 $\boldsymbol{x} = \boldsymbol{0}$)}
\cr
&2. \quad
\langle \alpha \boldsymbol x + \beta \boldsymbol x^\prime , y \rangle =
\alpha \langle \boldsymbol x , \boldsymbol y \rangle
+
\beta \langle \boldsymbol x^\prime, \boldsymbol y \rangle
\cr
&3. \quad
\langle \boldsymbol x, \boldsymbol y \rangle =
\langle \boldsymbol y, \boldsymbol x \rangle
\end{aligned}
$$


この内積が一つ定められたベクトル空間を計量ベクトル空間や内積空間という．

## 注意

ベクトル空間 $V$ に対して，内積は一意的でない．


# 性質

性質2, 3 から次の性質が成り立つ
$$
4. \quad
\langle
    \boldsymbol x, \alpha \boldsymbol y + \beta \boldsymbol y^\prime
\rangle =
\alpha
\langle \boldsymbol x , \boldsymbol y \rangle
+
\beta
\langle \boldsymbol x, \boldsymbol y^\prime \rangle
$$

性質2, 4 より内積は各変数について線形なので内積は2重線形関数となる．

{{% accordion title="もっと詳しく" %}}
この本文はデフォルトでは隠されていて、クリックで見えるようになります。

- サンプルコード
- 補足説明

$$
f = \partial g
$$

などに使うと便利です。
{{% /accordion %}}




