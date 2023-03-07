
*********************
CodeDeploy rolls back
*********************
    - CodeDeploy rolls back deployments by redeploying a previously deployed revision of an application as a new 
      deployment.
    - These rolled-back deployments are technically new deployments, with new deployment IDs, rather than restored 
      versions of a previous deployment.
    ********************************************************
    Deployments can be rolled back automatically or manually
    ********************************************************
        **********************************
        Rollback and redeployment workflow
        **********************************
            - When automatic rollback is initiated, or when you manually initiate a redeployment or manual rollback, 
              CodeDeploy first tries to remove from each participating instance all files that were last successfully 
              installed. CodeDeploy does this by checking the cleanup file
        ***************************************
        Rollback behavior with existing content
        ***************************************
            - As part of the deployment process, the CodeDeploy agent removes from each instance all the files 
              installed by the most recent deployment. 
            - If files that werent part of a previous deployment appear in target deployment locations, you can 
              choose what CodeDeploy does with them during the next deployment:
                - Fail the deployment — An error is reported and the deployment status is changed to Failed.
                - Overwrite the content — The version of the file from the application revision replaces the version 
                  already on the instance.
                - Retain the content — The file in the target location is kept and the version in the application 
                  revision is not copied to the instance.