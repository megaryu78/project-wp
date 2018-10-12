#/bin/sh
mkdir -p ./src/wordpress ./src/plugins ./src/themes ./src/uploads
alias wp="docker-compose run --rm wpcli"
docker-compose up -d
