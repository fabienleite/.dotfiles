function generate_uuid() {
  uuidgen |awk '{print tolower($0)}'
}

