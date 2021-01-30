# google-translated version of `Unity Graphics Programming` vol. 1-4 (by `IndieVisualLab`)

- html:
    - https://freder.github.io/UnityGraphicsProgrammingBook1/html-translated/index.html
- epub:
    - [UnityGraphicsProgrammingBook1.epub](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/UnityGraphicsProgrammingBook1.epub)
    - [UnityGraphicsProgrammingBook2.epub](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/UnityGraphicsProgrammingBook2.epub)
    - [UnityGraphicsProgrammingBook3.epub](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/UnityGraphicsProgrammingBook3.epub)
    - [UnityGraphicsProgrammingBook4.epub](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/UnityGraphicsProgrammingBook4.epub)
- pdf:
    - [Unity Graphics Programming Vol. 1.pdf](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/Unity%20Graphics%20Programming%20Vol.%201.pdf)
    - [Unity Graphics Programming Vol. 2.pdf](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/Unity%20Graphics%20Programming%20Vol.%202.pdf)
    - [Unity Graphics Programming Vol. 3.pdf](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/Unity%20Graphics%20Programming%20Vol.%203.pdf)
    - [Unity Graphics Programming Vol. 4.pdf](https://github.com/freder/UnityGraphicsProgrammingBook1/blob/translation/html-translated/Unity%20Graphics%20Programming%20Vol.%204.pdf)

# build

coudn't get `npm run pdf` to work, so I'm rolling my own conversion to epub, using `pandoc`.

```
# install dependencies
chmod +x setup.sh ; ./setup.sh

# convert to html
REVIEW_PREFIX='/usr/local/lib/ruby/gems/2.7.0/bin/' npx grunt html \

# creates articles/index.html
node process.js

# collect files
mkdir html ; \
    mv articles/*.html html/ ; \
    cp -R articles/images html/images
```

- saved google-translated files
- "baked" translation:
    - example: `node ../../bake-translation.js "http://localhost:5000/Preface.html" "Preface.html"`
- [removed a bunch of google translate artifacts](https://github.com/freder/UnityGraphicsProgrammingBook1/commit/9e0f9e753a5d68ee27f41a2ae44918e5911c4c68).
- `make-epubs.sh`
- convert to pdf, using `calibre`

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
