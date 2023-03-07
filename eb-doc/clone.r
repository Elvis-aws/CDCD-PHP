

*****
Clone
*****
    - You can use an existing Elastic Beanstalk environment as the basis for a new environment by cloning the 
      existing environment. For example, you might want to create a clone so that you can use a newer version 
      of the platform branch used by the original environments platform. 
    - Elastic Beanstalk configures the clone with the same environment settings used by the original environment. 
      By cloning an existing environment instead of creating a new environment, you dont have to manually configure 
      option settings, environment variables, and other settings. Elastic Beanstalk also creates a copy of any AWS 
      resource associated with the original environment. 
    - However, during the cloning process, Elastic Beanstalk doesnt copy data from Amazon RDS to the clone. After 
      you create the clone environment, you can modify environment configuration settings as needed.