

**********
Deployment
**********
    - Each deployment is identified by a deployment ID. 
    - Deployment IDs start at 1 and increment by one with each deployment and instance configuration change. 
    - If you enable enhanced health reporting, Elastic Beanstalk displays the deployment ID in both the health console 
      and the EB CLI when it reports instance health status. 
    - The deployment ID helps you determine the state of your environment when a rolling update fails.
    ****************
    Deployment Modes
    ****************
        ***********
        All at once
        ***********
            - The quickest deployment method. 
            - Suitable if you can accept a short loss of service, and if quick deployments are important to you. 
            - With this method, Elastic Beanstalk deploys the new application version to each instance. 
            - Then, the web proxy or application server might need to restart. 
            - As a result, your application might be unavailable to users (or have low availability) for a short time.
        *******
        Rolling
        *******
            - Avoids downtime and minimizes reduced availability, at a cost of a longer deployment time. 
            - Suitable if you cant accept any period of completely lost service. 
            - With this method, your application is deployed to your environment one batch of instances at a time. 
            - Most bandwidth is retained throughout the deployment.
        *****************************
        Rolling with additional batch
        *****************************
            - Avoids any reduced availability, at a cost of an even longer deployment time compared to the Rolling 
              method. 
            - Suitable if you must maintain the same bandwidth throughout the deployment. 
            - With this method, Elastic Beanstalk launches an extra batch of instances, then performs a rolling 
              deployment. 
            - Launching the extra batch takes time, and ensures that the same bandwidth is retained throughout the 
              deployment.
        *********
        Immutable
        *********
            - A slower deployment method, that ensures your new application version is always deployed to new 
              instances, instead of updating existing instances. 
            - It also has the additional advantage of a quick and safe rollback in case the deployment fails. 
            - With this method, Elastic Beanstalk performs an immutable update to deploy your application. 
            - In an immutable update, a second Auto Scaling group is launched in your environment and the new 
              version serves traffic alongside the old version until the new instances pass health checks.
        *****************
        Traffic splitting
        *****************
            - A canary testing deployment method. 
            - Suitable if you want to test the health of your new application version 
            - using a portion of incoming traffic, while keeping the rest of the traffic served by the old 
              application version.
        **********
        Blue Green
        **********
            - Not a direct feature of Beanstalk
            - Zero downtime and release facility
            - Creates a new stage and deploys your new environment
            - The new environment (Green) can be validated and rolled back independently
            - Route 53 can be setup using weighted policies to redirect a little bit of traffic to the stage 
              environment using Beanstalk, swap Urls when done with the environment to test