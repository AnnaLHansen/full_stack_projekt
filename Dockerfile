FROM rocker/tidyverse:latest

RUN mkdir /rstudio

WORKDIR /rstudio

RUN R -e "install.packages(c('lubridate'))"

COPY ./r_kode /rstudio

EXPOSE 3000

CMD ["./r_kode/run_script.sh"]