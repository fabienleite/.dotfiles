function jwt_extract() {
  echo
  echo -e "\e[31mHeader:\e[0m"
  jq -R 'split(".") | .[0] | @base64d | fromjson' <<< "$1"
  echo -e "\e[31mPayload:\e[0m"
  jq -R 'split(".") | .[1] | @base64d | fromjson' <<< "$1"
}

