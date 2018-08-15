<h1 align="center">
  <br>
  <a href="http://www.wago.com.br"><img src="http://www.wago.com.br"><img src="https://rawgit.com/leomleao/fichacadastral/master/public/logo.png" alt="WAGO" width="200"></a>
  <br>
  API endpoint for app to update price for the Inter Connection material series of WAGO
  <br>
</h1>


<p align="center">
  <a href="https://travis-ci.org/leomleao/pricingic">
    <img src="https://travis-ci.org/leomleao/pricingic.svg?branch=master"
         alt="Travis">
  </a>  
</p>

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#download">Download</a> •
  <a href="#related">Related</a> •
  <a href="#license">License</a>
</p>

## TODOS

- [ ] Define tests for TDD
- [x] User module
- [x] User service with pass crypt
- [x] User controller (creation endpoint)
- [x] User jwt strategy stateless authentication
- [ ] Materials module
- [ ] Materials endpoints guarded
- [x] Auth controler (login endpoint)
- [x] Docs
- [x] Set UP CI
- [ ] Set UP Deploy
- [ ] Test Deploy
- [ ] Done!


## API ENDPOINT

- [Methods](#methods)
  - [User](#user)
  - [Auth](#auth)
  - [Contact](#contact)


## Methods

### User

#### Creating an user:

    POST /api/users

Json body

| Field          | Description                  | Optional   |
| -------------- | ---------------------------- | ---------- |
| `fullname`     | The name of the new user     | yes        |
| `email`        | The user's email             | no         |
| `password`     | His password                 | no         |

Returns the created User.

### Auth

#### Authentication an user:

    POST /api/auth/login

Json body

| Field          | Description                  | Optional   |
| -------------- | ---------------------------- | ---------- |
| `email`        | The user's email             | no         |
| `password`     | His password                 | no         |

Returns the access Token.



### How To Use

To clone and run this application, you'll need [Git](https://git-scm.com) and [Node.js](https://nodejs.org/en/download/) (which comes with [npm](http://npmjs.com)) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://leomleao@bitbucket.org/leomleao/addressbookapi.git


# Run with Docker
$ docker-compose up

# App should be available in port 3000

```


Or if to install locally outside or docker:


```bash
# Install dependencies
$ npm install

# If on dev, create a .env in the root folder with the following keys:

# DATABASE_URL=postgres://<USER>:<PASS>@<HOST>:<PORT>/<DB>
# SECRETKEY=<YOUR TOP SECRET KEY>
# FIREBASEAPIKEY=<YOUR FIREBASE API KEY>
# FIREBASEDB=https://<YOU RPROJECT NAME>.firebaseio.com

# Run the app
$ npm start

## OR

# Run the in hot reload mode
$ nodemon

## OR

# Build dist mode and build docs
$ npm run build
$ npm run start:prod

```

Tests can be performed by simply running:

```bash
# Run the app
$ npm test
```