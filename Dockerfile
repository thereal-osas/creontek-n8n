FROM n8nio/n8n:latest

USER root

RUN mkdir -p /data/.n8n && \
    chown -R node:node /data && \
    chmod -R 755 /data

USER node

ENV N8N_USER_FOLDER=/data/.n8n

EXPOSE 5678

CMD ["n8n", "start"]
