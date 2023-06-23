WORKDIR /var/azuracast/www
COPY --chown=azuracast:azuracast . .
RUN composer dump-autoload --optimize --classmap-authoritative \
    && touch /var/azuracast/.docker
USER root
EXPOSE 80 2022
EXPOSE 8000-8999
CMD ["./master"]
