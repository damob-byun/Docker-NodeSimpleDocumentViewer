FROM node:10.17.0-slim
RUN apt-get update
RUN set -e && \
    # installing python 2.x
    apt-get update && apt-get install -y \
    git \
    python-pip python-dev build-essential \
    unoconv \
    fonts-nanum-coding \ 
    xsltproc \
    libxml2-utils \
    pypy
RUN pip install --pre pyhwp
RUN git clone https://github.com/always-awaken/NodeSimpleDocumentViewer.git document_viewer
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /document_viewer

RUN npm install

#port8080
ENV SERVER_PORT 8080
#30m
ENV TEMPFILE_DELETE_INTERVAL_MINUITE 30
#50mb
ENV UPLOAD_MAX_SIZE 50

EXPOSE 8080

ENTRYPOINT git pull && npm start