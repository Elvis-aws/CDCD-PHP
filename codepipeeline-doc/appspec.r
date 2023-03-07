

*******
AppSpec
*******
    *****
    Hooks
    *****
        - The content in the 'hooks' section of the AppSpec file varies, depending on the compute platform for your 
          deployment. 
        - The 'hooks' section for an EC2/On-Premises deployment contains mappings that link deployment lifecycle 
          event hooks to one or more scripts. 
        - The 'hooks' section for a Lambda or an Amazon ECS deployment specifies Lambda validation functions to 
          run during a deployment lifecycle event.
            *******************
            EC2/On-Premis Hooks
            *******************
                ***************
                ApplicationStop
                ***************
                    - This deployment lifecycle event occurs even before the application revision is downloaded. 
                    - You can specify scripts for this event to gracefully stop the application or remove currently 
                      installed packages in preparation for a deployment. 
                    - The AppSpec file and scripts used for this deployment lifecycle event are from the previous 
                      successfully deployed application revision.
                **************
                DownloadBundle
                **************
                    - During this deployment lifecycle event, the CodeDeploy agent copies the application revision 
                      files to a temporary location:
                    /opt/codedeploy-agent/deployment-root/deployment-group-id/deployment-id/deployment-archive folder 
                    on Amazon Linux, Ubuntu Server, and RHEL Amazon EC2 instances.
                *************
                BeforeInstall
                *************
                    - You can use this deployment lifecycle event for preinstall tasks, such as decrypting files and 
                      creating a backup of the current version.
                    *******
                    Install
                    *******
                        - During this deployment lifecycle event, the CodeDeploy agent copies the revision files from 
                          the temporary location to the final destination folder. 
                        - This event is reserved for the CodeDeploy agent and cannot be used to run scripts.
                ************
                AfterInstall
                ************
                    - You can use this deployment lifecycle event for tasks such as configuring your application or 
                      changing file permissions.
                ****************
                ApplicationStart
                ****************
                    - You typically use this deployment lifecycle event to restart services that were stopped during 
                      ApplicationStop.
                ***************
                ValidateService 
                ***************
                    - This is the last deployment lifecycle event. It is used to verify the deployment was completed 
                      successfully.
            ******
            Lambda 
            ******
                - An AWS Lambda hook is one Lambda function specified with a string on a new line after the name of 
                  the lifecycle event. 
                - Each hook is executed once per deployment. Here are descriptions of the hooks available for use in 
                  your AppSpec file.
                ******************
                BeforeAllowTraffic
                ******************
                    - Use to run tasks before traffic is shifted to the deployed Lambda function version.
                *****************
                AfterAllowTraffic
                *****************
                    - Use to run tasks after all traffic is shifted to the deployed Lambda function version.
            ***
            ECS
            ***
                *************
                BeforeInstall
                *************
                    - Use to run tasks before the replacement task set is created. 
                    - One target group is associated with the original task set. 
                    - If an optional test listener is specified, it is associated with the original task set. 
                    - A rollback is not possible at this point.
                ************
                AfterInstall
                ************
                    - Use to run tasks after the replacement task set is created and one of the target groups 
                      is associated with it. 
                    - If an optional test listener is specified, it is associated with the original task set. 
                    - The results of a hook function at this lifecycle event can trigger a rollback.
                *********************
                AfterAllowTestTraffic
                *********************
                    - Use to run tasks after the test listener serves traffic to the replacement task set. 
                    - The results of a hook function at this point can trigger a rollback.
                ******************
                BeforeAllowTraffic
                ******************
                    - Use to run tasks after the second target group is associated with the replacement task set, 
                      but before traffic is shifted to the replacement task set. 
                    - The results of a hook function at this lifecycle event can trigger a rollback.
                *****************
                AfterAllowTraffic
                *****************
                    - Use to run tasks after the second target group serves traffic to the replacement task set. 
                    - The results of a hook function at this lifecycle event can trigger a rollback.