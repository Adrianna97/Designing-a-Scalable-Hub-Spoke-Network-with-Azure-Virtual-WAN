# 🌐 Azure Virtual WAN — Architektura Hub‑Spoke  
# 🌐 Azure Virtual WAN — Hub‑Spoke Network Architecture

---

# 🇵🇱 Wersja Polska

## 📌 Opis projektu

Projekt polega na zaprojektowaniu i wdrożeniu infrastruktury sieciowej o topologii **hub‑spoke** z wykorzystaniem **Azure Virtual WAN** dla Starostwa Powiatowego w Wałczu.  
Celem było połączenie ośmiu wydziałów w jedną, centralnie zarządzaną i skalowalną sieć chmurową.

W ramach projektu utworzono:

- 1 centralny **hub** (Azure Virtual WAN Hub),
- 8 sieci wirtualnych **VNet** (spokes),
- 8 maszyn wirtualnych **VM**,
- 8 dedykowanych baz danych,
- pełną komunikację między wszystkimi sieciami poprzez Virtual WAN.

---

## 🎯 Cele projektu

1. Połączenie ośmiu sieci VNet za pomocą Azure Virtual WAN.  
2. Zapewnienie łączności między maszynami wirtualnymi w różnych sieciach.  
3. Instalacja baz danych dla systemów wykorzystywanych przez wydziały.  
4. Zwiększenie bezpieczeństwa i niezawodności komunikacji.  
5. Stworzenie skalowalnej architektury dla przyszłej rozbudowy.

---

## 🧭 Uzasadnienie topologii Hub‑Spoke

- Centralizacja zarządzania  
- Skalowalność  
- Wyższe bezpieczeństwo  
- Niższe koszty  
- Łatwiejsza diagnostyka  
- Efektywne zarządzanie ruchem  

---

## ☁️ Dlaczego Azure Virtual WAN?

- Optymalizacja tras  
- Centralne zarządzanie routingiem  
- Integracja z istniejącymi zasobami  
- Skalowalność  
- Uproszczone łączenie wielu sieci  

---

## 🏗️ Architektura

- Hub: Poland Central  
- 8 sieci VNet (West Europe / North Europe)  
- 8 maszyn wirtualnych Windows Server  
- 8 baz danych dla systemów: Foris, eAudytor, Płatnik, Bestia, Powiat_FK, Archiwum, eKancelaria, Puntualnik  

Diagram: `/architecture/diagram.png`

---

## 🛠️ Etapy realizacji

1. Utworzenie huba w Azure Virtual WAN  
2. Utworzenie ośmiu sieci VNet  
3. Połączenie sieci z hubem  
4. Utworzenie maszyn wirtualnych  
5. Instalacja baz danych  
6. Testy łączności (ping)  

---

## 🔍 Wyniki testów

- 0% utraty pakietów  
- Pełna komunikacja między wszystkimi sieciami  
- Opóźnienia 40–80 ms  
- Routing działa zgodnie z założeniami hub‑spoke  

---

## 🚀 Przyszłość projektu

- 2024–2025: podłączenie pozostałych wydziałów  
- 2025–2026: integracja gmin i miast  
- 2026+: integracja szkół, szpitali i jednostek podległych  

---

## 🧩 Technologie

- Azure Virtual WAN  
- Azure Virtual Network  
- Virtual Network Connections  
- Windows Virtual Machines  
- Routing i adresacja IP  


---

# 🇬🇧 English Version

## 📌 Project Description

This project implements a **hub‑spoke network architecture** using **Azure Virtual WAN** for the County Office in Wałcz (Starostwo Powiatowe w Wałczu).  
The goal was to connect eight departments into a single, centrally managed, scalable cloud network.

The project includes:

- 1 central **hub** (Azure Virtual WAN Hub),
- 8 **virtual networks (VNets)**,
- 8 **virtual machines (VMs)**,
- 8 dedicated **databases**,
- full inter‑VNet communication via Virtual WAN.

---

## 🎯 Project Goals

1. Connect eight VNets using Azure Virtual WAN.  
2. Enable communication between VMs across different networks.  
3. Deploy databases required by each department.  
4. Improve security and reliability of inter‑department communication.  
5. Build a scalable architecture for future expansion.

---

## 🧭 Why Hub‑Spoke?

- Centralized management  
- High scalability  
- Improved security  
- Reduced operational costs  
- Easier troubleshooting  
- Efficient traffic control  

---

## ☁️ Why Azure Virtual WAN?

- Optimized routing  
- Centralized routing management  
- Easy integration with existing Azure resources  
- High scalability  
- Simplified multi‑VNet connectivity  

---

## 🏗️ Architecture

- Hub: Poland Central  
- 8 VNets (West Europe / North Europe)  
- 8 Windows Server VMs  
- 8 databases for systems: Foris, eAudytor, Płatnik, Bestia, Powiat_FK, Archiwum, eKancelaria, Puntualnik  

Diagram: `/architecture/diagram.png`

---

## 🛠️ Implementation Steps

1. Create Azure Virtual WAN Hub  
2. Create eight VNets  
3. Connect VNets to the hub  
4. Deploy virtual machines  
5. Install databases  
6. Perform connectivity tests  

---

## 🔍 Test Results

- 0% packet loss  
- Full inter‑VNet communication  
- Latency between 40–80 ms  
- Routing works as expected in hub‑spoke topology  

---

## 🚀 Future Expansion

- 2024–2025: connect remaining departments  
- 2025–2026: integrate municipalities and city offices  
- 2026+: integrate schools, hospitals, and public institutions  

---

## 🧩 Technologies Used

- Azure Virtual WAN  
- Azure Virtual Network  
- Virtual Network Connections  
- Windows Virtual Machines  
- IP addressing and routing  

---

## 📂 Repository Structure


---

## 📂 Struktura repozytorium

