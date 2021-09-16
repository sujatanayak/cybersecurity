# cybersecurity
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!TODO update path (Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the __playbook___ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- : What aspect of security do load balancers protect? What is the advantage of a jump box?_Load balancer  protect against dDos attack. Having a jumpbox ensures that the network is not assecible from the public domain and only through the jumpbox.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the Network_ and system  logs_.
- _: What does Filebeat watch for?_Filebeat monitors the log files or the location that the user specifies.
- _: What does Metricbeat record?_records metrics on system and services

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |

 Elk       |  ELK stack|20.110.120.52 Linux
| Web1  DVWA  | Webservers       |10.0.0.5   |  Linux        |
| Web2  DVWA  |   Webserver      |10.0.0.6  |   Linux               |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the JumpBpx machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_home ip address (70.95.110.86)

Machines within the network can only be accessed by JumpBoxprovisioner ____.
- _TODO: Which machine did you allow to access your ELK VM? jumpbox vm What was its IP address?_51.141.172.142

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box |    Yes              |  70.95.110.86 and the virtual network   |
|   Elk    |    Yes              |  70.95.110.86                  |
|   Web1        No
    Web2|       No              |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _: What is the main advantage of automating configuration with Ansible?_Automation

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...install docker.io
- install pip
- install elk 
- install 
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)
![image](https://user-images.githubusercontent.com/6061871/133545755-14d5e51a-f15c-46ee-9df9-eb9ab5b6e3df.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_ Web1  10.0.0.5 and Web2 10.0.0.6

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_ filebeat and metric

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
- filebeat manages the logs for example filebeat logs the systemlogs and metricbeat monitors the system and the services,for example system metrics and the dockermetrics

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the ___yml_ filse to _jumphost____.
- Update the __host___ file to include...webservers ip address
- Run the playbook, and navigate to ___http://elkipaddress:5601/app/kibana_ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? the.yml files, filebeat.yml and metricbeat.yml Where do you copy it?_jumphost
- _Which file do you update to make Ansible run the playbook on a specific machine? host file. How do I specify which machine to install the ELK server on versus which to install Filebeat on?_by updating the host file two contain two sections [webservers] and [ELK] with the respective ip addresses. Also update the host file to include the python interpreter. specify under hosts in the yml file.
- _Which URL do you navigate to in order to check that the ELK server is running?
http://elkipaddress:5601/app/kibana
_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
