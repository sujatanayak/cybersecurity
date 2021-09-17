# cybersecurity
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.
![azure elk project](https://github.com/sujatanayak/cybersecurity/blob/main/Diagram/Elk_project.drawio.png?raw=true)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml file may be used to install only certain pieces of it, such as Filebeat or metricbeat

  [The Elk project yml files](https://github.com/sujatanayak/cybersecurity/blob/main/Ansible/install_elk.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
Load balancer ensures the availability of the servers by having redundancy. they also protects against dDos attack. Having a jumpbox ensures that the network is not assecible from the public domain and only through the jumpbox.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the Network and system  logs.
- What does Filebeat watch for? Filebeat monitors the log files or the location that the user specifies and sends them to either Elasticsearch or logstash.
- What does Metricbeat record? Metricbeat monitors the servers and records metrics on system and services such as docker metrics or system metrics.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| Elk       | webserver|20.110.120.52| Linux
| Web1 DVWA| Webservers|10.0.0.5   |  Linux           |
| Web2 DVWA| Webserver |10.0.0.6  |   Linux           |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBpx machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
 Add whitelisted IP addresses: my home ip address 

Machines within the network can only be accessed by  the JumpBoxprovisioner .
 Which machine did you allow to access your ELK VM? jumpbox vm whose public IP address is 51.141.172.142 (private ip: 10.1.0.4)

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box |    Yes              |  my public ip and the virtual network   |
|   Elk    |    Yes              |  my public ip                         |
|   Web1   |    No               | 10.1.0.4, LB(52.183.67.108)
|  Web2    |     No              | 10.1.0.4  , LB(52.183.67.108)               |
|load balancer(LB)|yes                |my public ip

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
-The main advantage of automating configuration with Ansible is the ease and Automation

The playbook implements the following tasks:
- install docker.io
- install python3
-configure the webservers Web1 and Web2 with DVWA
- install elk stack
- install the filebeat and metricbeat


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![image](https://user-images.githubusercontent.com/6061871/133705317-d7e04c1f-c55c-4613-aed6-3a031feba302.png)
### Target Machines & Beats
This ELK server is configured to monitor the following machines:
IP addresses of the machines being monitored

Machines : Web1 Ip:10.0.0.5 
Machines : Web2 IP: 10.0.0.6

We have installed the following Beats on these machines: 
Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:
 Filebeat manages the logs for example filebeat logs the systemlogs
 Metricbeat monitors the system and the services,for example system metrics and the dockermetrics

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the  various yml files from [The Elk project yml files](https://github.com/sujatanayak/cybersecurity/blob/main/Ansible/install_elk.yml) to jumphost provisioner.
- Update the [hosts file](https://github.com/sujatanayak/cybersecurity/blob/main/Ansible/Hosts)  to include the webservers ip address. Updating the host file to contain two sections [webservers] and [ELK] with the respective ip addresses. Also update the host file to include the python interpreter. 
- Run the playbook, and navigate to http://elkipaddress:5601/app/kibana to check that the  ELK installation worked as expected and the ELK server is up and running..


 **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc.
 specific command the user will use to run to download the playbook
