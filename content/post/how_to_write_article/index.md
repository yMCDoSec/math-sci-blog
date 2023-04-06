+++
author = "maeda"
title = "記事の書き方"
date = "2022-08-25T09:54:31Z"
description = ""
tags = [
]
categories = [
    "site"
]
aliases = []
draft = false
mathjax = true
+++

記事を書く為に最低限必要な情報です。

markdown で書く場合を書いているので asciidoc で書くときは拡張子を .adoc としてください。

## ファイル作成

以下のように `hugo new` コマンドでファイルを作成します。
```shell
hugo new post/{article_name}/index.md
```
ファイルは `content/post/{article_name}/index.md` に作成されます。

{article_name} フォルダに画像を入れて、記事に画像を表示することもできます。


## Front Matter

作成されたファイルを開くと，以下のようなものが記入されています。

```markdown
+++
author = ""
title = "{article_name}"
date = "2022-08-25T09:54:31Z"
description = ""
tags = [
]
categories = [
]
aliases = []
draft = false
mathjax = true
+++
```

これは Front Matter といい，記事の設定ができます。

| key         | description                                 | example                |
| :---------- | :------------------------------------------ | :--------------------- |
| author      | 著者名                                      | "taro"                 |
| title       | タイトル                                    | "記事の書き方"         |
| date        | 作成日時                                    | "2022-08-25T09:54:31Z" |
| description | 記事の説明                                  | "これは記事の概要です" |
| tags        | タグ                                        | ["hugo", "site"]       |
| categories  | カテゴリ                                    | ["site"]               |
| aliases     | このページの別名                            | ["old_article_name"]   |
| draft       | 公開しないかどうか<br>true の時公開しない   | false                  |
| mathjax     | 数式を使用するかどうか<br>true の時使用する | true                   |


author と title は記入してください。
\
必要に応じて description, tags, categories, aliases も記入してください。


## 画像
画像を`content/post/{article_name}/`フォルダに入れてください。


<code>\{\{< figure src="image1.svg" height="300" >\}\}</code> のように画像名を入れると画像が表示されます。

{{< figure src="image1.svg" height="300" >}}

## 数式

数式描画用のライブラリは [MathJax](https://www.mathjax.org/) を使用しています。

インライン数式 `$f(x) = x^2$`
\
ディスプレイ数式 `$$f(x) = x^2$$`

{{% example title="例" label="e" %}}

```
写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...

写像 $$\varphi : \bm{V} \to \mathbb{R}$$ が ...
```

写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...

写像 $$\varphi : \bm{V} \to \mathbb{R}$$ が ...
{{% /example %}}


以下の書き方でも同じ動作です。

インライン数式 `\( f(x) = x^2 \)`
\
ディスプレイ数式 `\[ f(x) = x^2 \]`


## Short Codes

Short Codes は Hugo のテンプレート機能で，markdown では表現できない HTML を表現することができます。

構文は基本以下の3つです。

1. \{\{< ショートコード名 >\}\}
1. \{\{< ショートコード名 >\}\} 文章 \{\{< ショートコード名 >\}\}
    - 内部の文章を生の文字列として扱います．
1. \{\{% ショートコード名 %\}\} 文章 \{\{% ショートコード名 %\}\}
    - 内部の文章を markdown (もしくは asciidoc) パーサに渡します．

以下，そのまま表示するために `{` で囲んでいますが，使用する際は `{{` としてください。

### utils

折り畳み

{{% example title="例" label="" %}}

```
{% accordion title="もっと詳しく" %}
- 本文はデフォルトで折りたたまれています。
- クリックすることで展開されます。
{% /accordion %}
```

{{% accordion title="もっと詳しく" %}}
- 本文はデフォルトで折りたたまれています。
- クリックすることで展開されます。
{{% /accordion %}}

{{% /example %}}

### 定理環境

現在，以下の5つを実装してます。
- 定義 (definition)
- 定理 (theorem)
- 命題 (proposition)
- 証明 (proof)
- 例 (example)

番号は各項目ごとに自動でカウントしています。

{{% example title="例" label="" %}}

```
{% definition title="定義" label="def-1" %}
写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...
{% /definition %}}

{% theorem title="定理" label="the-1" %}
写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...
{% /theorem %}

{% definition title="定義" label="def-2" %}
写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...
{% /definition %}

```

{{% definition title="定義" label="def-1" %}}
写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...
{{% /definition %}}

{{% theorem title="定理" label="the-1" %}}
写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...
{{% /theorem %}}

{{% definition title="定義" label="def-2" %}}
写像 $\varphi : \bm{V} \to \mathbb{R}$ が ...
{{% /definition %}}

{{% /example %}}

#### 参照

定理環境の label を指定することで定義等を参照することが出来ます。 \
file_name を指定すると別ファイルのものを参照することができます。 \
link_name を指定しない（もしくは "") 場合，参照先の title を使用します。

{{% example title="例" label="" %}}

```
{< refer link_name="" label="the-1" >} から ...

{< refer link_name="〇〇の定義" label="def-2" >} により ...

{< refer link_name="内積の定義" file_name="inner-product-tensor-space.md" label="inner-product" >} から ...
```


{{< refer link_name="" label="the-1" >}} から ...

{{< refer link_name="〇〇の定義" label="def-2" >}} により ...

{{< refer link_name="内積の定義" file_name="inner-product-tensor-space.md" label="inner-product" >}} から ...

{{% /example %}}

## snippet

VsCode を使用している場合，いくつかの snippet を登録しています。

| prefix         | description |
| :------------- | :---------- |
| :accordion     | 折り畳み    |
| :definition    | 定義        |
| :theorem       | 定理        |
| :propositional | 命題        |
| :proof         | 証明        |
| :example       | 例          |
| :reference     | 参照        |


## ローカルで確認

以下のコマンドでサーバーを立ち上げます。

```
hugo server
```

オプションに "-D" をつけると，Front Matter の draft が true のページも表示されます。

[http://localhost:1313](http://localhost:1313) を開くことで，アップロードしたときにどのように表示されるか確認することができます。


## pull request

記事が完成したら[リンク先](https://github.com/yMCDoSec/math-sci-blog) に pull request を出してください。
