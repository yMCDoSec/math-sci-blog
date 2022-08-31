+++
author = "深水智史"
title = "双対ベクトル空間"
date = "2022-08-31T19:24:58+09:00"
description = ""
tags = [
]
categories = [
]
aliases = []
draft = false
mathjax = true
+++

# 双対ベクトル空間

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

## 私の疑問
この一連の流れの中で生じた疑問というのは、$\boldsymbol{e}^i (i=1, 2, \cdots , m)$とは1次独立な線形関数が存在するのではないか？ということである。

座標成分を対応させるような線形関数が、線形関数の特別な場合であるかのように導入されているような印象を受けたのだ。
実際に、"座標成分を対応させない"線形関数を見つけることはできていないので、確かに存在しないのかも知れない。

しかし、未だ納得のいく答えを得ることはできていない。
