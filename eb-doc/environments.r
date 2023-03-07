

***********
Environment
***********
    ********************
    Creating Environment
    ********************
        - You can create and manage separate environments for development, testing, and production use, and you 
          can deploy any version of your application to any environment.
        - Environments can be long-running or temporary. When you terminate an environment, you can save its 
          configuration to recreate it later.
    **********
    Deployment
    **********
        - As you develop your application, you will deploy it often, possibly to several different environments 
          for different purposes. 
        - Elastic Beanstalk lets you configure how deployments are performed. You can deploy to all of the 
          instances in your environment simultaneously, or split a deployment into batches with rolling deployments.
    *************
    Configuration
    *************
        - Configuration changes are processed separately from deployments, and have their own scope. For example, 
          if you change the type of the EC2 instances running your application, all of the instances must be replaced. 
          On the other hand, if you modify the configuration of the environments load balancer, that change can be 
          made in-place without interrupting service or lowering capacity. 
        - You can also apply configuration changes that modify the instances in your environment in batches with 
          rolling configuration updates.
    *********************
    Resource modification
    *********************
        - Modify the resources in your environment only by using Elastic Beanstalk. 
        - If you modify resources using another services console, CLI commands, or SDKs, Elastic Beanstalk wont be 
          able to accurately monitor the state of those resources, and you wont be able to save the configuration 
          or reliably recreate the environment. 
        - Out-of band-changes can also cause issues when updating or terminating an environment.
    ******************
    Deleting Resources
    ******************
        - If you need to keep resources after terminating your application, create these resources outside beanstalk