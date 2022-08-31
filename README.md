# A quick start of serving empty Angular project in Gin-Gonic 


The project only provides basic development infrastructures. Both Angular and Gin are pure for developer to add their own code. The infrastructures of this project include
1. Commitlint and husky for better commit messages
2. Standard version change log 
3. Dockerization

```diagram
-- Caddy -- https://localhost:8888
|
|
-- Gin -- http://localhost:8080
|
|
-- Angular
```
## Start on Docker
- Step1: Run `docker-compose up -d --build` in the project root folder.
- Step2: Open the Angular page via https://localhost:8888.


## Start on local machine
- Step1: Run `npm install` in the project root folder.
- Step2: Run `npm run install-build:all`.
- Step3: Open the Angular page via http://localhost:8080.

## Note
1. Before developping and commiting code, you should run `npm install` in the project root folder. 