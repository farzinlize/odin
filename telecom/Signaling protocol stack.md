# MTP: Message Transfer Part
is a critical layer in the Signaling System 7 (SS7) protocol stack, used for signaling between different elements of a telecommunications network. MTP is responsible for the reliable, error-free transmission of data over the physical medium.
### MTP Overview
MTP is designed to ensure reliable message transfer between signaling points in a telecommunications network. It provides various functionalities, including:

1. **Error Detection and Correction**: MTP can detect and correct errors in message transmission to ensure the integrity of signaling messages.
2. **Message Sequencing**: It ensures that messages are delivered in the correct order.
3. **Flow Control**: MTP manages the flow of messages to prevent congestion and ensure that the network remains efficient.
4. **Routing**: It determines the correct path for signaling messages between different nodes in the network.
## MTP Layers
The MTP layer is divided into three sub-layers, each with specific functions:

1. **MTP Level 1 (MTP1)**: The Physical layer, defining how higher-layer messages are represented on the transmission medium, including message delimiting.
	- This layer is responsible for the physical transmission of signaling messages over the network. It deals with the electrical and mechanical aspects of the transmission medium, ensuring that bits are transmitted reliably.
2. **MTP Level 2 (MTP2)**: The Data Link layer, ensuring the reliable delivery of higher-layer MSU (Message Signaling Units). MTP2 features FISU (Fill-In Signaling Units) for link keep-alives and LSSU (Link Status Signaling Units) for signaling link establishment and maintenance.
	- This layer provides error detection and correction for the messages transmitted over the physical layer. It ensures that the signaling messages are delivered correctly and in sequence. MTP Level 2 uses mechanisms such as frame check sequences (FCS) to identify and correct errors in the transmitted data.
3. **MTP Level 3 (MTP3)**: The highest layer of the MTP, Level 3, is responsible for the routing and management of signaling messages. It handles the transfer of messages between different signaling points and manages the signaling connections. MTP Level 3 also provides the necessary procedures for managing network resources and signaling traffic. Comprised of two elements:
    - **SMH (Signaling Message Handling)**: Ensures higher-layer signaling can be routed through the SS7 network using Point Codes.
    - **SNM (Signaling Network Management)**: A route management facility for handling failures, etc.
# TUP and ISUP
## TUP
**TUP** stands for Telephone User Part, which is a protocol used in telecommunications for call control and signaling. It was initially defined by the International Telecommunication Union (ITU) and is part of the Signaling System 7 (SS7) network.
**Functionality:** TUP provides conventional Public Switched Telephone Network (PSTN) telephony services, enabling call setup, routing, and teardown across the SS7 network. It is responsible for controlling the flow of calls between different networks and exchanges.
### Key Takeaways:
1. TUP is an outdated protocol, largely replaced by ISUP.
2. It is still used in some parts of the world, particularly in China.
3. National variants of TUP exist, offering varying degrees of support for ISDN services.

## ISUP
**ISUP**, short for ISDN User Part, is a signaling protocol used in Integrated Services Digital Network (ISDN) and Signaling System 7 (SS7) networks to establish, control, and terminate voice calls over digital networks. It plays a crucial role in the overall telephony infrastructure, ensuring efficient call routing and handling.
### Key Functions:
1. **Call Setup and Teardown**: ISUP is responsible for signaling the setup and release of calls between different network nodes.
2. **Call Progress Information**: ISUP carries information about call progress, including the initiation of a call, its progress, and the release of the call.
3. **Standardized Communication Mechanism**: ISUP provides a standardized communication mechanism between network nodes, enabling interoperability between different systems and networks.
### Type of ISUP messages
1. **Initial Address Message (IAM)**: the first message that is sent when setting up a connection between two MSC's and contains A-number, B-numer and other information concerning the routing and handling of the call
2. **Address Complete Message (ACM)**: it indicates that all necessary address information in receieved and the called subscriber is identified, free and alerted by a ringing signal or some other signal.
3. **Segmentation Message (SGM)**: if any message exceeds the maximum possible lenght of a MSU (279 octets) it should get segmented.
4. **Call Progress Message (CPG)**: 
5. **Answer Message (ANM)**: indicates that a call has been answered and when this message is received, charging of the call starts.
6. **Release Message (REL)**: indicates the release of a circuit used for a call. unlike in TUP or older signaling systems, the call release can be initiated by either of the subscribers or by the network.
7. **Release Complete Message (RLC)**: is sent in response to REL and confirms the completion of relaseing circuits.
8. **Connect Message (CON)**: 
### Operating Environment:
1. **Network Layer**: ISUP operates at the network layer of the OSI model, specifically in the Signaling Connection Control Part (SCCP) of the SS7 protocol suite.
2. **ISDN and SS7 Networks**: ISUP is primarily used in ISDN and SS7 networks, but its variants can be found in other networks as well.

**Relationship between TUP and ISUP:** TUP has been largely replaced by the ISUP (Integrated Services User Part) protocol, which provides a more comprehensive and extensible framework for call control and signaling. ISUP supports both voice and data services, whereas TUP was primarily designed for voice telephony. However, TUP can still be found in operational use in some parts of the world, such as China.

# TCAP
TCAP stands for Transaction Capabilities Application Part, a signaling protocol that operates at the application layer of the Signaling System 7 (SS7) protocol suite. SS7 is widely used in traditional telephony networks to establish and manage connections for voice calls and other services. TCAP, as a part of SS7, focuses specifically on providing advanced transaction capabilities between network elements.
## Key Functions
1. **Transaction-oriented protocol**: TCAP facilitates the exchange of messages between applications residing in different network nodes, enabling concurrent dialogues and multiplexing connections.
2. **Generic services**: TCAP provides generic services to applications, such as information transfer, dialogue handling, and error reporting, allowing them to focus on their specific functions rather than implementing these capabilities themselves.
3. **Independent of applications**: TCAP remains independent of the applications it serves, ensuring that changes to the protocol do not affect the applications themselves.
## TCAP Type Messages
1. UNI-Directional: also called Notice, from originator to terminator and no other messages is sent after it
2. Begin: indicates begining a dialogue
3.  Continue: A subsequence message on an existing dialogue
4. End: last message of an existing dialogue
5. Abort: some error caused the dialogue to close
6. Cancel: the timer is reached without receiving answer from the other peer
## Components and Structure
1. **Invoke components**: Carry a signed 7-bit InvokeID, identifying which invoke they relate to.
2. **Dialogue portions**: Contain dialogue or unidialogue control PDUs, used for establishing and releasing dialogues for the application context.
3. **Component portions**: Mandatory for unidirectional primitives, carrying optional information.
## Security
1. **TCAP Security (TCAPsec)**: A set of enhancements and extensions designed for security protection for the TCAP protocol, addressing vulnerabilities and threats.
## Applications
1. **Mobile Application Part (MAP)**: Used in mobile phone networks.
2. **Intelligent Network Application Part (INAP)**: Used in Intelligent Networks.
3. **CAMEL Application Part (CAP)**: Used in CAMEL networks.

**In summary**, TCAP is a critical component of SS7, enabling advanced transaction capabilities and generic services for various applications in telecom networks. Its independence from applications and provision of security mechanisms make it a reliable and secure protocol for facilitating communication between network elements.

# SCCP
SCCP is a network layer protocol in Signaling System 7 (SS7) telecommunications networks, providing extended routing, flow control, segmentation, connection-orientation, and error correction facilities. It relies on the services of MTP (Message Transfer Part) for basic routing and error detection.
## Key Features:
1. **Connection-oriented and connectionless services**: SCCP supports both types of services, allowing for the transfer of circuit-related and non-circuit-related signaling information.
2. **Global Title Translation**: SCCP employs a process to translate Global Titles into Point Codes, enabling MTP to route messages correctly.
3. **Addressing**: SCCP uses Point Codes and Subsystem numbers to address nodes, as well as Global Titles, which include Translation Type, Numbering Plan Indicator, and Type of Number.
4. **Segmentation and Reassembly**: SCCP provides segmentation and reassembly capabilities for connectionless and connection-oriented protocols, allowing for efficient transfer of large data units.
5. **Error correction**: SCCP includes error detection and correction mechanisms to ensure reliable message exchange.
## Classes of Protocol:
1. **Class 0**: Basic connectionless protocol, providing independent delivery of Network Service Data Units (NSDUs).
2. **Class 1**: Enhanced connectionless protocol with sequence control, ensuring in-sequence delivery of NSDUs.
3. **Class 2**: Basic connection-oriented protocol, establishing a two-way dialog between entities.
4. **Class 3**: Flow control connection-oriented protocol, supporting expedited (urgent) messages and error detection and correction.
## Transportation over IP Networks:
1. **M3UA**: SCCP can be transported indirectly using the MTP level 3 User Adaptation protocol (M3UA), which provides support for users of MTP-3, including SCCP.
2. **SUA**: SCCP applications can operate directly over the SCCP User Adaptation protocol (SUA), a modified SCCP designed for use in IP networking.
3. **Generic Signaling Transport**: ITU-T provides for the transport of SCCP users over Internet Protocol using the Generic Signaling Transport service specified in Q.2150.0.
## Applications:
1. **Mobile Application Part (MAP)**: Layered on top of TCAP, SCCP is used for mobile network signaling.
2. **The CAMEL Application Part (CAP)**: Also layered on top of TCAP, SCCP is used for intelligent network services.

In summary, SCCP is a crucial component of SS7 telecommunications networks, enabling efficient and reliable signaling message exchange between network elements. Its features and classes of protocol make it suitable for various applications, including mobile network signaling and intelligent network services.

# INAP, MAP and IS41
### INAP (Intelligent Network Application Part)
**Usage:**
- INAP is part of the Intelligent Network (IN) architecture, which enhances the capabilities of traditional telephony networks by enabling more complex services.
- It is primarily used to facilitate the implementation of value-added services, such as toll-free calling, call forwarding, and mobile number portability.
- INAP allows for the interaction between service control points (SCPs) and service switching points (SSPs), enabling the execution of service logic.
**Key Features:**
- Supports various service types and allows for the dynamic generation of services.
- Provides a framework for service development and deployment.
- Works with databases to retrieve user information and service data.
### MAP (Mobile Application Part)
**Usage:**
- MAP is used in mobile communication networks, particularly in GSM and UMTS (3G) systems.
- It facilitates the signaling between mobile switching centers (MSCs) and other network elements, such as Home Location Registers (HLRs) and Visitor Location Registers (VLRs).
- MAP is essential for mobile user registration, location updates, call setup, SMS handling, and mobility management.
**Key Features:**
- Supports multiple functionalities, including call control, roaming, and subscriber management.
- Handles interactions related to mobile services, such as SMS and USSD.
- Designed specifically for mobile networks, making it distinct from INAP.
### IS41 (Inter-System Interface 41)
**Usage:**
- IS41 is a protocol used primarily in North American digital cellular networks, particularly in CDMA (Code Division Multiple Access) systems.
- It is employed for signaling between mobile switching centers (MSCs) and other network elements, similar to MAP, but tailored for CDMA networks.
- IS41 handles tasks such as call setup, handovers, and location updates for mobile users.
**Key Features:**
- Designed to support the specific needs of CDMA networks, including features like soft handoff.
- Provides mechanisms for interworking between different network operators and technologies.
- Includes functionalities for service-related exchanges between systems.

### Differences
1. **Network Type:**
    - **INAP:** Primarily used in traditional telephony networks (PSTN) and intelligent networks for value-added services.
    - **MAP:** Used in GSM and UMTS (mobile networks) for signaling between MSCs and databases.
    - **IS41:** Specifically designed for CDMA networks and focuses on signaling in those environments.
2. **Purpose and Functionality:**
    - **INAP:** Focused on intelligent network services, allowing for complex service logic and interactions.
    - **MAP:** Provides comprehensive support for mobile services, user registration, and mobility management.
    - **IS41:** Facilitates mobility and service management in CDMA networks, with specific adaptations for CDMA technologies.
3. **Geographical Usage:**
    - **INAP:** More universally applied across various intelligent network scenarios.
    - **MAP:** Predominantly used in European and global GSM/UMTS networks.
    - **IS41:** Primarily used in North America, specifically with CDMA networks.

In summary, while all three protocols are essential for signaling in telecommunications, they serve different types of networks and purposes, with INAP being more focused on intelligent network services, MAP on mobile networks, and IS41 on CDMA networks.