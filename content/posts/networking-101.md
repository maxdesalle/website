---
title: "Networking 101: IP addresses, netmasks, TCP..."
summary: "An in-depth introduction to networking"
author: Maxime Desalle
authorlink: "https://twitter.com/maxdesalle"
draft: true

---

### IP address?

**An IP address, or Internet Protocol address is a numeric address given to each device connected to a computer network using the Internet Protocol (IP) for communication**.

An IP address has two functions:
- host or network identification
- location addressing

There are two major versions of the IP right now. The first one is **IPv4** (Internet Protocol version 4) which defines its addresses in 32-bit numbers. Due to the massive growth of the internet, causing the depletion of IPv4 addresses, **IPv6** was invented. The main difference with IPv4 is that IPv6 uses 128-bit numbers instead of 32-bit ones.

### Netmask

A Netmask is a mask allowing you to differentiate the part of an IP address used for routing, and the part that's being used to distinguish each computer on the network. **It's simply a shorthand for describing a range of IP addresses**.

- ```192.168.0.1/32``` is a netmask for only one address: ```192.168.0.1```

- ```192.168.0.1/0``` is a netmask for all the IPv4 addresses (4.3 billion!): from ```0.0.0.0``` to ```255.255.255.255```

- ```192.168.0.1/31``` is a netmask for the following IP addresses: ```192.168.0.0``` and ```192.168.0.1```

**A subnet** (or subnetwork) on the other hand, **is an internal network**. Essentially, it's a network inside the bigger network which the IP is. **The access to this subnet is enabled by a Netmask**.

Reading a Netmask may seem difficult, but in fact, it's very simple. The left part describes the IP address. If we take the netmask ```192.168.0.1/32``` as an example, ```192.168.0.1``` is the IP address. ```32``` indicates how digits **in binary** of the host address (```192.168.0.1```) are considered significant. The non-significant digits are considered as wild-card.

```192.168.0.1/31``` for example, indicates that the last digit (**in binary**) isn't significant, meaning this Netmask will match 2 different IP addresses (2^1), and no hosts as there is always 1 network address and 1 broadcast address:

```c
network: 11000000.10101000.11111111.00000000 (192.168.0.0 in decimal)

broadcast: 11000000.10101000.11111111.00000001 (192.168.0.1 in decimal)
```

```192.168.0.1/30``` for example, indicates that the last two digits (**in binary**) aren't significant, meaning this Netmask will match 4 different IP addresses (2^2), and 2 hosts as there is always 1 network address and 1 broadcast address
.
```192.168.0.1/29``` for example, indicates that the last three digits (**in binary**) aren't significant, meaning this Netmask will match 8 different IP addresses (2^3), and 6 hosts as there is always 1 network address and 1 broadcast address.

### Network and broadcast addresses

**A network address is an IP address used to identify an IP address**. The network address is always the first one of a subnet and is assigned only once in each network.

**A broadcast address is an address which allows you to communicate with all the hosts on a given subnet**. The broadcast is always the last address of a subnet and is assigned only once in each network.

### Calculating an IP, network and broadcast address

In order to do all these calculations, we will first need to convert the Netmask in a "normal" IP address:

```107.212.146.212/25``` becomes ```255.255.255.128``` because the ```/25``` mask indicates that 7 digits aren't significant, meaning there is only one 1 bit which is significant in the last byte.

This means that in binary, the last byte (so a group of 8 bits part of the 32 bits which represent an IP address), is equal to ```10000000``` in binary. If you convert this to a decimal value, you will get ```128```.

The ```255.255.255``` come from the fact that these 3 bytes are only made of bits equal to ```1```, which equal ```255``` when grouped into bytes.

Now we have our Netmask address, let's convert our IP address and Netmask address to binary:

```c
107.212.146.212: 01101011.11010100.10010010.11010100
255.255.255.128: 11111111.11111111.11111111.10000000
```

In order to know our network address, we will need to convert the two addresses to a new address, the network address. We will do this by only writing a ```1``` if the two addresses contain a bit equal to ```1``` at that place.

```c
01101011.11010100.10010010.11010100
11111111.11111111.11111111.10000000
-----------------------------------
01101011.11010100.10010010.10000000 (==> network address in binary)
```

Now let's convert that IP address in a decimal value: ```107.212.146.128```. We now have our network address.

In order to know our broadcast address, we will need to convert the two addresses in a new address, the broadcast address. We will do this by first noting the non-significant digits in the Netmask address, then copying over for all the significant ones the bits of the "regular" IP address (```107.212.146.212```) to the new address. Non-significant bits are all made equal to ```1```.

```c
01101011.11010100.10010010.11010100
11111111.11111111.11111111.1XXXXXXX
-----------------------------------
01101011.11010100.10010010.11111111 (==> broadcast address in binary)
```

Now let's convert that IP address in a decimal value: ```107.212.146.255```. We now have our broadcast address.

In order to know the IP (or host) range, will simply need add ```1``` to the last byte of the network address, and substract ```1``` of the last byte of the broadcast address, our range becomes: ```107.212.146.129 - 107.212.146.254```

### Differences between public and private IPs

**A private IP address is used in a local network and a public IP address is used in a public network**. A public IP allows you to directly communicate with other devices around the world, while a private IP only allows you to communicate with devices on your local network.

The public IP is provided by the ISP (Internet Service Provider).

- You can find your public IP by looking up on Google: "what's my IP".

- You can find your private IP by using the ```ipconfig``` command in the Terminal.

There are only three possible ranges for private IP addresses:


- ```192.168.0.0``` - ```192.168.255.255```
- ```172.16.0.0``` - ```172.31.255.255```
- ```10.0.0.0``` - ```10.255.255.255```

### Classes of IP addresses

**There are 5 different classes available for an IPv4 address**. Three of them (A, B and C) are commonly used and the remaining two have more specific usecases.

|Class|Address Range|Supports|
|---|---|---|
|A|```1.0.0.1``` - ```126.255.255.254```|16 million hosts on 127 networks|
|B|```128.1.0.1``` - ```191.255.255.254```|65,000 hosts on 16,000 networks|
|C|```192.0.1.1``` - ```223.255.254.254```|254 hosts on 2 million networks|
|D|```224.0.0.0``` - ```239.255.255.255```|Reserved for multicast|
|E|```240.0.0.0``` - ```254.255.255.254```|Reserved for future use, research...|

### TCP and UDP

TCP stands for Transmission Control Protocol. It complements the Internet Protocol (IP), which is why these two protocols are often referred as *TCP/IP*.

**TCP provides a reliable, error-free stream of bytes between apps running on hosts communicating via the IP network**. E-mail, the World Wide Web,... all rely on *TCP/IP*. TCP allows for transmission of packets (the unit of data transmission TCP uses) of data in both directions, meaning a computer can send and receive data at the same time.

In order to allow to devices to communicate over a TCP connection, they each need to have an IPv4/IPv6 address and the desired port open which will be used to transmit the data.

**UDP stands for User Datagram Protocol. It's like TCP a communication protocol, but which is specifically suited for time-sensitive transmissions such as video playback for example**. The communication is faster than TCP mainly thanks to the fact that UDP does not establish a connection before data is transmitted. This speeds up the transfers, but is also more risky as it can cause some packets to be lost in transit. Aside from that, it also opens the door for DDoS attacks.

The main difference with TCP is that TCP first establishes a connection through a *handshake* and only then will data be transmitted. UDP directly sends the data, without going through that *handshake*. If a packet is lost along the way in a TCP connection, TCP will require it to be re-sent. This is not the case with UDP.

- Protocols using UDP include DHCP for example.

- Protocols using TCP include SMTP and HTTP for example.

### OSI model

The Open Systems Interconnection (OSI) model is a framework which seeks to standardize the communication capabilities of devices without regard to the underlying structure of these devices. The goal is pretty simple: increasing the interoperability between devices.

### Network layers

Following the Open Systems Interconnection (OSI) model, there are 7 network layers:

|Layer|Function|Examples|
|---|---|---|
|**Physical**|Includes the physical equipment involved in the data transfer|cable, RJ45|
|**Data Link**|Facilitates the transfer of data on two devices on the same network|MAC, switches|
|**Network**|Facilitates the transfer of data between two different networks|IP, routers|
|**Transport**|End-to-end communication between two devices, control flow and error control|TCP, UDP, port numbers|
|**Session**|Opens and closes communication channels between two devices|Syn/Ack|
|**Presentation**|Presents the data so it can be used by the app layer|encryption, ASCII, PNG, MIDI|
|**Application**|Directly interacts with data from the user*|SNMP, HTTP, FDP|

*\*Software is **not** on the application layer, it merely uses it to initiate communications*

### TCP/IP layers

The TCP/IP framework only uses 4 layers:

1. Network Access (or Link)
2. Internet
3. Transport (or Host-to-Host)
4. Application (or Process)

### DHCP

DHCP stands for Dynamic Host Configuration Protocol. It's **a network management protocol based on the Internet Protocol (IP) networks**.

A DHCP server dynamically assigns an IP address and other network configuration parameters to each device on the network so they can communicate with other IP networks. A DHCP server enables computers to request IP addresses and networking parameters automatically from the Internet service provider (ISP), which removes the need for a network administrator or a user to manually assign IP addresses to all network devices.

### Path to make 2 devices communicate using IP addresses

The path to make 2 devices communicate using IP addresses: 

```c
computer --> gateway --> internet --> gateway --> computer
```

**IP routing is the process where data is transmitted from one computer to another and needs to find the quickest path across the internet to reach the other computer**. Routers refer to internal routing tables to make decisions about how to route packets along network paths.

A default gateway is the node in a computer network using the IP suite that serves as the router (forwarding host) to other networks when no other route specification matches the destination IP address of a packet. A router merely forwards the packets between networks with different network prefixes.

The gateway is also used as firewall, proxy,...

### Port from an IP point of view

**A port is a communication endpoint**, and is always associated with an IP address of a host and the type of transport protocol used for communication. The combination of an IP address and a port is called a *socket* which is the route which will be used to transfer data.

- Ports between 0 and 1023 identify the most commonly used services and are called the *well-known port numbers*
- Ports between 1024 and 49151 identify the registered ports
- Ports between 49152 and 65535 identify the dynamic/private/ephemeral ports
