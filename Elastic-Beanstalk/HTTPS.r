

*****
HTTPS
*****
    - The simplest way to use HTTPS with an Elastic Beanstalk environment is to assign a server certificate to your 
      environments load balancer. 
    - When you configure your load balancer to terminate HTTPS, the connection between the client and the load 
      balancer is secure. Backend connections between the load balancer and EC2 instances use HTTP, so no additional 
      configuration of the instances is required.
***********************
AWS Certificate Manager
***********************
    - With AWS Certificate Manager (ACM), you can create a trusted certificate for your domain names for free. 
    - ACM certificates can only be used with AWS load balancers and Amazon CloudFront distributions
    - Use code: .ebextension/securelistener-alb.config to configure HTTPS during deployment
    - You can set up redirection of HTTP-HTTPS to the backend using your ALB or your instances
    - Make sure health checks are not redirected as the request sent should be HTTP and not HTTPS