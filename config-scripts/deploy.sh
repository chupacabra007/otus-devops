#!/bin/bash
# Clone, install and run application
git clone https://github.com/Otus-DevOps-2017-11/reddit.git
cd reddit && bundle install
puma -d