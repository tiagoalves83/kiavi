FROM ruby:3.2.6
  
# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs npm yarn build-essential libpq-dev postgresql-client

RUN useradd -m -s /bin/bash -u 1000 railsuser
USER railsuser

WORKDIR /app
