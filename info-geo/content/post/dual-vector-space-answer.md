+++
author = "深水智史"
title = "双対ベクトル空間の代数構造"
date = "2022-09-07T10:33:54+09:00"
description = ""
tags = ["線形代数", "双対性"
]
categories = ["ベクトル解析30講"
]
aliases = []
draft = false
mathjax = true
+++

## 双対基底の違和感
志賀浩二著「ベクトル解析30講」における双対基底の導入にあたり、私が抱いた違和感というのは<a href="https://info-geo.org/p/%E5%8F%8C%E5%AF%BE%E5%9F%BA%E5%BA%95%E3%81%AE%E9%81%95%E5%92%8C%E6%84%9F/" style="color: blue;">双対基底の違和感</a>にて述べた通りである。

私がここで明らかにしたいのは、すなわち次のことである。

{{% proposition title="命題" label="prop-1" %}}
あるベクトル空間$\boldsymbol{V}$上の"座標成分を対応させる線形関数"$\boldsymbol{e}^i (i=1, 2, \cdots n)$を基底とするベクトル空間$\boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n)$と、$\boldsymbol{V}$の双対ベクトル空間は等しい。
{{% /proposition %}}

"座標成分を対応させるような線形関数"とは、


$$
\begin{equation}\label{delta}
\boldsymbol{e}^i(\boldsymbol{e}_j) = \begin{cases}
1, & (i = j) \\\
0, & (i \neq j)
\end{cases}
\end{equation}
$$

と定められる線形関数
$\boldsymbol{e}^1, \boldsymbol{e}^2, \cdots \boldsymbol{e}^n$
の線形結合でできる線形関数のことだと考えていただきたい。つまり、$\boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n)$の元のことである。

逆に、"座標成分を対応させないような線形関数"とは
$\boldsymbol{e}^1, \boldsymbol{e}^2, \cdots \boldsymbol{e}^n$
の線形結合で表されない線形関数のことを指す。

この"座標成分を対応させないような線形関数"が存在しないことをこの記事では確認していく。

## 座標成分を対応させない線形関数が存在しないことの証明

{{< refer link_name="命題1" label="prop-1" >}}を示す為には、


$$
\begin{equation}
\boldsymbol{V}^* \subset \boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n) \label{eq-1}
\end{equation}
$$

と

$$
\begin{equation}
\boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n) \subset \boldsymbol{V}^* \label{eq-2}
\end{equation}
$$
が成り立つことを示せば良い。

式\ref{eq-2}については、特に説明は必要ないかも知れないが、一応以下に証明を示す。


{{% proof title="証明" label="proof-1" %}}
$\boldsymbol{V}^*$は、$\boldsymbol{V}$上の全ての線形関数の集合である。

$\boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n)$は、$\boldsymbol{e}^i(i = 1, 2, \cdots n)$を基底とするベクトル空間である。

$\boldsymbol{e}^i(i = 1, 2, \cdots n)$は線形関数なので、その線形結合も当然線形関数になる。

つまり、$\boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n)$の元は全て線形関数である。

したがって、
$$
\boldsymbol{L}(\boldsymbol{e}^1, \cdots \boldsymbol{e}^n) \subset \boldsymbol{V}^*
$$
{{% /proof %}}

次に、式\ref{eq-1}を示す。
これを示すことは、次の命題{{< refer link_name="命題2" label="prop-2" >}}を示すことと等価だといえるだろう。


{{% proposition title="命題" label="prop-2" %}}
$\boldsymbol{V}^*$の任意の元$\varphi$は、実数$a_1, a_2, \cdots a_n \in \boldsymbol{R}$を用いて、
$$
\varphi = a_1\boldsymbol{e}^1 + a_2\boldsymbol{e}^2 + \cdots a_n\boldsymbol{e}^n
$$
と表される。
{{% /proposition %}}

{{% proof title="証明" label="proof-2" %}}
$\varphi$は$\boldsymbol{V}$上の線形関数より、任意の元$\boldsymbol{x} \in \boldsymbol{V}$について

$$
\begin{equation}
\varphi(\boldsymbol{x}) = (a_1\boldsymbol{e}^1 + a_2\boldsymbol{e}^2 + \cdots + a_n\boldsymbol{e}^n)(\boldsymbol{x}) \label{eq-3}
\end{equation}
$$

を満たすような$(a_1, a_2, \cdots a_n)$の組が存在することを示す。

$$
\bm x = \sum_{i=1}^n x^i e_i \quad \text{($e_i (i=1, 2, ..., n)$ は $V$ の基底)}
$$

とすれば、式(\ref{eq-3})について、以下のようになる。
$$
\begin{equation}
(右辺) = \sum_{i = 1}^{n}x^i\varphi(\boldsymbol{e}_i) \label{eq-4}
\end{equation}
$$

$$
\begin{eqnarray}
(左辺) &= a_1\boldsymbol{e}^1(\boldsymbol{x}) + \cdots + a_n\boldsymbol{e}^n(\boldsymbol{x}) \label{eq-5}
&= \sum_{i = 1}^{n}a_ix^i
\end{eqnarray}
$$

式(\ref{eq-4})と式(\ref{eq-5})を合わせて、
$$
a_i = \varphi(\boldsymbol{e}_i)
$$
とすれば良いことがわかる。

つまり、適当な$a_i(i = 1, 2, \cdots n)$の値が存在することがわかったので、命題は証明された。

{{% /proof %}}

## 感動ポイント
感動ポイントなどと冠して論理的に導かれた結果を後付けで説明するのは少々野暮ったい気もするが、この記事で述べた結果の重大さを伝えるためにも簡単に書いておくことにした。

{{< refer link_name="証明2" label="proof-2" >}}の前提に、$\boldsymbol{e}^i$が"座標成分を対応させるような線形関数"であるかどうかは含まれていない。

結果としてわかったことは、一次独立な線形関数(ベクトル)$n$個の線形結合で任意の線形関数$\varphi$が表現されることだけである。

言い換えると、双対ベクトル空間$\boldsymbol{V}^*$の次元はベクトル空間$\boldsymbol{V}$と同じちょうど$n$次元なのだ。


その事実に加えて、偶然私たち(？)は式(\ref{delta})の"座標成分を対応させる"$\boldsymbol{V}$上の線形関数をちょうど$n$個見つけることに成功した。

そして最終的には、"座標成分を対応させない$\boldsymbol{V}上の$線形関数"などと言うものは存在しないことがわかったと言うわけだ。



