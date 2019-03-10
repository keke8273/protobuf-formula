{% from "protobuf/map.jinja" import protobuf with context %}

extract_protobuf:
  archive.extracted:
    - name: /tmp/protobuf-{{protobuf.version}}
    - source: https://github.com/protocolbuffers/protobuf/releases/download/v{{protobuf.version}}/protoc-{{protobuf.version}}-{{protobuf.os_name}}.zip
    - source_hash: {{protobuf.source_hash}}
    - enforce_toplevel: False
