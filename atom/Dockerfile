# docker run -d --name atom \
#          --user=$(id -u) \
#          -e DISPLAY=unix$DISPLAY \
#          --workdir="$HOME" \
#          --volume="$HOME:$HOME" \
#          --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
#          --volume="/dev/shm:/dev/shm" \
#          my_atom
#

FROM debian:bullseye-slim

ENV ATOM_VERSION v1.51.0

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      ca-certificates \
      curl \
      fakeroot \
      gconf2 \
      gconf-service \
      git \
      gvfs-bin \
      libasound2 \
      libcap2 \
      libgconf-2-4 \
      libgcrypt20 \
      libgtk2.0-0 \
      libgtk-3-0 \
      libnotify4 \
      libnss3 \
      libx11-xcb1 \
      libxkbfile1 \
      libxss1 \
      libxtst6 \
      libgl1-mesa-glx \
      libgl1-mesa-dri \
      policykit-1 \
      python3 \
      xdg-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl -L https://github.com/atom/atom/releases/download/${ATOM_VERSION}/atom-amd64.deb > /tmp/atom.deb && \
    dpkg -i /tmp/atom.deb && \
    rm -f /tmp/atom.deb && \
    useradd -d /home/atom -m atom -s /bin/bash && \
    chown -R atom /usr/bin/atom


USER atom

CMD ["/usr/bin/atom","-f","--no-sandbox"]
