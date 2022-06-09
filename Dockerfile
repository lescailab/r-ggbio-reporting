FROM r-base

RUN apt-get install -y \
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
wget

RUN Rscript -e "install.packages('BiocManager')"

RUN Rscript -e "BiocManager::install(c(\
'tidyverse', \
'stringr', \
'biovizBase', \
'GenomicRanges', \
'ggbio', \
'knitr' \
))"