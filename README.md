# README

This project is created for presentation purpose to Gumroad. Please read the project assumptions.

### Introduction Video:
<a target="_blank" href="https://youtu.be/_HeeIM5njGo?si=0IFzL9ao_RWuNNou"><img width="100" src="https://t3.ftcdn.net/jpg/04/74/05/94/360_F_474059464_qldYuzxaUWEwNTtYBJ44VN89ARuFktHW.jpg"></a>

### Aussumptions:
- This project is to demonstrate only tipping system.
- This does not have Integration with any Payment Gateway.
- Stylesheet I have tried to use it from Gumroad.com
- Not all products or categories added in this project as listed on gumroad.com
- Actual Stripe integration and other necessary information available on Introduction Video.  

### Important Commands

#### Database Commands
```
# load schema changes
bundle exec rake db:schema:load

# run migrations
bundle exec rake db:migrate

# run seed file to dump initial data
bundle exec rake db:seed

# connect to postgresql client
psql -U postgres -d development

# drop table
Drop table <table_name>
```

#### Installation Commands
```
# build the docker image in backgroud
docker compose up --build -d

# connect to docker terminal
docker exec -it <mycontainer> bash
```

#### Deployment Step

1. Build the docker image and setup application
```
docker compose up --build -d
```
2. Verify both the containers are un and running
3. Connect to web pod and run migrations followed by seed
```
bundle exec rake db:migrate
bundle exec rake db:seed
```

At this stage application should be running on localhost:3000 or 0.0.0.0:3000

**Note**: `.env` file added to this repo is for presentation purpose. This file should not be committed on production ready repo.
