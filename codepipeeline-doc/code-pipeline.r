

*************
Code Pipeline
*************
    - AWS CodePipeline is a fully managed continuous delivery service that helps you automate your release pipelines 
    - CodePipeline automates the source, build, test, and deploy phases of your release process every time there is 
      a code change 
    - You can easily integrate AWS CodePipeline with third-party services such as GitHub or with your own custom 
      plugin.
    ******
    Source
    ******
        - We can select from the below as source for CodePipeline to pull our code 
            - codecommit
            - GitHub
            - BitBucket 
            - S3 
            - ECR 
    ******
    Deploy 
    ******
        - Cloudformation 
        - Codedeploy 
        - Elastic beanstalk 
        - Service catalog
        - ECS 
        - ESC (Blue/Green)
        - S3 
    ******
    Stages
    ******
        - A stage is a logical unit you can use to isolate an environment and to limit the number of concurrent 
          changes in that environment. 
        - Each stage contains actions that are performed on the application artifacts. 
        - Your source code is an example of an artifact. 
        - A stage might be a build stage, where the source code is built and tests are run. 
        - It can also be a deployment stage, where code is deployed to runtime environments. 
        - Each stage is made up of a series of serial or parallel actions.
    *******
    Actions
    *******
        - An action is a set of operations performed on application code and configured so that the actions run 
          in the pipeline at a specified point. 
        - This can include things like a source action from a code change, an action for deploying the application 
          to instances, and so on. For example, a deployment stage might contain a deployment action that deploys 
          code to a compute service like Amazon EC2 or AWS Lambda.
        - Valid CodePipeline action types are source, build, test, deploy, approval, and invoke.
        - CloudWatchEvent is used to detect changes in code-piepline from codecommit
        - Actions can run in sequence and in parallel
    **********
    Encryption
    **********
        - Default AWS Managed Key
            Use the AWS managed customer master key for CodePipeline in your account to encrypt the data in the 
            artifact store.
        - Customer Managed Key
            To encrypt the data in the artifact store under an AWS KMS customer managed key, specify the key ID, 
            key ARN, or alias ARN.
    *************
    Track changes
    *************
        - Amazon CloudWatch Events (recommended)
            - Use Amazon CloudWatch Events to automatically start my pipeline when a change occurs
        - AWS CodePipeline
            - Use AWS CodePipeline to check periodically for changes