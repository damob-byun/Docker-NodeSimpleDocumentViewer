# NodeSimpleDocumentViewer-Docker

from [NodeSimpleDocumentViewer](https://github.com/always-awaken/NodeSimpleDocumentViewer)

<b>Pull</b>

```bash
$ docker pull dksqkdahs/node-simple-document-viewer-docker
```

## Run - example

```bash
$ docker run -d -p 8080:8080 dksqkdahs/node-simple-document-viewer-docker
```

## Usage

use [PostMan](https://www.getpostman.com/)<br>
import ./simple_document_viewer.postman_collection.json<br>

## Environment

ENV SERVER_PORT 8080 (default 8080)<br>
ENV TEMPFILE_DELETE_INTERVAL_MINUITE 30 (default 30m)<br>
ENV UPLOAD_MAX_SIZE 50 -> (default 50MB)<br>

## License

[MIT](LICENSE)
