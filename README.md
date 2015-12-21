# Venice

*Where art meets technology.*

`v` `e` `n` `i` `c` `e` is a a web platform for creatives to represent them on-line.

Project homepage: https://github.com/alexkravets/venice

## Create Github Project

Before create github project you will need:

- Create account on github : [Github](https://github.com/)
- Check if Git is installed `git --version`
- If not, download Git [here](http://git-scm.com/downloads). Then, setup your local Git profile - In the terminal:
    - Type `git config --global user.name "your-name"`
    - Type `git config --global user.email "your-email"`
- [Generate and add ssh key to github](https://help.github.com/articles/generating-ssh-keys/)

Run this create-github-project script to create, inititate, add git remote and pull github repo:
`% ./bin/create-github-project <github_username> <github_pass> <new_repo_name>`


## Deploying to Heroku

Before deploy to heroku you will need:

- Create account on heroku : [Heroku](https://heroku.com)
- Install heroku toolbelt [HerokuToolbelt](https://toolbelt.heroku.com/)
- [Generate and add ssh key to heroku](https://devcenter.heroku.com/articles/keys)
    - Generate key: `ssh-keygen -t rsa`
    - Add key to heroku `heroku keys:add` (Without an argument, it will look for the key in the default place (~/.ssh/id_rsa.pub or ~/.ssh/id_dsa.pub))


Run this deploy-heroku script to set up create, connect and setup heroku app:
`% ./bin/deploy-heroku <app_name>`

## Setup S3

Before Setup S3 you will need:

- Create account on amazon : [Amazon](http://aws.amazon.com/)
- Add [s3 service](http://console.aws.amazon.com/console/home)
- On Amazon [Create Access Key ID and Secret Access Key](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html)

Run setup-s3 script to create a new bucket, create user with permission only for new bucket on s3 and set appropriate variables to Heroku.

`% ./bin/setup-s3 <access_key_id> <secret_access_key>`

