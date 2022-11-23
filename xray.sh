#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f19f8663-5213-4ede-8f7d-c72bc839b622"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

