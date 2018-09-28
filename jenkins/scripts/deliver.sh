#!/bin/bash

buildApp(){
        cd
        cd devops-poc-scala
        sbt dist
        sleep 45
}

setEnv(){
        cd
        mv devops-poc-scala/target/universal/poc_admin-1.0.zip ./poc/
        cd poc/
        rm -r pocadmin/
        rm play.pid
        unzip poc_admin-1.0.zip
        mv poc_admin-1.0 ./pocadmin
}

startApp(){
        echo "[poc-deploy] starting application"
        cd
        devops-poc-scala/jenkins/scripts/admin-start.sh
}

run(){
        echo "[poc-deploy]"

        buildApp
        setEnv
        startApp
}

run

exit 0;
