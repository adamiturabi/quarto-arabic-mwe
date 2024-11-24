# quarto-arabic-mwe
Minimum(ish) working example of Quarto source files of English main text with Arabic divs and spans.

Output is published here: https://adamiturabi.github.io/quarto-arabic-mwe/

# To build

Install [Quarto](https://quarto.org/docs/get-started/).

Install the [Charis SIL](https://software.sil.org/charis/download/),
[Amiri](https://github.com/alif-type/amiri/releases/latest),
and [Vazirmatn](https://github.com/rastikerdar/vazirmatn/releases/tag/v33.003)
fonts.

Install the Python3 package `jupyter`:

```
python3 -m pip install jupyter
```

If it doesn't let you install the package in this way, then follow directions to install it in a virtual environment:

```
python3 -m venv path/to/venv
source path/to/venv/bin/activate
python3 -m pip install jupyter
```

In the above repo, within the venv just created (if applicable), 
use this command to render the HTML and PDF outputs:

```
source path/to/venv/bin/activate
quarto render
```

# Figures

To render the tikz fugures, first install inkscape. 
On Mac (without sudo):

```
brew install --cask inkscape
```

