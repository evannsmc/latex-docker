# Template: LaTeX document rendering
# Full TeX Live + Quarto for compiling papers, slides, and Quarto projects.

FROM ubuntu:24.04

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive

# ── TeX Live (full) + utilities ──────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-full \
    latexmk \
    biber \
    python3-pygments \
    git \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

# ── Quarto (optional — uncomment if needed) ──────────────────────────────────
# ARG QUARTO_VERSION=1.6.40
# RUN wget -qO /tmp/quarto.deb \
#     "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.deb" && \
#     dpkg -i /tmp/quarto.deb && rm /tmp/quarto.deb

WORKDIR /workspace

CMD ["bash"]
