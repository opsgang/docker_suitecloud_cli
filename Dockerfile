FROM openjdk:11-jdk-slim-bullseye

RUN \
  apt-get update && apt-get upgrade -y && apt-get install -y curl && \
  curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
  apt-get update && apt-get install -y nodejs && \
  rm -rf /var/lib/apt/lists/* && \
  npm install -g @oracle/suitecloud-cli

ENTRYPOINT ["suitecloud"]
CMD ["-h"]
