# Contributing to the Road
_See what we did there?_ :wink:

## Getting involved
The Road to Code is entirely about working together, building cool stuff, and becoming a better developer. Not only do we appreciate the help, we actively encourage it to help you grow as a developer!

## First time getting involved with open source
If you've never contributed to an open source project before, don't worry! This is a safe place, and we're here to help you :smile: Just check out the **Solving bugs and adding features** section below!

## Reporting bugs
If you've found a bug, please follow these steps:

* **Security threats**: If you find something that you think is a security threat, **Please do not open a github issue**, instead please message me on twitter (@StMacLennan) and we can chat over DM.

* **Has it been reported already?**: Before reporting it, [search the existing issues](https://github.com/StMacLennan/road-to-code/issues) to see if it's already been reported. Perhaps you can elaborate on the issue and help us fix it

* **It's a new issue!** If you're unable to find an open issue addressing the problem, [open a new one](https://github.com/StMacLennan/road-to-code/issues/new). Be sure to include
  * a title
  * a clear description,
  * and as much relevant information as possible (including steps to replicate it)
  * add a **bug** label

## Adding features
If you want to suggest something cool, or make something better, please follow these steps:

### Do you want to suggest a new feature?
If you want to suggest we add a new feature (but don't want to build it yourself), please follow these steps:
* **Has someone else suggested it already?**: Before suggesting anything, [search the existing features](https://github.com/StMacLennan/road-to-code/issues?utf8=%E2%9C%93&q=label%3Afeature) to see if it's already been suggested. If you feel like commenting on the suggestion, we'd welcome your input!

* **It's a new feature!**: If you're unable to find an open issue with the feature, then [open a new one](https://github.com/StMacLennan/road-to-code/issues/new). Be sure to include
  * a title
  * a clear description,
  * and as much relevant information as possible (including suggestions for how to implement it if possible)
  * add a **feature** label

### Do you want to build the feature?
* Firstly, make sure that there is an [issue documenting the feature](https://github.com/StMacLennan/road-to-code/issues?utf8=%E2%9C%93&q=label%3Afeature). If there isn't, be sure to create one first (see **Do you want to suggest a new feature?** above)

* Follow along the **Fixing issues and building beatures** section below

## Fixing issues and building features
In short all bugs and features should be well documented in the issues. If you would like to help by building something to resolve this issue, the follow these steps:
1. Fork the repo
2. Clone your own version of the repo to your local machine
3. Create a new branch that clearly addresses the issue you're fixing
4. Commit your changes (a note on git commit messages, please include a simple but clear label, and a description about what you did with each commit)
5. Once you are happy that your fix is complete, and all tests are passing, create a pull request
6. Ensure that the pull request description clearly describes the problem and solution. **Please include the relevant issue number so that we can track it down**
7. Give yourself a high 5! :raised_hand:

## Working with docker
This repo is setup with and contained within docker. To get started, follow these steps once you have a copy on your local machine:
1. Ensure that you have docker installed on your machine. Checkout [the Docker website](https://www.docker.com) to do this. You will need docker, and docker-compose
2. The first time that you run docker for this project, and anytime there is a change to the gemfile, run `docker-compose up --build`
  (Running this the first time will take a few minutes so that you can download the necessary docker images)
3. To stop the containers, press `control+c` and once stopped, type `docker-compose down`
4. Restart the containers with `docker-compose up`
5. The first time you run the containers, you will need to setup the databases. Once the containers are running, type `docker-compose exec web rails db:create db:migrate`
6. View the app at `localhost:3000`
7. To run tests, type `docker-compose run -e "RAILS_ENV=test" web rails test` (Currently system tests don't work, but these are coming soon)

## Working with this repo
There are a few steps needed to work with this repo once you have set it up on your local machine
1. **Initialize yarn**: node modules are not committed to git.
  - Install packages with `docker-compose exec web yarn install`
2. **Initialize your database**: Create and initialize your database with `docker-compose exec web rails db:create db:migrate`

This is a group effort, and we're so grateful for your help!

Thank you! :heart: :heart: :heart:



