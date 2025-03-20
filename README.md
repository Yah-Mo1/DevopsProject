# DevopsProject

```bash

1. Create 2 modules in Terraform that can create a webapp that runs nginx (on a Virtual Machine) and a module for a Vnet (add all required parts such as NatGW, route tables and everything else).
Using AWS/Azure.
Using correct folder/directory strategy. Make sure you can access the site after (figure out how to do this)
2. Make sure the modules work and you can run on 3 different environments like prod, dev and staging.
3. Create a CICD pipeline to run your Terraform workflow (ideally with GitHub Actions) but you can use GitLab pipelines or even Jenkins if you want.
4. Make sure you use env vars for any credentials. I don't want to see any hardcoding of credentials.

```

### **Project Summary: Terraform-Based Web Application Deployment on AWS/Azure**

This project focuses on using **Terraform** to automate the deployment of a **web application** running **Nginx** on a **Virtual Machine (VM)** within a properly configured **networking environment**. It consists of two key **Terraform modules**:

1. **WebApp Module (VM + Nginx)**

   - Deploys a Virtual Machine on **Azure (VM)**.
   - Installs and configures **Nginx** to serve web traffic.
   - Manages **security groups/firewall rules** to allow HTTP traffic.
   - Provides an **output** for the VM's public IP to access the web service.

2. **VNet Module (Networking)**
   - Creates a **Virtual Network (VNet)** on **Azure**
   - Defines **subnets** for different resources (e.g., public and private subnets).
   - Configures a **NAT Gateway (NatGW)** for outbound internet access.
   - Sets up **route tables** and **network security rules** to manage traffic flow.

### **Deployment Workflow:**

1. Deploy the **networking module** to set up the **VNet/VPC** and required components.
2. Deploy the **web application module**, linking it to the network created earlier.
3. Verify deployment by accessing the **Nginx web server** via the VM’s **public IP**.

This modular approach ensures **scalability**, **reusability**, and **cloud-agnostic automation**, enabling efficient deployment of web applications on **Azure**. 🚀
