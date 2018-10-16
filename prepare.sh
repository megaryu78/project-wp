#/bin/sh

# Sustituimos parametros en fichero de configuración
rootpass1="rootpass"
rootpass2="a"
while [ $rootpass1 != $rootpass2 ]
do
    echo "Enter root pass: "
    read -s rootpass1
    echo "Repeat pass: "
    read -s rootpass2
done

sed "s/rootpass/$rootpass1/g" docker-compose-sample.yml > docker-compose.yml

dbname="dbname"
read -p "Enter db name: " dbname

sed -i "" "s/dbname/$dbname/g" docker-compose.yml

dbuser="dbuser"
read -p "Enter db user: " dbuser

sed -i "" "s/dbuser/$dbuser/g" docker-compose.yml

dbpass="dbpass"
dbpass1="$dbpass"
dbpass2="a"

while [ $dbpass1 != $dbpass2 ]
do
    echo "Enter db pass: "
    read -s dbpass1
    echo "Repeat pass: "
    read -s dbpass2
done

sed -i "" "s/dbpass/$dbpass1/g" docker-compose.yml

prefix="prefix_"
read -p "Enter table prefix [$prefix]: " prefix

sed -i "" "s/prefix/$prefix/g" docker-compose.yml

# Mostramos el contenido de la configuración
vi docker-compose.yml

# Preparamos estructura de directorios
mkdir -p ./data ./initdb ./src/wordpress ./src/plugins ./src/themes ./src/uploads
docker-compose up -d

# Establecemos alias
alias wp="docker-compose run --rm wpcli"
