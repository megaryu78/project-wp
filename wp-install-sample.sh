#/bin/bash
wp='docker-compose run --rm wpcli'
$wp core install --url=localhost:8000 --title="Local Site" --admin_user=nimda --admin_password=secret --admin_email=admin@cronologic.com'
