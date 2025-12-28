# Designing-a-Scalable-Hub-Spoke-Network-with-Azure-Virtual-WAN
Implementation of a secure hub‑spoke network architecture using Azure Virtual WAN. The project connects eight VNets, deploys virtual machines with databases, and enables full inter‑VNet communication for a public administration environment.
🌐 Overview
This project implements a hub‑spoke network architecture using Azure Virtual WAN for a public administration environment (Starostwo Powiatowe w Wałczu).
The goal was to centralize network management, improve scalability, enhance security, and enable efficient communication between multiple organizational units.

The solution connects eight virtual networks (VNets), deploys eight virtual machines, and configures full inter‑VNet connectivity through a centralized Virtual WAN hub.

🏛️ Business Motivation
Public administration requires:

centralized management of distributed departments,

secure and controlled communication between units,

scalable infrastructure for future expansion,

simplified troubleshooting and monitoring.

The hub‑spoke model and Azure Virtual WAN address these needs by providing:

centralized routing,

simplified connectivity management,

improved security posture,

reduced operational costs,

easier onboarding of new departments.

🧭 Why Hub‑Spoke Architecture?
✔ Centralized management
All traffic flows through a central hub, simplifying monitoring and control.

✔ Scalability
New departments (spokes) can be added without disrupting existing infrastructure.

✔ Security
Security policies can be enforced at a single point (hub).

✔ Cost efficiency
Shared services reduce duplication of resources.

✔ Easier troubleshooting
Failures are easier to isolate when all spokes connect through one hub.

☁️ Why Azure Virtual WAN?
Azure Virtual WAN was selected because it provides:

automated and optimized routing across Microsoft’s global backbone,

simplified management of multi‑VNet environments,

built‑in security features,

seamless integration with on‑premises and cloud resources,

high scalability for future county‑wide expansion.

🏗️ Architecture
The project consists of:

1 Virtual WAN Hub (Poland Central)

8 Virtual Networks (VNets) across West Europe and North Europe

8 Virtual Machines, each hosting a dedicated database

Full mesh connectivity between all VNets via the hub

Routing managed centrally by Azure Virtual WAN

Each department (e.g., Komunikacja, Organizacyjno‑Prawny, Finanse, Informatyka) has its own VNet and VM.

🎯 Project Goals
Connect eight VNets using Azure Virtual WAN.

Enable communication between VMs across different VNets.

Deploy a dedicated database on each VM.

Ensure secure and reliable inter‑department communication.

Build a scalable foundation for future expansion across the entire county.

🛠️ Implementation Steps
1. Create the Virtual WAN Hub
Region: Poland Central

Address space: 10.0.0.0/16

Status: Succeeded

2. Create eight Virtual Networks
Examples:

FN‑vnet

KD‑vnet

OI‑vnet

ORP‑vnet
Each with its own resource group and region.

3. Connect VNets to the Hub
All eight VNets were successfully connected:

Provisioning status: Succeeded

Connectivity status: Connected

4. Deploy Virtual Machines
Eight Windows VMs were deployed, one per VNet.
Each VM hosts a dedicated departmental database, such as:

Foris

eAudytor

Płatnik

Bestia

Powiat_FK

Archiwum

eKancelaria

5. Install Databases
Each VM was prepared with the required environment and database installation.

6. Test Connectivity
Ping tests confirmed:

full connectivity between all VNets,

stable latency,

no packet loss.

Screenshots are stored in:

Kod
/screenshots/
🔍 Connectivity Test Summary
All VMs successfully communicated across VNets using private IPs.
Example results:

Latency between regions: 40–80 ms

Packet loss: 0%

Routing handled entirely by Virtual WAN

This confirms correct hub‑spoke routing and VNet integration.

🚀 Future Expansion
The long‑term plan includes:

2024–2025
Connecting the remaining Starostwo departments.

2025–2026
Integrating:

municipalities (gminy),

city offices,

dependent institutions.

2026+
Connecting:

schools,

hospitals,

public service units.

This architecture is designed to scale to the entire county.

🧩 Technologies Used
Azure Virtual WAN

Azure Virtual Networks

Virtual Network Connections

Windows Virtual Machines

Routing and connectivity

Department‑specific databases

📂 Repository Structure
Kod
/architecture
/documentation
/infra
/screenshots
README.md
🏁 Conclusion
This project demonstrates the design and deployment of a scalable, secure, and centrally managed cloud network using Azure Virtual WAN.
It provides a strong foundation for future expansion and aligns with best practices for public sector cloud adoption.
