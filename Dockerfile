FROM r-base

RUN apt-get update
RUN apt-get install -y \
procps \
libcurl4-openssl-dev \
libfontconfig1-dev \
libxml2 \
libxml2-dev \
libz-dev \
libbz2-dev \
libclang-dev \
liblzma-dev \
python3 \
python3-pip \
wget \
make \
gcc \
pandoc

RUN Rscript -e "install.packages('BiocManager')"

RUN Rscript -e "BiocManager::install(c(\
'tidyverse', \
'stringr', \
'biovizBase', \
'GenomicRanges', \
'ggbio', \
'knitr' \
))"