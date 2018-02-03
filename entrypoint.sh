#!/bin/sh

# To run tests you need to pass some parameters to Behat container.
# E.x., docker-compose exec behat /srv/entrypoint.sh "--format=pretty --out=std".

# Run Behat with parameters passed as command.
bin/behat $*

# Fix permissions to artifacts folder.
chmod -R 777 /srv/artifacts
