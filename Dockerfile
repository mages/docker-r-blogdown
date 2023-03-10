FROM --platform=linux/x86_64  rocker/verse:latest

MAINTAINER Markus Gesmann  <markus.gesmann@gmail.com>


RUN R -q -e "install.packages(c('markdown', 'blogdown', 'tint', 'xtable', 'openxlsx','curl', 'xts', 'zoo', 'grid', 'lubridate', 'ggplot2', 'ggthemes', 'gridExtra', 'magrittr', 'kableExtra', 'PerformanceAnalytics', 'gtable', 'ggrepel', 'patchwork', 'showtext', 'formattable', 'flextable', 'scales', 'plotly', 'htmlwidgets', 'magrittr', 'readr', 'grImport2'),repos='http://cran.rstudio.com')"
RUN R -q -e "blogdown::install_hugo()"

# docker build - < Dockerfile --tag mages/r-blogdown:1.7
# docker push  mages/r-blogdown:1.7
