#!/bin/bash

# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright (C) 2022-present travis134

cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)/doomscan"
rm -rf /tmp/doomscan.log
bash doomscan 2>&1 | tee -a /tmp/doomscan.log
