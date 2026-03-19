Link to Medium Article: https://medium.com/@sriharimalapati/building-a-scalable-3-tier-architecture-on-aws-using-terraform-a-modular-approach-5117378789f0

## Steps
1. ### In the AWS Console:
    1. Go to **IAM** $\rightarrow$ **Users** $\rightarrow$ **Create user**
    2. Enter a username (e.g., `terraform-user`)
    3. On the permissions page, select **Attach policies directly**
    4. Attach these policies:
        * `AmazonVPCFullAccess`
        * `AmazonEC2FullAccess`
        * `AmazonRDSFullAccess`
        * `ElasticLoadBalancingFullAccess`
    5. Click **Create user**

2. ### Create access keys:

6. Click on the user you just created
7. Go to **Security credentials** tab
8. Scroll to **Access keys** $\rightarrow$ **Create access key**
9. Select **Command Line Interface (CLI)**
10. Click through and **Download the .csv** or copy the keys — you only see the secret once

3. ### Configure the CLI:

11. In your terminal:

`aws configure`

Enter when prompted:

`AWS Access Key ID: <paste key>`  
`AWS Secret Access Key: <paste secret>`  
`Default region name: us-east-1`  
`Default output format: json`

### Verify it works:

`aws sts get-caller-identity`

You should see your account ID and user ARN. Then run `terraform plan`.

---

Would you like me to explain what any of these specific IAM policies allow Terraform to do in your AWS environment?
