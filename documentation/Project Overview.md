
# Project Overview

This project implements a hub‑spoke network architecture using Azure Virtual WAN for Starostwo Powiatowe w Wałczu. The goal was to centralize network management, improve scalability, enhance security, and enable efficient communication between multiple organizational units.

## Reasons for Using Hub‑Spoke Architecture

### 1. Centralized Management
All connections are directed to a central hub, simplifying monitoring and resource management.

### 2. Scalability
New spokes can be added easily without disrupting existing infrastructure.

### 3. Operational Efficiency
Centralized access to data and applications improves performance across departments.

### 4. Security
Security controls can be applied at a single point (the hub), improving protection and reducing complexity.

### 5. Cost Reduction
Centralized infrastructure reduces duplication of resources and lowers operational costs.

### 6. Easier Troubleshooting
Issues can be diagnosed faster because all communication flows through the hub.

### 7. Traffic Management
The hub efficiently manages data flow between departments.

---

## Why Azure Virtual WAN?

Azure Virtual WAN was selected because it provides:

- optimized routing across Microsoft’s global backbone,  
- simplified management of multi‑VNet environments,  
- integrated security features,  
- easy integration with existing cloud and on‑premises systems,  
- high scalability for future expansion.

---

## Project Description

The project includes:

- creation of **eight virtual networks**,  
- deployment of **eight virtual machines**,  
- installation of **department‑specific databases**,  
- configuration of **full inter‑VNet connectivity** using Azure Virtual WAN.

Each VM hosts a dedicated database used by a specific department (e.g., Foris, eAudytor, Płatnik, Bestia, Powiat_FK, Archiwum, eKancelaria).
