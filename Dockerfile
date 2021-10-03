# Hver docker kommando i dockerfilen 
# er et lag i ens docker image.
# Hvis man skal igennem mange trin for at bygge ens
# dokcer image, vil det blive en meget lang docker fil, 
# hvis man ikke samler de forskellige lag. 
#
# Hvis man har sin Dockerfile liggende lokalt
# kan man fra mappen kalde:
# sudo docker image . 
# Kommandoen bygger ens image. 
# sudo docker image ls
# er en kommando som viser alle de tilgængelige images. 

FROM rocker/tidyverse:latest

RUN mkdir /rstudio

WORKDIR /rstudio

RUN R -e "install.packages(c('lubridate'))"

COPY ./r_kode /rstudio

CMD ["echo", "Hello Annas Verden!"]

# EXPOSE 3000
#
#CMD ["./r_kode/run_script.sh"]