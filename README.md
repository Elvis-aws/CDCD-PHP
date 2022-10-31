#  virtual environment
    # virtualenv env
    # source env/bin/activate

# Dependencies
    # pip3 freeze > requirements.txt


# Docker dynamoDB
    # dynamodb-docker-compose up -d

# Virtual env
    # pip3 install virtualenv
    # virtualenv env
    # source env/bin/activate

# Deploy to Elastic beanstalk
    # Rename main file to application.py
    # Rename flask app to application
    # Create requirements file
    # Create .ebextensions folder

# EB CLI
    Remove .elasticbeanstalk folder to reset eb init
    pip3 install awsebcli
    virtual environment
    Commands
    eb abort
    eb appversion
    eb clone
    eb codesource
    eb config
    eb console
    eb create
    eb deploy
    eb events
    eb health
    eb init
    eb labs
    eb list
    eb local
    eb logs
    eb open
    eb platform
    eb printenv
    eb restore
    eb scale
    eb setenv
    eb ssh
    eb status
    eb swap
    eb tags
    eb terminate
    eb upgrade
    eb use

# Generate SSH Key
    ssh-keygen -t rsa -b 4096
    cat ~/.ssh/id_rsa.pub
    cat ~/.ssh/id_rsa
    cd ~/.ssh
    # Key location
        /Users/elvisngwesse/.ssh/id_rsa

