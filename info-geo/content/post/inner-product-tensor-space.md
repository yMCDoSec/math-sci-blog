+++
author = "maeda"
title = "ベクトル空間 V の内積はテンソル空間 V*⊗V* の元"
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

以降，ベクトル空間 $V$ は $N$ 次元とし，基底 $e_1, \dots, e_n$ をとる．

<a href="http://www.amazon.co.jp/%E3%83%99%E3%82%AF%E3%83%88%E3%83%AB%E8%A7%A3%E6%9E%9030%E8%AC%9B-%E6%95%B0%E5%AD%A630%E8%AC%9B%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-%E5%BF%97%E8%B3%80-%E6%B5%A9%E4%BA%8C/dp/4254114826" target="_blank">ベクトル解析30講</a>
では，基底どうしの内積の値を

$$
\langle \bm e_i, \bm e_j \rangle = g_{ij}
$$

としていた，この $g_{ij}$ はベクトル $e_i, e_j$ の内積から求まる実数だが，双対空間のテンソル空間 $V^\ast \otimes V^\ast$ の元の $e^i \otimes e^j$ の係数として見てやると，内積をテンソル空間 $V^\ast \otimes V^\ast$ 上の点と見ることもできる．


内積 $\langle \cdot, \cdot \rangle$ を $b$ を用いて表すことにする．

$$
b(\bm x, \bm y) = \langle \bm x, \bm y \rangle
$$

{{< refer link_name="内積の定義" label="inner-product" >}}
より，$b$ は $V$ 上の双線形関数なので，$b \in L_2(V)$．

$L_2(V) \simeq V^\ast \otimes V^\ast$ より $b$ は $V^\ast \otimes V^\ast$ の元．

このことから，$b$ は
$$
b = \sum_{i=1}^N \sum_{j=1}^N a_{ij} e^i \otimes e^j
\quad
\text{($a_{ij} は実数$)}
$$
の形となるから各$i, j$ での実数 $a_{ij}$ の値が求まればよい．

$a_{ij}$ の値は $b( e_i, e_j ) = g_{ij}$ と
$$
\begin{align*}
b( e_k, e_l )
    &= \sum_{i=1}^N \sum_{j=1}^N a_{ij} e^i \otimes e^j (e_k, e_l) \\\
    &= \sum_{i=1}^N \sum_{j=1}^N a_{ij} e^i (e_k) e^j (e_l) \\\
    &= a_{kl} e^k (e_k) e^l (e_l) \\\
    &= a_{kl}
\end{align*}
$$
より，$a_{kl} = g_{kl}$ となる．

よって 内積 $b$ は

$$
b = \sum_{i=1}^N \sum_{j=1}^N g_{ij} e^i \otimes e^j
$$

と表すことができ，これは，テンソル空間 $V^\ast \otimes V^\ast$ 上の点である．