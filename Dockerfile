FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

# Install the python3-venv package
RUN apt-get install -y python3-venv

# Create the virtual environment in /venv
RUN python3 -m venv /venv

# Install PyYAML in the virtual environment
RUN /venv/bin/pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]