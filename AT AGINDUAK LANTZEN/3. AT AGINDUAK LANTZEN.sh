#!/bin/bash

# 3 Ariketa

systemctl start atd.service
at -q D -f prog1.sh now + 5 minutes