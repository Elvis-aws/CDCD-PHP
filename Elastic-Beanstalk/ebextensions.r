

************
ebextensions
************
  - You can add AWS Elastic Beanstalk configuration files (.ebextensions) to your web applications source code 
    to configure your environment and customize the AWS resources that it contains. 
  - Configuration files are YAML- or JSON-formatted documents with a .config file extension that you place in a 
    folder named .ebextensions and deploy in your application source bundle. 
  - Example .ebextensions/network-load-balancer.config. This example makes a simple configuration change. It 
    modifies a configuration option to set the type of your environments load balancer to Network Load Balancer.
  - File must end with .config
  - Ability to add resources that can not be added using the CLI
  - Set environment variables like connection string and username for RDA or DynamoDB
  - Using option_settings section in a configuration file we can customize configuration of a AWS resource natively 
    supported by Elastic Beanstalk. 

"""
option_settings:
  aws:elasticbeanstalk:environment:
    LoadBalancerType: network
"""

