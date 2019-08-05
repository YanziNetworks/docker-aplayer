FROM yanzinetworks/alpine:3.10.1

ENV USER=aplayer
ENV UID=7104
ENV GID=7104

RUN apk --no-cache add alsa-utils && \
    addgroup --gid "$GID" "$USER" && \
    adduser \
        --disabled-password \
        --gecos "" \
        --home "$(pwd)" \
        --ingroup "$USER" \
        --no-create-home \
        --uid "$UID" \
        "$USER" && \
    addgroup "$USER" audio

ENTRYPOINT [ "aplay" ]