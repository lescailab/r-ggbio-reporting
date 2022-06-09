FROM r-base

RUN Rscript -e "install.packages('BiocManager')"

RUN Rscript -e "BiocManager::install(c(\
    'tidyverse', \
	'stringr', \
	'biovizBase', \
	'GenomicRanges', \
    'ggbio', \
    'knitr' \
    ))"