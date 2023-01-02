FROM fedora:37

RUN groupadd staff \
  && useradd -g staff -d /home/docker docker

LABEL org.label-schema.license="GPL-3.0" \
      org.label-schema.vcs-url="https://github.com/XiangyunHuang/data-analysis-in-action" \
      org.label-schema.vendor="Book Project" \
      maintainer="Xiangyun Huang <xiangyunfaith@outlook.com>"

ARG CMDSTAN=/opt/cmdstan/cmdstan-2.31.0
ARG CMDSTAN_VERSION=2.31.0
ARG QUARTO_VERSION=1.2.280
ARG RETICULATE_PYTHON_ENV=/opt/.virtualenvs/r-tensorflow
ARG GITHUB_PAT=abc123

# System dependencies required for R packages
RUN dnf -y upgrade \
  && echo "install_weak_deps=False" >> /etc/dnf/dnf.conf \
  && dnf -y install dnf-plugins-core \
  && dnf -y install glibc-langpack-en \
   R-devel \
   R-littler \
   R-littler-examples \
   ghostscript \
   optipng \
   ImageMagick \
   texinfo \
   cargo \
   bzip2 \
   passwd \
   initscripts \
   firewalld \
   v8-devel \
   python3-virtualenv \
   google-noto-cjk-fonts \
   google-noto-sans-fonts \
   google-noto-serif-fonts \
   google-noto-emoji-fonts \
   google-noto-emoji-color-fonts \
   texlive-sourceserifpro \
   texlive-sourcecodepro \
   texlive-sourcesanspro \
   texlive-pdfcrop \
   texlive-dvisvgm \
   texlive-dvips \
   texlive-dvipng \
   texlive-ctex \
   texlive-fandol \
   texlive-xetex \
   texlive-framed \
   texlive-titling \
   texlive-fira \
   texlive-awesomebox \
   texlive-fontawesome5 \
   texlive-fontawesome \
   texlive-newtx \
   texlive-tcolorbox \
   texlive-standalone \
   texlive-animate \
   texlive-media9

RUN ln -s /usr/lib64/R/library/littler/examples/install.r /usr/bin/install.r \
 && ln -s /usr/lib64/R/library/littler/examples/install2.r /usr/bin/install2.r \
 && ln -s /usr/lib64/R/library/littler/examples/installGithub.r /usr/bin/installGithub.r \
 && ln -s /usr/lib64/R/library/littler/examples/testInstalled.r /usr/bin/testInstalled.r \
 && mkdir -p /usr/local/lib/R/site-library \
 && echo "options(repos = c(CRAN = 'https://cran.r-project.org/'))" | tee -a /usr/lib64/R/etc/Rprofile.site \
 && chmod a+r /usr/lib64/R/etc/Rprofile.site \
 && echo "LANG=en_US.UTF-8" >> /usr/lib64/R/etc/Renviron.site \
 && echo "export LC_ALL=en_US.UTF-8"  >> /etc/profile \
 && echo "export LANG=en_US.UTF-8"  >> /etc/profile \
 && echo "CXXFLAGS += -Wno-ignored-attributes" >> /usr/lib64/R/etc/Makeconf \
 && Rscript -e 'x <- file.path(R.home("doc"), "html"); if (!file.exists(x)) {dir.create(x, recursive=TRUE); file.copy(system.file("html/R.css", package="stats"), x)}' \
 && install.r docopt \
 && install2.r remotes

# Set RStudio Server
RUN dnf -y install rstudio-server \
 && cp /usr/lib/systemd/system/rstudio-server.service /etc/init.d/ \
 && chmod +x /etc/init.d/rstudio-server.service \
 && systemctl enable rstudio-server \
 # Set passwd
 && echo 'docker:docker123' | chpasswd \
 # Set group authority
 && chown -R docker:staff /usr/local/lib/R/site-library

# Set CmdStanR
ENV CMDSTAN=$CMDSTAN

RUN mkdir -p /opt/cmdstan \
  && curl -fLo cmdstan-${CMDSTAN_VERSION}.tar.gz https://github.com/stan-dev/cmdstan/releases/download/v${CMDSTAN_VERSION}/cmdstan-${CMDSTAN_VERSION}.tar.gz \
  && tar -xzf cmdstan-${CMDSTAN_VERSION}.tar.gz -C /opt/cmdstan/ \
  && rm -rf cmdstan-${CMDSTAN_VERSION}.tar.gz \
  && cd ${CMDSTAN} && make build && cd /home/docker/

# Set Extra R Packages
COPY DESCRIPTION DESCRIPTION
COPY desc_pkgs.txt desc_pkgs.txt
RUN dnf -y copr enable iucar/cran \
  && dnf -y install R-CoprManager \
  && dnf -y install $(cat desc_pkgs.txt) \
  && install2.r showtextdb showtext \
  && Rscript -e 'install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")), type="source")' \
  && export GITHUB_PAT=${GITHUB_PAT} \
  && Rscript -e "remotes::install_deps('.', dependencies = TRUE)" \
  && rm -f DESCRIPTION desc_pkgs.txt

# Set Python virtualenv
ENV RETICULATE_PYTHON_ENV=$RETICULATE_PYTHON_ENV
ENV RETICULATE_PYTHON=${RETICULATE_PYTHON_ENV}/bin/python

COPY requirements.txt requirements.txt
RUN virtualenv -p /usr/bin/python3 ${RETICULATE_PYTHON_ENV} \
 && source ${RETICULATE_PYTHON_ENV}/bin/activate \
 && pip install -r requirements.txt \
 && rm -f requirements.txt

# Set Quarto and Pandoc
RUN curl -fLo quarto.tar.gz https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz \
 && mkdir -p /opt/quarto/ \
 && tar -xzf quarto.tar.gz -C /opt/quarto/ \
 && ln -s /opt/quarto/quarto-${QUARTO_VERSION}/bin/quarto /usr/bin/quarto \
 && mv -f /usr/bin/pandoc /usr/bin/pandoc.bak \
 && ln -s /opt/quarto/quarto-${QUARTO_VERSION}/bin/tools/pandoc /usr/bin/pandoc \
 && rm -f quarto.tar.gz

# Set locale
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    # Set default timezone
    TZ=UTC

WORKDIR /home/docker/

EXPOSE 8787/tcp

CMD [ "/sbin/init" ]
