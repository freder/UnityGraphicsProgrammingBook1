# google-translated version of `Unity Graphics Programming vol.1` (by `IndieVisualLab`)

https://freder.github.io/UnityGraphicsProgrammingBook1/html-translated/index.html

# build

coudn't get `npm run pdf` to work, so I'm rolling my own conversion to epub, using `pandoc`.

```
# install dependencies
chmod +x setup.sh ; ./setup.sh

# convert to 
REVIEW_PREFIX='/usr/local/lib/ruby/gems/2.7.0/bin/' npx grunt html \
    && node make-epub.js

mkdir html ; \
    mv articles/*.html html/ ; \
    cp -R articles/images html/images
```

this creates:
- `UnityGraphicsProgrammingBook1.epub`
- `articles/index.html`

---

↓ original readme:

# Unity Graphics Programming vol.1

![Cover](https://raw.githubusercontent.com/IndieVisualLab/UnityGraphicsProgrammingBook1/master/images/cover.png)

![Chapters](https://raw.githubusercontent.com/IndieVisualLab/UnityGraphicsProgrammingBook1/master/images/chapters.png)

## サンプルコードリポジトリ
https://github.com/IndieVisualLab/UnityGraphicsProgramming

## 利用ツール

- Re:View
- md2review

## ライセンス
CC BY 4.0
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Licence" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a>
