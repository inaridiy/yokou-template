FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    texlive-lang-japanese \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-binaries \
    make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["make"] 