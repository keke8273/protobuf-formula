{% from "protobuf/map.jinja" import protobuf with context %}

extract_protobuf:
  archive.extracted:
    - name: /usr/local/bin
    - source: https://github.com/protocolbuffers/protobuf/releases/download/v{{protobuf.version}}/protoc-{{protobuf.version}}-{{protobuf.os_name}}.zip
