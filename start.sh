#!/bin/bash

# Cài đặt Mono
if [ ! -d "/usr/lib/mono" ]; then
    apt-get update
    apt-get install -y mono-complete
fi

# Biên dịch mã C#
mcs -out:Program.exe Program.cs

# Chạy chương trình
mono Program.exe
