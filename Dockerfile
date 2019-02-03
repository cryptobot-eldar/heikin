FROM egaraev/basecentos:latest
COPY heikin_ashi.py heikin_day.py btc_ha.py config.py start.sh service0.sh service1.sh service2.sh   /usr/local/bin/
WORKDIR /usr/local/bin
RUN chmod +x start.sh service0.sh service1.sh service2.sh
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
ENTRYPOINT ["/usr/local/bin/start.sh"]
