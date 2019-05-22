#!/bin/bash -e
# Requires docker 17.05 or higher

echo ""
echo "================================="
echo "  Building bitumdocs docker image  "
echo "================================="
echo ""

docker build -t bitum/bitumdocs .

echo ""
echo "==================="
echo "  Build complete"
echo "==================="
echo ""
echo "You can now run bitumdocs with the following command:"
echo "    docker run -d --rm -p <local port>:80 bitum/bitumdocs:latest"
echo ""
