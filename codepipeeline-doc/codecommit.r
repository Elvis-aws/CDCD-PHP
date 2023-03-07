

**************
AWS CodeCommit
**************
    - It is a secure, highly scalable, managed source control service that hosts private Git repositories. You can 
    - use CodeCommit to store anything from code to binaries. 
    - It supports the standard functionality of Git, so it works seamlessly with your existing Git-based tools.
    **************
    Authentication
    **************
        - To use CodeCommit, you configure your Git client to communicate with CodeCommit repositories. As part of 
         this configuration, you provide IAM credentials that CodeCommit can use to authenticate you. 
        - IAM supports CodeCommit with three types of credentials:
        ****************
        Credential Types
        ****************
            (1) Git credentials, an IAM-generated user name and password pair you can use to communicate with 
              CodeCommit repositories over HTTPS.
            (2) SSH keys, a locally generated public-private key pair that you can associate with your IAM user 
              to communicate with CodeCommit repositories over SSH.
            (3) AWS access keys, which you can use with the credential helper included with the AWS CLI to 
              communicate with CodeCommit repositories over HTTPS.