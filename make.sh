#!/usr/bin/env bash

mvn -f pom.xml clean package -Plocal -U

cp /target/java-mariadb-standalone-server.jar mariadb-standalone.jar
