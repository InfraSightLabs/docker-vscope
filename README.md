vScope
---------
vScope Core combines information from several sources in one single platform to cover multiple functions of IT at one place. From powerful documentation and reporting to intelligent analysis and optimizations.
vScope allows organizations to make information useful, automate routines and support a data-driven approach to IT.
More information: https://infrasightlabs.com/vscope-core

Quick start
========

  - Execute: `docker run -p 80:80 -d infrasight/vscope`
  - Aim your browser at http://localhost to access vScope web UI


Persistent data (recommended)
=======================
vScope is storing the model and settings under /data by default which is lost if container is removed.
This path should be mounted externally or in a volume for real usage of vScope.

Create a volume for persistent vScope data
`# docker volume create vscope-data`

Start vScope with the volume mounted
`# docker run -d -p 80:80 -v vscope-data:/data infrasight/vscope`

Where to get help:
==============
You can find all necessary resources to get started in our knowledge base: https://www.infrasightlabs.com/knowledge-base
Feel free to contact us if you need additional help: support@infrasightlabs.com

Supported technologies
==================
Amazon Web Services (AWS)
Active Directory
Docker
HTTP
NetApp
Microsoft Azure Resource Manager
Microsoft Azure Classic
Microsoft SQL
MySQL
Open LDAP
OracleDB
SNMP
SMI-S
SSH
Veeam Backup
VMM
VMware
WinRM
WMI

Latest Release Notes
================
https://www.infrasightlabs.com/release-notes

About InfraSight Labs
================
Our mission is to make it easy for our customers to run smoother and more efficient IT. We develop vScope, collection and analysis of scattered data in the datacenter.

Licensing
=======
vScope is licensed on a subscription based model requiring no upfront fees or additional costs. The vScope Core platform is free to use and dedicated products are then licensed upon this platform.
https://www.infrasightlabs.com/how-is-vscope-licensed

Read more at our Knowledge Base
==========================
https://www.infrasightlabs.com/knowledge-base

