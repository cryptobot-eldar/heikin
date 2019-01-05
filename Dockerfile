FROM egaraev/basecentos:latest
COPY heikin_ashi.py heikin_day.py btc_ha.py config.py start.sh /usr/local/bin/
WORKDIR /usr/local/bin
RUN chmod +x start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]
