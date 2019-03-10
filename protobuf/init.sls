{% from "protobuf/map.jinja" import protobuf with context %}

extract_protobuf:
  archive.extracted:
    - name: /tmp/protobuf-{{protobuf.version}}
    - source: https://github.com/protocolbuffers/protobuf/releases/download/v{{protobuf.version}}/protoc-{{protobuf.version}}-{{protobuf.os_name}}.zip
    - source_hash: {{protobuf.source_hash}}
    - enforce_toplevel: False

install_protobuf_bin:
  file.copy:
    - require: 
      - archive: extract_protobuf
    - name: /usr/local/bin
    - source: /tmp/protobuf-{{protobuf.version}}/bin/*
    - force: True

install_protobuf_include:
  file.copy_:
    - require:
      - archive: extract_protobuf
    - name: /usr/local/include
    - source: /tmp/protobuf-{{protobuf.version}}/include/*
    - force: True
