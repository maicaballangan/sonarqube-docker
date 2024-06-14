FROM sonarqube:10.3-community

# Add 3rd-party plugins
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/mc1arke/sonarqube-community-branch-plugin/releases/download/1.18.0/sonarqube-community-branch-plugin-1.18.0.jar
#RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/felipebz/zpa/releases/download/3.4.0/zpa-toolkit-3.4.0.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/checkstyle/sonar-checkstyle/releases/download/10.16.0/checkstyle-sonar-plugin-10.16.0.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/spotbugs/sonar-findbugs/releases/download/4.2.9/sonar-findbugs-plugin-4.2.9.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/green-code-initiative/ecoCode-java/releases/download/1.6.0/ecocode-java-plugin-1.6.0.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/green-code-initiative/ecoCode-javascript/releases/download/1.4.0/ecocode-javascript-plugin-1.4.0.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/green-code-initiative/ecoCode-python/releases/download/1.4.2/ecocode-python-plugin-1.4.2.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/dependency-check/dependency-check-sonar-plugin/releases/download/5.0.0/sonar-dependency-check-plugin-5.0.0.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/sbaudoin/sonar-shellcheck/releases/download/v2.5.0/sonar-shellcheck-plugin-2.5.0.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/C4tWithShell/community-rust/releases/download/v0.2.2/community-rust-plugin-0.2.2.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/willemsrb/sonar-rci-plugin/releases/download/sonar-rci-plugin-1.0.2/sonar-rci-plugin-1.0.2.jar
RUN wget -P ${SONARQUBE_HOME}/extensions/plugins/ -N --no-check-certificate https://github.com/jborgers/sonar-pmd/releases/download/3.5.1/sonar-pmd-plugin-3.5.1.jar

# Make use of sonarqube configuration
COPY conf ${SONARQUBE_HOME}/conf
