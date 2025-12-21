short definition of various components related to telecommunication technologies

### Node B
Base stations that transmit and receive radio signals to/from mobile devices (UEs).
### Radio Network Controller (RNC)
A central entity that controls one or more Node Bs, providing control functionalities and managing radio resources.
### UMTS
is a third-generation (3G) mobile cellular system that allows 2G GSM networks to migrate to 3G
### MSC
is responsible for *voice bearers*
### SGSN
is responsible for *data session bearer*
### SP (Signaling points)
Any node in network, working with signals, is called a signaling point or SP
- SSP: Service Switching Point, originates and terminates calls. (e.g. MSC)
- STP: Signaling Transfer Point, acts as router in network based on routing information in SS7 message
- SCP: Service Control Point, any node taht supports application database (e.g. HLR, SMSC, AUC, EIR)
### STN-SR in SRVCC
it identifies the session for routing the call to the IMS network.
### SIGTRAN
A set of protocols that enables the transportation of Signaling System 7 (SS7) messages over Internet Protocol (IP) networks
### IS-41
also known as ANSI-41, is a mobile, cellular telecommunications system standard that supports mobility management by enabling the networking of switches -> [[Signaling Protocol stack#IS41 (Inter-System Interface 41)|part of Signalling Protocol Stack]]
### Parts of a **Signal Unit**
- **BSN**: Backward-Sequence number, is used to acknowledge the receipt of signal units by remote signaling point. BSN indicate sequence number of the signal unit being acknowledged.
- **FIB**: Forward Indicator Bit, A bit that indicates if the signal unit is transmitted for the first time (0) or not (1) when error happens.
- **BIB**: Backward Indicator Bit. indicates a nagative acknowledgment when toggled (1)
- **SIO**: Service information octet contains 4 bits of network indicator (national or international) and another 4 bits of service indicator that defines the content inside the SIF (e.g. which protocol)
- **SIF**: signaling information field that contains the actual message. it contains the routing label and inside, it has originating and destination **PC** or point code. A point code contains network identifire, network cluster and network cluster member
### E1
is a standard for digital telecommunications that carries data at a rate of 2.048 megabits per second (Mbps)
### BSS: Base Station Subsystem
The Base Station Subsystem (BSS) is a crucial component in traditional cellular telephone networks, responsible for handling traffic and signaling between mobile phones and the network switching subsystem. It consists of two primary components: 
- the Base Transceiver Station (**BTS**)
- the Base Station Controller (**BSC**)
### Abis Interface
enabling the transfer of information between the Base Station Transceiver Subsystem (BTS) and the Base Station Controller (BSC)
### NIF: Nodal Interworking Function

1. **Protocol Conversion**: NIF converts messages between different protocols, such as Mobile Application Part (MAP) and Diameter, ensuring compatibility and interoperability between legacy and new network elements.
2. **Network Interconnection**: NIF enables the interconnection of different network nodes, including SS7, Diameter, and other signaling protocols, facilitating roaming and handovers between disparate networks.
3. **Service Interworking**: NIF supports the interworking of various services, such as SMS, voice, and data, across different networks and protocols.
### SPS: Huawei Hardware
To minimize operating expense, carriers need a convergent signaling network that supports both SS7 and Diameter, and a signaling service processing system (SPS) that functions as both the STP and DRA/DEA. [ref](https://www.huawei.com/en/huaweitech/publication/73/hw_403723)