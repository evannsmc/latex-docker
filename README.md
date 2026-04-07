# latex-docker

Full TeX Live + Quarto Docker image for compiling LaTeX papers, slides, and Quarto projects.

## What's included

- **Ubuntu 24.04** base
- **TeX Live (full)** — all packages, fonts, and tools
- **latexmk** — automated LaTeX build tool
- **biber** — BibLaTeX backend
- **Pygments** — syntax highlighting for `minted`
- **git, wget, curl** — common utilities

### Optional

Quarto can be enabled by uncommenting the relevant section in the Dockerfile.

## Usage

### Build

```bash
docker build -t latex-docker .
```

### Compile a document

Mount your project directory and run `latexmk`:

```bash
docker run --rm -v "$(pwd)":/workspace latex-docker latexmk -pdf main.tex
```

### Interactive shell

```bash
docker run --rm -it -v "$(pwd)":/workspace latex-docker
```
