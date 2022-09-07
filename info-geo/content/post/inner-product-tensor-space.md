+++
author = "maeda"
title = "V の内積はテンソル空間 V*⊗V* の元"
date = "2022-09-04T01:42:39Z"
description = ""
tags = [
    "線形代数",
    "テンソル"
]
categories = [
    "ベクトル解析30講"
]
aliases = []
draft = false
mathjax = true
+++

## 内積の定義

<a href="http://www.amazon.co.jp/%E3%83%99%E3%82%AF%E3%83%88%E3%83%AB%E8%A7%A3%E6%9E%9030%E8%AC%9B-%E6%95%B0%E5%AD%A630%E8%AC%9B%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E5%BF%97%E8%B3%80-%E6%B5%A9%E4%BA%8C/dp/4254114826" target="_blank">ベクトル解析30講</a>
では内積は以下のように定義された．

{{% definition title="定義" label="inner-product" %}}
$R$ 上のベクトル空間を $V$ とする．写像 $\langle \cdot, \cdot \rangle : V \times V \to R$ が次の性質を持つとき，この写像を $V$ の内積という．

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
{{% /definition %}}


## 内積をテンソル積で表現

ここでは，写像 $\langle \cdot, \cdot \rangle$ を $b$ と表すことにする．

$$
b(\bm x, \bm y) = \langle \bm x, \bm y \rangle
$$

{{< refer link_name="内積の定義" label="inner-product" >}}
より，$b$ は $V$ 上の双線形関数なので，$b \in L_2(V)$．

$L_2(V) = V^* \otimes V^\*$ より $b$ は $V^* \otimes V^\*$ の元．

このことから，$b$ は
$$
b = \sum_{i, j} a_{ij} e^i \otimes e^j
$$
の形となるから $a_{ij}$ の値が求まればよい．

$a_{ij}$ の値は $b( e_i, e_j ) = g_{ij}$ と
$$
\begin{align*}
b( e_k, e_l )
    &= \sum_{i, j} a_{ij} e^i \otimes e^j (e_k, e_l) \\\
    &= \sum_{i, j} a_{ij} e^i (e_k) e^j (e_l) \\\
    &= a_{kl} e^k (e_k) e^l (e_l) \\\
    &= a_{kl}
\end{align*}
$$
より，$a_{kl} = g_{kl}$ となる．

よって $b$ は

$$
b = \sum_{i, j} g_{ij} e^i \otimes e^j
$$

