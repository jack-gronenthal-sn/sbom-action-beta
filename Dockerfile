FROM alpine:3.10
LABEL authors="jack.gronenthal"

COPY entrypoint.sh /entrypoint.sh
COPY inputs.sh /inputs.sh

RUN chmod +x entrypoint.sh
RUN chmod +x inputs.sh

ENTRYPOINT ["/entrypoint.sh"]