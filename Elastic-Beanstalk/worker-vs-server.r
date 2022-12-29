

**********
Worker-env
**********
    - No client interaction, only the backend 
    - If your AWS Elastic Beanstalk application performs operations or workflows that take a long time to complete, 
      you can offload those tasks to a dedicated worker environment. 
    - Decoupling your web application front end from a process that performs blocking operations is a common way 
      to ensure that your application stays responsive under load.
*************
Webserver-env
*************
    - Client interaction
    - LB and ASG configured to direct traffic to backend EC2 instances 
    