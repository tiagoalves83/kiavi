
# README

## Configuration

To setup your local development environment do the following commands:

    git clone https://github.com/tiagoalves83/kiavi.git
    cd kiavi
    docker compose run --rm -u root web bash -c "mkdir -p /bundle/vendor && chown railsuser /bundle/vendor" 
    docker compose run --rm web bash

Inside the docker container run the following codes

    bundle install 
    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rake db:seed
    bundle exec rails spina:install
    exit 

And finally start your dev environment

    docker compose up 

You can access SpinaCMS at http://localhost:3000 and  http://localhost:3000/admin
You also can query PostgreSQL database using Adminer at http://localhost:8080 using "*postgres*" / "*postgres*" as credentials and "*db*" as host.

### Issues
If running any issues try to replace user id and group id by the current user/group id in the web container inside *compose.yaml* file. To check your user / group id, just run the "*id*" in linux/osx terminal.

    services:
      web:
        ...
        user: "1000:1000"


