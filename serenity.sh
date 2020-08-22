#!/bin/bash

mvn -U -DskipTests=true clean install
mvn clean verify -Dheadless.mode=false -Dwebdriver.chrome=chromedriver
