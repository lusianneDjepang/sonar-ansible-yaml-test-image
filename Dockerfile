FROM jenkins/jenkins:lts

RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates git wget unzip xz-utils pylint \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/sonarqube/extensions/plugins

RUN wget https://github.com/sbaudoin/sonar-yaml/releases/download/v1.5.1/sonar-yaml-plugin-1.5.1.jar
    && wget https://github.com/sbaudoin/sonar-ansible/releases/download/v2.3.0/sonar-ansible-plugin-2.3.0.jar


ENTRYPOINT ["/usr/bin/entrypoint.sh"]
