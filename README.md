# Syntax definitions for [decomp-toolkit](https://github.com/encounter/decomp-toolkit) formats

Contains `.sublime-syntax` (`sublime/`) and `.YAML-tmLanguage` (`vscode/`) syntax definitions for decomp-toolkit's `splits.txt` and `symbols.txt` formats, which enables text editors like Sublime Text and Visual Studio Code to provide syntax highlighting for these formats.

## Supported platforms
- [Sublime Text 4](https://sublimetext.com)
- [Visual Studio Code](https://code.visualstudio.com)

## Installation

`dtk-syntax` is available on the [Visual Studio Marketplace](https://marketplace.visualstudio.com/) as [`decomp-dev.dtk-syntax`](https://marketplace.visualstudio.com/items?itemName=decomp-dev.dtk-syntax).

For manual installation from releases, follow the instructions on the release notes.

## Building

### Prerequisites

- [Make](https://en.wikipedia.org/wiki/Make_(software))

For converting the `.YAML-tmLanguage` files into normal `.tmLanguage` files:
- the Sublime Text package [PackageDev](https://packagecontrol.io/packages/PackageDev)

VSCode-specific:
- [Node.js](https://nodejs.org)
- [`npm`](https://www.npmjs.com)
- the `npm` package [`@vscode/vsce`](https://www.npmjs.com/package/vsce)

### Instructions

1. Converting `.YAML-tmLanguage` to `.tmLanguage`

Press <kbd>Primary</kbd>+<kbd>B</kbd> to build while in the view of the `.YAML-tmLanguage` file. The `# [PackageDev]` line at the top specifies the target file, so you don't need to specify the build variant manually.

2. Building

- `make sublime` to create a tarball of `sublime/`.
- `make vscode` to create a `.vsix` package of the `.tmLanguage` files in `vscode/`. (Specifically, the `.YAML-tmLanguage` files are excluded.)
- `make clean` comes included.

---

#### To-do list
- pictures
- ???
