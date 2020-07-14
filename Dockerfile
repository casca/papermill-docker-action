FROM ubuntu

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    python3 -m pip --no-cache-dir install notebook papermill papermill[all] && \
    python3 -m pip --no-cache-dir install numpy matplotlib pandas seaborn scipy

ADD entrypoint.sh /

RUN chmod a+x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
