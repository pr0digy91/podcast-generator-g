FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

# RUN pip3 install PyYAML

# RUN apt-get install -y python3-pyyaml

RUN python3 -m venv /path/to/venv
RUN /path/to/venv/bin/pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]