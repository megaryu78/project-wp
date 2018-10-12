#/bin/sh
cp docker-compose-sample.yml docker-compose.yml
mkdir -p ./data ./initdb ./src/wordpress ./src/plugins ./src/themes ./src/uploads
alias wp="docker-compose run --rm wpcli"
docker-compose up -d
