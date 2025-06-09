![image](https://github.com/user-attachments/assets/6b39413c-8c8e-4906-85ad-495c98aa6daa)
# ci-cd-pipeline-project
CI/CD Pipeline for Scalable Web Application 
## Project Tech Stack
- **AWS EC2** (App Hosting)
- **AWS ALB (Load Balancer)**
- **AWS Auto Scaling Group (ASG)**
- **Jenkins (CI/CD)**
## Notes
- Jenkins to run on separate EC2 with required plugins: Pipeline, AWS CLI, SSH.
- Auto Scaling Group ensures minimum 1 EC2, max 3 based on CPU usage.
- Load Balancer DNS name provided via Terraform outputs.
- Integration failure triggers rollback.

---

## Optional Enhancements
- Slack notification plugin in Jenkins.
- Blue/Green deployment.
- S3 as artifact storage.
- CloudWatch alarms for Auto Scaling triggers.

---

## How to Deploy
1. `cd terraform && terraform init && terraform apply`
2. Setup Jenkins pipeline using this `Jenkinsfile`.
3. Trigger build from Jenkins UI.
4. Monitor AWS EC2, ALB, ASG via AWS Console.
