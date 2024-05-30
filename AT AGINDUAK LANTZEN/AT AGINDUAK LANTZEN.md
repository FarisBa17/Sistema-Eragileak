#!/bin/bash

## 2 Ariketa

pacman -S at



#!/bin/bash

# 3 Ariketa

systemctl start atd.service
at -q D -f prog1.sh now + 5 minutes



#!/bin/bash

# 4 Ariketa

at -q L -f prog2.sh 05:00AM + 10 minutes 



#!/bin/bash

at -f prog3.sh 15:00 05/17/2024




#!/bin/bash

# 6 Ariketa

atq -q D



#!/bin/bash

# 7 Ariketa

atq



#!/bin/bash

# 8 Ariketa

atrm 6



#!/bin/bash

# 10 Ariketa

echo faris >> /etc/at.denay
at now + 3 minutes