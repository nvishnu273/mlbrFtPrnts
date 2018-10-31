FROM localhost:5000/wordpress-4.8
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
USER www-data
CMD ["wp", "shell"]