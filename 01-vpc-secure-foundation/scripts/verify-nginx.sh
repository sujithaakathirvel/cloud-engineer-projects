#!/bin/bash

echo "Checking nginx status..."
systemctl status nginx

echo "Testing localhost..."
curl localhost