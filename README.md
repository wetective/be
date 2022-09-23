# Wetectives Back End Repo

![ruby](https://img.shields.io/badge/Ruby-2.7.4-red)
![rails](https://img.shields.io/badge/Rails-5.2.8.1-red)
![rspec](https://img.shields.io/badge/RSpec-3.11.0-green)
![contributors](https://img.shields.io/badge/Contributors-5-yellow)

## Table of Contents
- [Wetectives Back End Repo](#wetectives-back-end-repo)
  - [Table of Contents](#table-of-contents)
  - [App](#app)
  - [Background](#background)
  - [Schema](#schema)
  - [Endpoints](#endpoints)
  - [Installation](#installation)
  - [Contributors](#contributors)

## App

Wetectives app can be found on [Heroku]().

## Background

The Wetectives back end repository supports the [front end repository](https://github.com/wetective/fe) by storing user data and tips submitted in the database to be retrieved from the front end app.

## Schema

![Screen Shot 2022-09-21 at 10 39 21 AM](https://user-images.githubusercontent.com/99001315/191562387-8f866a38-73bb-4aa8-87a1-6174b744e47e.png)

## Endpoints

- Create a new user
```shell
POST /api/v1/users/register

  "data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "test user",
      "email": "user@email.com",
    }
  }
```

- Search users by id
```shell
GET http://localhost:3000/api/v1/users/find?id={{id}}

"data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Some person",
      "email": "sample@email.com",
    }
  }
```

- Create a new tip
```shell
GET http://localhost:3000/api/v1/users/:id/tips/new

"data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Some person",
      "email": "sample@email.com",
    }
  }
```

- Retrieve a user's tips
```shell
GET http://localhost:3000/api/v1/users/:id/tips

"data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Some person",
      "email": "sample@email.com",
    }
  }
```
## Installation

Note: You must also install and run the [WeTectives FE app](https://github.com/wetective/fe) for full functionality.

1. Clone this repository: On your local machine, open a terminal session and enter the following commands for SSH or HTTPS to clone the repo.

- Using SSH key <br>
```shell
$ git clone git@github.com:wetective/be.git
```

- Using HTTPS <br>
```shell
$ git clone https://github.com/wetective/be.git
```

- Once cloned, you'll have a new local copy in the directory you ran the clone command in.

2. Change to the project directory: In terminal, use `$cd` to navigate to the project directory.
```shell
$ cd be
```

3. Install required Gems utilizing Bundler: <br>
- In terminal, use Bundler to install any missing Gems. If Bundler is not installed, first run the following command.
```shell
$ gem install bundler
```

- If Bundler is already installed or after it has been installed, run the following command.
```shell
$ bundle install
```

4. Database Migration<br>
- Before using the web application you will need to setup your databases locally by running the following command
```shell
$ rails db:{drop,create,migrate,seed}
```

5. Startup and Access<br>
- Finally, in order to use the web app you will have to start the server locally and access the app through a web browser.

```shell
$ rails s -p 4999
```

6. Download the frontend repo and run its [fe](https://github.com/wetective/fe) server simultaneously.

```shell
$ rails s
```

- Open web browser and visit link
    http://localhost:3000 <br><br>


## Contributors
|  | |
| --- | --- |
| Rue Zheng | [GitHub](https://github.com/ruezheng) &#124; [LinkedIn](https://www.linkedin.com/in/ruezheng/) |
| Brenna Stuart | [GitHub](https://github.com/brennacodes) &#124; [LinkedIn](https://www.linkedin.com/in/brennastuart/) |
| Cory Bethune |[GitHub](https://github.com/CoryBethune) &#124; [LinkedIn](https://www.linkedin.com/in/cory-b-711b79178/) |
| Jared Hardinger | [GitHub](https://github.com/jaredhardinger) &#124; [LinkedIn](https://www.linkedin.com/in/hardinger/) |
| Blake Saylor | [GitHub](https://github.com/blakesaylor) &#124; [LinkedIn](linkedin.com/in/blake-saylor/) |
