FROM alpine
LABEL author="Bartlomiej Szabat"

# Utworzenie folderu roboczego
WORKDIR /usr/src/app

VOLUME [ "/logs" ]
COPY pluto.sh pluto.sh

ENTRYPOINT ["bash","./pluto.sh" ]