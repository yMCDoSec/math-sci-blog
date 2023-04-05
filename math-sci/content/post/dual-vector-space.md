+++
author = "深水智史"
title = "双対基底の違和感"
date = "2022-08-31T19:24:58+09:00"
description = ""
tags = ["線形代数", "双対性"
]
categories = ["ベクトル解析30講"
]
aliases = []
draft = false
mathjax = true
+++


## ベクトル解析30講における導入

現在読み進めている志賀浩二著「ベクトル解析30講」において、双対ベクトル空間に関してある疑問を抱いたのでここでまとめておく。

この本では、次のように双対ベクトル空間が定められる。

{{% definition title="定義" label="def-1" %}}

$\boldsymbol{V}$上の線形関数全体の作るベクトル空間を$\boldsymbol{V}$の双対ベクトル空間、あるいは簡単に双対空間といい、$\boldsymbol{V}^*$によって表わす。

{{% /definition %}}

ここで当然、「線形関数とは？」と気になる。

{{% definition title="定義" label="def-2" %}}

写像
$$
\varphi:\boldsymbol{V} \to \boldsymbol{R}
$$

のうち、

$$
\varphi(\boldsymbol{x} + \boldsymbol{y}) = \varphi(\boldsymbol{x}) + \varphi(\boldsymbol{y})
$$

$$
\varphi(\alpha \boldsymbol{x}) = \alpha \varphi(\boldsymbol{x})
$$ 

を満たすような$\varphi$を$\boldsymbol{V}$上の線形関数ということにしよう。
{{% /definition %}}

これだけでは、イマイチ具体性に欠ける。

そこで、座標成分を対応させるような線形関数が与えられる。
数式で書くと、次のようだ。

$$
\boldsymbol{e}^i(\boldsymbol{e}_j) = \begin{cases}
1, & (i = j) \\\
0, & (i \neq j)
\end{cases}
$$

$\boldsymbol{e}^i$の線形結合で更に線形関数が生成する。

これによって、元のベクトル空間と同じ次元の双対ベクトル空間が導入される。

## 私のギモン
この一連の流れの中で生じた疑問というのは、$\boldsymbol{e}^i (i=1, 2, \cdots , m)$とは一次独立な線形関数が存在するのではないか？ということである。

もしもそのようなもの存在すれば、$\boldsymbol{e}^i(i = 1, 2, \cdots n)$を基底とするベクトル空間$\boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n)$は、双対ベクトル空間$\boldsymbol{V}^*$とは等しくない部分ベクトル空間に成り下がってしまう。


「ベクトル解析30講」では、この疑問に非常に的確に答えている。しかし、その内容の重大さに気づくことは自力では困難であったため、<a href="https://math-sci.club/p/%E5%8F%8C%E5%AF%BE%E3%83%99%E3%82%AF%E3%83%88%E3%83%AB%E7%A9%BA%E9%96%93%E3%81%AE%E4%BB%A3%E6%95%B0%E6%A7%8B%E9%80%A0/">双対ベクトル空間の代数構造</a>にて詳しく書こうと思う。
