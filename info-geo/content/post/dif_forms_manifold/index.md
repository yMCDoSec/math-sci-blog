+++
author = "FS"
title = "微分形式の引き戻しの定義についての補足と疑問"
date = "2022-11-13T21:53:27+09:00"
description = ""
tags = ["微分形式", "多様体"
]
categories = ["ベクトル解析30講"
]
aliases = []
draft = false
mathjax = true
+++
## この記事の主題

志賀浩二著『ベクトル解析30講』では、グリーンの公式やガウスの定理を座標変換に不変な形で書くために微分形式を導入した。座標に不変であるということは少しメタ的な視点で見ると、異なる座標の入ったユークリッド空間上で微積分が同様にできることを指していると言えるだろう。

簡潔に言うと、ここで定義する微分形式の引き戻しは、曲面上での微積分を$\boldsymbol{R}^2$上と同様に可能にするものである。更に一般的な微分形式の引き戻し定義をすると、より多くのことが言えるが、それに関しては<a href="https://hooktail.sub.jp/differentialforms/DiffFormsPullback1/">微分形式の引き戻し1-物理の鍵しっぽ</a>を参照して欲しい。


しかし、私はこれだけではまだ納得していないのである。そのことをここではまとめたいと思う。

## 『ベクトル解析30講』における微分形式の引き戻しの定義

志賀浩二著『ベクトル解析30講』において、微分形式の引き戻しは次のように定義された。

{{% definition title="定義(要約)" label="def-pullback" %}}
$\boldsymbol{R}^2$上の有界な領域$D$を1つとる。$D$の境界は$C^\infty$級の曲線からなる。
閉領域$\bar D$を含むある領域で定義された3つの$C^\infty$級関数
$$u=u(x, y), v=v(x, y), w=w(x, y)$$
が与えられ、次の条件を満たするとする。

* 対応$(x, y) \rightarrow (u, v, w)$は1対1
* 行列$\pmatrix{
    \frac{\partial u}{\partial x} & \frac{\partial u}{\partial y} \cr
    \frac{\partial v}{\partial x} & \frac{\partial v}{\partial y} \cr
    \frac{\partial w}{\partial x} & \frac{\partial w}{\partial y}
    }$
    の階数は各点で2に等しい。

このとき、対応
$$\varphi : (x, y) \rightarrow (u, v, w)$$
を考える。

* **関数(0-form)の引き戻し**
<br>
$S$上の関数$f(u, v, w)$については、$f$の$\varphi$による引き戻し$\varphi ^* f$を次のように定義する。

$$(\varphi ^*f)(x, y) = f(u(x, y), v(x, y), w(x, y))$$


1-form、2-formそれぞれで引き戻しという操作が、少なくとも次を満たすことを要請する。
$$\varphi ^*(df) = d(\varphi ^*f)$$


* **1次微分形式の引き戻し**
<br>
1次の微分形式
$\omega = P(u, v, w)du+Q(u, v, w)dv + R(u, v, w)dw$
の$\varphi$による引き戻し$\varphi ^* \omega$は、次のように定義される。
\begin{split}
&\varphi ^* \omega \\\
&= \varphi ^*P \cdot (\frac{\partial u}{\partial x}dx + \frac{\partial u}{\partial y}dy) +
\varphi ^*Q \cdot (\frac{\partial v}{\partial x}dx + \frac{\partial v}{\partial y}dy) + 
\varphi ^*R \cdot (\frac{\partial w}{\partial x}dx + \frac{\partial w}{\partial w}dw) \\\
&= \varphi ^*P \cdot d(\varphi ^*u) + \varphi ^*Q \cdot d(\varphi ^*v) + \varphi ^*R \cdot d(\varphi ^*w)
\end{split}

* **2次の微分形式の引き戻し**
<br>
2次の微分形式$\eta = P(u, v, w)du \wedge dv$
の$\varphi$による引き戻しを、

\begin{split}
\varphi ^*\eta
&= \varphi ^*P \cdot d(\varphi ^*u) \wedge d(\varphi ^*v) \\\
&= \varphi ^*P \cdot (\frac{\partial u}{\partial x}dx + \frac{\partial u}{\partial y}dy) \wedge (\frac{\partial v}{\partial x}dx + \frac{\partial v}{\partial y}dy) \\\
&= \varphi ^*P \cdot (\frac{\partial u}{\partial v} \frac{\partial v}{\partial y} - \frac{\partial u}{\partial y} \frac{\partial v}{\partial x})dx \wedge dy
\end{split}
{{% /definition %}}

ここ定義された微分形式の引き戻しは、引き戻しを使わなければ$\boldsymbol{R}^3$上で考えなければならないような場合でも、一定の条件下で$\boldsymbol{R}^2$上の微分形式で考えることができることを示唆している。多様体に関しての知識を持って読めば、多様体の局所座標の構造をも仄めかしていることがわかるだろう。

## それぞれの微分形式の引き戻しの定義について
それぞれの微分形式の引き戻しの定義を吟味することで、どのような操作をすれば引き戻せたと言えるか、また、この定義がどのように「引き戻し」という言葉と整合しているのか、考えていく。
### 関数(0次微分形式)の引き戻し

関数の引き戻しについて、著者も述べている通りこの定義は自然なもののようだ。
一見すると、ただの座標変換の式にすら見える。関数の座標変換との違いは、変換前と変換後の変数の個数が異なっていることくらいだろう。

この本では明示的に書かれていない(多分)が、どうやら微分形式の引き戻しという操作は、微分形式の座標変換を包含する操作のようなのだ。

実際に、次のような記述を見かけた。
>微分形式の外微分の引き戻しが,引き戻しの外微分であることを述べた.これは微分形式の微分が座標不変であることを意味した.(深谷賢治著『解析力学と微分形式』)

座標変換をしても同様に微積分ができることが微分形式を用いた最初のモチベーションであった。23講で著者が述べているとおり、今度はパラメータ付けられた曲面の上でも同様に微積分をできることを要請したいのである。

19講で、$\boldsymbol{R}^2$上の微分形式を$C^\infty$級の写像$\varphi$で座標変換したとき、外微分は座標不変であった。このことを形式的に次のように書くことにする。

$$\varphi^* d\omega = d(\varphi^*\omega)$$

ここでは、引き戻しが座標変換を含む操作であることを考慮して、座標変換の操作を表す記号として、引き戻しを表す記号と同じ$\varphi ^*$を採用している。

この式が座標変換については当然成立することがわかると、引き戻しについてもこれが成立することを要請することは特に不思議なことではない気がしてくる。

より詳しく、座標変換と引き戻しがどのような関係性にあるのかは、また別の記事でまとめたいと思う。
兎に角、ここで述べたいことは次のとおりである。

<div style="text-align: center;">
<b>微分形式の引き戻しについても外微分の不変性を要請するのは特に不思議な流れではない。</b>
</div>


### 1次、2次微分形式の引き戻し

上で述べたとおり、1、2次微分形式の引き戻しを定義するにあたって外微分の引き戻しに対する不変性を要請する。

$$\varphi ^* d\omega = d(\varphi ^* \omega)$$

そして、
{{< refer link_name="引き戻しの定義" label="def-pullback" >}}
のように定義すれば、確かにこの要求を満たすことは確認できる。


## ここまでで理解できていない点
まず、$\varphi ^* (d\omega) = d(\varphi ^* \omega)$という要請が、<b>「引き戻せた」と言えるためにどれだけ十分な性質を持つのか</b>一切わかっていないのである。

そしてこの要請で十分「引き戻せた」と言えるとして、「<b>この要請を満たす他の定義があるのではないか。</b>」ということである。

この2点において、全く理解できていないと感じている。何か分かったらまた、記事にまとめる予定だ。
