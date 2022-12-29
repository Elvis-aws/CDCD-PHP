


*********
Migration
*********
    - After creating an Elastic beanstalk env, you cannnot change the ALB(CLB-ALB) type only its configuration
    - Create new environment with same configuration but with the ALB as the CLB can not be cloned
    - Cloning the old env with clone the CLB and thats not what you want
    - Deploy your application to a new env
    - Do a CNAME swap or Route 53 to change DNS
    - Always seperate your RDS from your beanstalk