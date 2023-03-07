

**************
AWS CodeDeploy
**************
    - It automates software deployments to a variety of compute services such as Amazon 
      - EC2
      - AWS Fargate
      - AWS Lambda, 
      - On-premises servers. 
    - The service scales to match your deployment needs.
    - This EC2 instances or On-premis servers should be running the CodeDeploy agent
    - An appsec.yml will be needed for deployment configuration
    **********************
    Code deploy components
    **********************
        ***********
        Application
        ***********
            - An application is name that uniquely identifies the application you want to deploy. 
            - CodeDeploy uses this name, which functions as a container, to ensure the correct combination of revision, 
              deployment configuration, and deployment group are referenced during a deployment.
        ****************
        Compute platform
        ****************
            - A compute platform is a platform on which CodeDeploy deploys an application. 
            - There are three compute platforms:
            ***************
            EC2/On-Premises
            ***************
                - Describes instances of physical servers that can be Amazon EC2 cloud instances, on-premises servers, 
                  or both. 
                - Deployments that use the EC2/On-Premises compute platform manage the way in which traffic is directed 
                  to instances by using an in-place or blue/green deployment type.
            **********
            AWS Lambda
            **********
                - Used to deploy applications that consist of an updated version of a Lambda function. 
                - AWS Lambda manages the Lambda function in a serverless compute environment made up of a 
                  high-availability compute structure. 
                - You can manage the way in which traffic is shifted to the updated Lambda function versions during a 
                  deployment by choosing a canary, linear, or all-at-once configuration.
            **********
            Amazon ECS
            **********
                - Used to deploy an Amazon ECS containerized application as a task set. 
                - CodeDeploy performs a blue/green deployment by installing an updated version of the application as a 
                  new replacement task set. 
                - You can manage the way in which traffic is shifted to the updated task set during a deployment by 
                  choosing a canary, linear, or all-at-once configuration.
        ************************
        Deployment configuration
        ************************
            - A deployment configuration is set of deployment rules and deployment success and failure conditions used 
              by CodeDeploy during a deployment. 
            - If your deployment uses the EC2/On-Premises compute platform, you can specify the minimum number of healthy 
              instances for the deployment. 
            - If your deployment uses the AWS Lambda or the Amazon ECS compute platform, you can specify how traffic is 
              routed to your updated Lambda function or ECS task set.
            ******************************
            Deployment configuration Types
            ******************************
                ******
                Canary
                ******
                    - Traffic is shifted in two increments. 
                    - You can choose from predefined canary options that specify the percentage of traffic shifted to 
                      your updated Lambda function or ECS task set in the first increment and the interval, in minutes, 
                      before the remaining traffic is shifted in the second increment.
                ******
                Linear
                ******
                    - Traffic is shifted in equal increments with an equal number of minutes between each increment. 
                      You can choose from predefined linear options that specify the percentage of traffic shifted in 
                      each increment and the number of minutes between each increment.
                ***********
                All-at-once
                ***********
                    - All traffic is shifted from the original Lambda function or ECS task set to the updated function 
                      or task set all at once.
            ****************
            Deployment group
            ****************
                - A deployment group is a set of individual instances.
                - A deployment group contains individually tagged instances, Amazon EC2 instances in Amazon EC2 Auto 
                  Scaling groups, or both.
            ***************
            Deployment type
            ***************
                - A deployment type is a method used to make the latest application revision available on instances in 
                  a deployment group. 
                - There are two deployment types
                    *******************
                    In-place deployment
                    *******************
                        - The application on each instance in the deployment group is stopped
                        - The latest application revision is installed, and the new version of the application is 
                          started and validated. 
                        - Only deployments that use the EC2/On-Premises compute platform can use in-place deployments.
                    *********************
                    Blue/green deployment
                    *********************
                        ***************
                        EC2/On-Premises
                        ***************
                            - Instances are provisioned for the replacement environment.
                            - The latest application revision is installed on the replacement instances.
                            - An optional wait time occurs for activities such as application testing and system 
                              verification.
                            - Instances in the replacement environment are registered with an Elastic Load Balancing 
                              load balancer, causing traffic to be rerouted to them. Instances in the original 
                              environment are deregistered and can be terminated
                        ********************
                        Lambda or Amazon ECS
                        ********************
                            - Traffic is shifted in increments accorinding to a canary, linear, or all-at-once deployment 
                              configuration.
                        **************
                        CloudFormation
                        **************
                            - Traffic is shifted from your current resources to your updated resources as part of an 
                              AWS CloudFormation stack update. Currently, only ECS blue/green deployments are supported.
        ********************
        IAM instance profile
        ********************
            - This profile includes the permissions required to access the Amazon S3 buckets or GitHub repositories where 
              the applications are stored
        ********
        Revision
        ********
            - A revision is a version of your application. 
            - An AWS Lambda deployment revision is a YAML- or JSON-formatted file that specifies information about the 
              Lambda function to deploy. 
            - An EC2/On-Premises deployment revision is an archive file that contains source content and an application 
              specification file (AppSpec file). 
            - AWS Lambda revisions can be stored in Amazon S3 buckets. 
            - EC2/On-Premises revisions are stored in Amazon S3 buckets or GitHub repositories. 
        ************
        Service role
        ************
            - A service role is an IAM role that grants permissions to an AWS service so it can access AWS resources. 
            - The policies you attach to the service role determine which AWS resources the service can access and 
              the actions it can perform with those resources.