#!/bin/bash

# creamos la estructura del tema
TH=./src/themes

mkdir -p ${TH}/$1/language
echo Creating Assets Structure
mkdir -p ${TH}/$1/assets/css
mkdir -p ${TH}/$1/assets/images
mkdir -p ${TH}/$1/assets/js

mkdir -p ${TH}/$1/inc

mkdir -p ${TH}/$1/template-parts/footer
mkdir -p ${TH}/$1/template-parts/header
mkdir -p ${TH}/$1/template-parts/navigation
mkdir -p ${TH}/$1/template-parts/page
mkdir -p ${TH}/$1/template-parts/post

touch ${TH}/$1/404.php
touch ${TH}/$1/archive.php
touch ${TH}/$1/comments.php
touch ${TH}/$1/footer.php
touch ${TH}/$1/front-page.php
touch ${TH}/$1/functions.php
touch ${TH}/$1/header.php
touch ${TH}/$1/index.php
touch ${TH}/$1/page.php
touch ${TH}/$1/README.txt
touch ${TH}/$1/rtl.css
touch ${TH}/$1/screenshot.png
touch ${TH}/$1/search.php
touch ${TH}/$1/searchform.php
touch ${TH}/$1/sidebar.php
touch ${TH}/$1/single.php
touch ${TH}/$1/style.css

