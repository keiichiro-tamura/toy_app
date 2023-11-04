#!/bin/usr/env bash
# exit on error
set -o errexit
bundle install
bundle exec rails assets:preconpile
bundle exec rails assets:clean
bundle exec rails d:migrate