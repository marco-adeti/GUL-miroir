#/bin/bash
cd $(dirname $0)/htdocs
python -m SimpleHTTPServer 80 &
