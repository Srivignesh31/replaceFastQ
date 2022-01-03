FROM busybox:latest
COPY rename.sh /tmp
RUN chmod +x /tmp/rename.sh
ENTRYPOINT ["sh","/tmp/rename.sh"]
