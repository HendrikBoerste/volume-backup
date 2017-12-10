FROM arm32v6/alpine

ADD crontab.txt /crontab.txt
ADD volume-backup.sh /volume-backup.sh
COPY entry.sh /entry.sh
RUN chmod 755 /volume-backup.sh /entry.sh
RUN /usr/bin/crontab /crontab.txt

CMD ["/entry.sh"]
