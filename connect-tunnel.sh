#!/bin/bash

docker network connect tunnel nginx
docker network connect tunnel phpmyadmin
docker network connect tunnel api_blog
docker network connect tunnel home_blog