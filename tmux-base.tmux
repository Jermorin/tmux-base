OMT_FILE=src/base.conf
OMT_VERSION=0.0.1

_current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

__cleanup() {
  unset -v OMT_FILE OMT_VERSION
  unset -v _current_dir
  unset -f __load __cleanup
}

__load() {
  tmux source-file "$_current_dir/$OMT_FILE"
}

__load
__cleanup