FROM --platform=linux/x86_64  rocker/verse:4.2.2

MAINTAINER Markus Gesmann  <markus.gesmann@gmail.com>


RUN R -q -e "install.packages(c('markdown', 'blogdown', 'tint', 'xtable', 'openxlsx','curl', 'xts', 'zoo', 'grid', 'lubridate', 'ggplot2', 'ggthemes', 'gridExtra', 'magrittr', 'kableExtra', 'PerformanceAnalytics', 'gtable', 'ggrepel', 'patchwork', 'showtext', 'formattable', 'flextable', 'scales', 'plotly', 'htmlwidgets', 'magrittr', 'readr', 'grImport2'),repos='http://cran.rstudio.com')"
RUN R -q -e "blogdown::install_hugo()"

RUN tlmgr update --self
RUN tlmgr install changepage
RUN tlmgr install ifmtarg
RUN tlmgr install paralist
RUN tlmgr install placeins
RUN tlmgr install sauerj
RUN tlmgr install tufte-latex
RUN tlmgr install xifthen
RUN tlmgr install hardwrap
RUN tlmgr install iftex
RUN tlmgr install titlesec
RUN tlmgr install auxhook
RUN tlmgr install bigintcalc
RUN tlmgr install bitset
RUN tlmgr install etexcmds
RUN tlmgr install gettitlestring
RUN tlmgr install hycolor
RUN tlmgr install hyperref
RUN tlmgr install intcalc
RUN tlmgr install kvdefinekeys
RUN tlmgr install kvsetkeys
RUN tlmgr install letltxmacro
RUN tlmgr install ltxcmds
RUN tlmgr install pdfescape
RUN tlmgr install refcount
RUN tlmgr install rerunfilecheck
RUN tlmgr install stringenc
RUN tlmgr install uniquecounter
RUN tlmgr install zapfding
RUN tlmgr install pdftexcmds
RUN tlmgr install infwarerr
RUN tlmgr install kvoptions
RUN tlmgr install ragged2e
RUN tlmgr install geometry
RUN tlmgr install textcase
RUN tlmgr install setspace
RUN tlmgr install xcolor
RUN tlmgr install natbib
RUN tlmgr install fancyhdr
RUN tlmgr install amsmath
RUN tlmgr install latex-amsmath-dev
#RUN tlmgr install already
RUN tlmgr install ec
RUN tlmgr install booktabs
RUN tlmgr install units
RUN tlmgr install ulem
RUN tlmgr install morefloats
RUN tlmgr install roboto
RUN tlmgr install fontaxes
RUN tlmgr install raleway
RUN tlmgr install ly1
RUN tlmgr install subfig
RUN tlmgr install caption
RUN tlmgr install multirow
RUN tlmgr install wrapfig
RUN tlmgr install float
RUN tlmgr install colortbl
RUN tlmgr install pdflscape
RUN tlmgr install tabu
RUN tlmgr install varwidth
RUN tlmgr install threeparttable
RUN tlmgr install threeparttablex
RUN tlmgr install environ
RUN tlmgr install trimspaces
RUN tlmgr install makecell
RUN tlmgr install epstopdf-pkg
RUN tlmgr install footmisc
RUN tlmgr install koma-script
RUN tlmgr install euenc
RUN tlmgr install fontspec
RUN tlmgr install tipa
RUN tlmgr install unicode-math
RUN tlmgr install xunicode
RUN tlmgr install etoolbox
RUN tlmgr install bookmark

# docker build - < Dockerfile --tag mages/r-blogdown:2.0
# docker push  mages/r-blogdown:2.0
