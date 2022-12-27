FROM fedora:37

RUN groupadd staff \
  && useradd -g staff -d /home/docker docker

LABEL org.label-schema.license="GPL-3.0" \
      org.label-schema.vcs-url="https://github.com/XiangyunHuang/data-analysis-in-action" \
      org.label-schema.vendor="Book Project" \
      maintainer="Xiangyun Huang <xiangyunfaith@outlook.com>"

ARG CMDSTAN=/opt/cmdstan/cmdstan-2.31.0
ARG CMDSTAN_VERSION=2.31.0

# System dependencies required for R packages
RUN dnf -y upgrade \
  && dnf -y install dnf-plugins-core \
  && dnf -y install pandoc \
   pandoc-pdf \
   glibc-langpack-en \
   NLopt-devel \
   automake \
   R-devel \
   R-littler \
   R-littler-examples \
   ghostscript \
   google-noto-emoji-fonts \
   google-noto-emoji-color-fonts \
   dejavu-serif-fonts \
   dejavu-sans-fonts \
   dejavu-sans-mono-fonts \
   optipng \
   ImageMagick \
   texinfo \
   cargo \
   bzip2 \
   ImageMagick-c++-devel \
   poppler-cpp-devel \
   libjpeg-turbo-devel \
   xorg-x11-server-Xvfb \
   libcurl-devel \
   openssl-devel \
   libssh2-devel \
   libgit2-devel \
   libxml2-devel \
   glpk-devel \
   gmp-devel \
   mariadb \
   mariadb-server \
   mariadb-devel \
   mariadb-connector-odbc \
   unixODBC-devel \
   sqlite-devel \
   gdal-devel \
   proj-devel \
   geos-devel \
   udunits2-devel \
   cairo-devel \
   v8-devel \
   igraph-devel \
   firewalld \
   python3-virtualenv \
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
   texlive-tufte-latex \
   texlive-awesomebox \
   texlive-fontawesome5 \
   texlive-fontawesome \
   texlive-newtx \
   texlive-tcolorbox

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
 && Rscript -e 'x <- file.path(R.home("doc"), "html"); if (!file.exists(x)) {dir.create(x, recursive=TRUE); file.copy(system.file("html/R.css", package="stats"), x)}'

RUN mkdir -p /opt/cmdstan \
  && curl -fLo cmdstan-${CMDSTAN_VERSION}.tar.gz https://github.com/stan-dev/cmdstan/releases/download/v${CMDSTAN_VERSION}/cmdstan-${CMDSTAN_VERSION}.tar.gz \
  && tar -xzf cmdstan-${CMDSTAN_VERSION}.tar.gz -C /opt/cmdstan/ \
  && cd ${CMDSTAN} && make build && cd /home/docker/

RUN dnf -y install harfbuzz-devel fribidi-devel \
  && install.r docopt \
  && install2.r remotes \
  && install2.r -r https://mc-stan.org/r-packages/ cmdstanr

COPY DESCRIPTION DESCRIPTION

RUN Rscript -e "remotes::install_deps('.')"

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

# Set default timezone
ENV TZ UTC

WORKDIR /home/docker/

EXPOSE 8787

CMD ["/init"]
