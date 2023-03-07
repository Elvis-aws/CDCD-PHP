

********
Versions
********
    - Each time you upload a new version of your application with the Elastic Beanstalk console or the EB CLI, 
      Elastic Beanstalk creates an application version.
    - If you dont delete versions that you no longer use, you will eventually reach the application version 
      quota and be unable to create new versions of that application.
****************
lifecycle policy
****************
    - A lifecycle policy tells Elastic Beanstalk to delete application versions that are old, or to delete 
      application versions when the total number of versions for an application exceeds a specified number.
    - The application version quota applies across all applications in a region. If you have several applications, 
      configure each application with a lifecycle policy appropriate to avoid reaching the quota. 
    - Elastic Beanstalk only applies the policy if the application version creation succeeds, so if you have 
      already reached the quota, you must delete some versions manually prior to creating a new version.
    - By default, Elastic Beanstalk leaves the application versions source bundle in Amazon S3 to prevent loss of 
      data.