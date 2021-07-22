#!/bin/bash

set -e

HOST="localhost"
PORT="3000"
VERSION="v1"

echo ""
set -x
curl -X PUT \
  -H 'Content-Type: application/json' \
  -H 'X-User-Id: joe' \
  -d '{"name": {"resourceId": 1, "resource": "RESOURCE"}}' \
  http://${HOST}:${PORT}/api/${VERSION}/resource/1
{ set +x; } 2>/dev/null
echo ""
echo ""

set -x
curl -X GET \
  http://${HOST}:${PORT}/api/${VERSION}/resource/1
{ set +x; } 2>/dev/null
echo ""
echo ""
