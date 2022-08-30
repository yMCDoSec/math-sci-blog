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

記事を書く為に最低限必要な情報です．

markdown で書く場合を書いているので asciidoc で書くときは拡張子を .adoc としてください．

## ファイル作成

info-geo フォルダへ移動する．

画像等のファイルを記事に使用したい場合．
```shell
hugo new post/{article_name}/index.md
```
{article_name} フォルダの中に画像等を入れて使用出来ます．

\
\
markdown ファイルのみで書く場合．

```shell
hugo new post/{article_name}.md
```

\
\
ファイルは info-geo/content/post/ に作成されます．


## Front Matter

作成されたファイルを開くと，以下のようなものが記入されています．

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

これは Front Matter といい，記事の設定ができます．

| key         | description                                 | example                |
| :---------- | :------------------------------------------ | :--------------------- |
| author      | 著者名                                      | "taro"                 |
| title       | タイトル                                    | "記事の書き方"         |
| date        | 作成日時                                    | "2022-08-25T09:54:31Z" |
| description | 記事の説明                                  | "これは記事の概要です" |
| tags        | タグ                                        | ["hugo", "site"]       |
| categories  | カテゴリ                                    | ["site"]               |
| aliases     | このページの別名                            | ["old_article"]        |
| draft       | 公開しないかどうか<br>true の時公開しない   | false                  |
| mathjax     | 数式を使用するかどうか<br>true の時使用する | true                   |


author と title は記入してください．
\
必要に応じて description, tags, categories, aliases も記入してください．


## 数式

数式描画用のライブラリは [MathJax](https://www.mathjax.org/) を使用しています．

インライン数式 <code>${content}$</code>
\
ディスプレイ数式 <code>$${content}$$</code>

{{% example title="例" label="e" %}}

```
写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...

写像 $$\varphi : \boldsymbol{V} \to \mathbb{R}$$ が ...
```

写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...

写像 $$\varphi : \boldsymbol{V} \to \mathbb{R}$$ が ...
{{% /example %}}


asciidoc の場合はこちらの方が書きやすいと思います．

インライン数式 <code>\\({content}\\)</code>
\
ディスプレイ数式 <code>\\[{content}\\]</code>


## Short Codes

Short Codes は Hugo のテンプレート機能で，markdown では表現できない HTML を表現することができます．

構文は基本以下の3つです．

1. \{\{< ショートコード名 >\}\}
1. \{\{< ショートコード名 >\}\} 文章 \{\{< ショートコード名 >\}\}
    - 内部の文章を生の文字列として扱います．
1. \{\{% ショートコード名 %\}\} 文章 \{\{% ショートコード名 %\}\}
    - 内部の文章を markdown (もしくは asciidoc) パーサに渡します．

以下，そのまま表示するために "{" で囲んでいますが，使用する際は "{{" としてください．

### utils

折り畳み

{{% example title="例" label="" %}}

```
{% accordion title="もっと詳しく" %}
- 本文はデフォルトで折りたたまれています．
- クリックすることで展開されます．
{% /accordion %}
```

{{% accordion title="もっと詳しく" %}}
- 本文はデフォルトで折りたたまれています．
- クリックすることで展開されます．
{{% /accordion %}}

{{% /example %}}

### 定理環境

現在，以下の5つを実装してます．
- 定義 (definition)
- 定理 (theorem)
- 命題 (proposition)
- 証明 (proof)
- 例 (example)

番号は各項目ごとに自動でカウントしています．

{{% example title="例" label="" %}}

```
{% definition title="定義" label="def-1" %}
写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...
{% /definition %}}

{% theorem title="定理" label="the-1" %}
写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...
{% /theorem %}

{% definition title="定義" label="def-2" %}
写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...
{% /definition %}

```

{{% definition title="定義" label="def-1" %}}
写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...
{{% /definition %}}

{{% theorem title="定理" label="the-1" %}}
写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...
{{% /theorem %}}

{{% definition title="定義" label="def-2" %}}
写像 $\varphi : \boldsymbol{V} \to \mathbb{R}$ が ...
{{% /definition %}}

{{% /example %}}

#### 参照

定理環境の label を指定することで定義等を参照することが出来ます． \
link_name を指定しない（もしくは "") 場合，参照先の title を使用します．

{{% example title="例" label="" %}}

```
{< refer link_name="" label="the-1" >} から ...

{< refer link_name="〇〇の定義" label="def-2" >} により ...
```


{{< refer link_name="" label="the-1" >}} から ...

{{< refer link_name="〇〇の定義" label="def-2" >}} により ...

{{% /example %}}

## snippet

VsCode を使用している場合，いくつかの snippet を登録しています．

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

以下のコマンドでサーバーを立ち上げます．

```
hugo server
```

オプションに "-D" をつけると，Front Matter の draft が true のページも表示されます．

[http://localhost:1313](http://localhost:1313) を開くことで，アップロードしたときにどのように表示されるか確認することができます．


## pull request

記事が完成したら[リンク先](https://github.com/yMCDoSec/info-geo-blog) に pull request を出してください．
