#!/bin/sh

# To run tests you need to pass some parameters to Behat container.
# E.x., docker-compose exec behat /srv/entrypoint.sh "--format=pretty --out=std".

# Pause until Composer update will be finished.
if [ "$COMPOSER_UPDATE" -eq "1" ]; then
    while [  ! -e "/tmp/update_finished" ]; do
        sleep 1
    done
fi

# Run Behat with parameters passed as command.
bin/behat $*

# Fix permissions to artifacts folder.
chmod -R 777 /srv/artifacts
