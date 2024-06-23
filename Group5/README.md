# Documentation

Cisco

RIP CONFIGURATION SCENERIO

LAN1:192.168.1.0/24                        
LAN2:192.168.2.0/24                       
LAN3:192.168.3.0/24 

## Addressing table

###    Device    Interface      IPAddress          SubnetMask                DefaultGateway  

        R1      Fa0/0      192.168.1.1          255.255.255.0                          N/A                   
                S0/0/0     10.10.10.1           255.255.255.252                        N/A          

        R2      Fa0/0      192.168.2.1          255.255.255.0                          N/A          
                S0/0/0     10.10.10.2           255.255.255.252                        N/A
                S0/0/1     10.10.10.5           255.255.255.252                        N/A

        R3      Fa0/0      192.168.3.1         255.255.255.0                           N/A
                S0/0/1     10.10.10.6          255.255.255.252               

        PC1     NIC       192.168.1.10          255.255.255.0                        192.168.1.1    
        PC2     NIC       192.168.2.10          255.255.255.0                        192.168.2.1
        PC3     NIC       192.168.3.10          255.255.255.0                        192.168.3.1

##########################################################
## R1 Configuration
##########################################################

Router>enable
Router#conf ter
Router(config)#hostname R1

### Configure IP address for each interface according to the table

#### Configure fa0/0 interface

R1(config)#int fa0/0

R1(config-if)#ip address 192.168.1.1 255.255.255.0

R1(config-if)#no shutdown

R1(config-if)#exit

#### Configure s0/0/0 interface

R1(config)#int s0/0/0

R1(config-if)#ip address 10.10.10.1 255.255.255.252

R1(config-if)#no shutdown

R1(config-if)#exit

### RIPV2 configuration on R1

R1(config)#router rip

R1(config-router)#version 2

R1(config-router)#no auto-summary

R1(config-router)#network 192.168.1.0

R1(config-router)#network 10.10.10.0

R1(config)#exit 

### Verify RIPV2 on R1

R1#show ip route

##########################################################
## R2 Configuration
##########################################################

Router>enable
Router#conf ter
Router(config)#hostname R2

### Configure IP address for each interface according to the table

#### Configure fa0/0 interface

R2(config)#int fa0/0

R2(config-if)#ip address 192.168.2.1 255.255.255.0 

R2(config-if)#no shutdown

R2(config-if)#exit

#### Configure s0/0/0 interface

R2(config)#int s0/0/0

R2(config-if)#ip address  10.10.10.2 255.255.255.252

R2(config-if)#no shutdown

R2(config-if)#exit

#### Configure s0/0/1 interface

R2(config)#int s0/0/1

R2(config-if)#ip address 10.10.10.5 255.255.255.252 

R2(config-if)#no shutdown

R2(config-if)#exit

### RIPV2 configuration on R2

R2(config)#router rip

R2(config-router)#version 2

R2(config-router)#no auto-summary

R2(config-router)#network 192.168.2.0

R2(config-router)#network 10.10.10.0

R2(config-router)#network 10.10.10.4

R2(config)#exit 

### Verify RIPV2 on R2

R2#show ip route

##########################################################
## R3 Configuration
##########################################################

### Configure IP address for each interface according to the table

#### Configure fa0/0 interface

R3(config)#int fa0/0

R3(config-if)#ip address 192.168.3.1 255.255.255.0 

R3(config-if)#no shutdown

R3(config-if)#exit

#### Configure s0/0/1 interface

R3(config)#int s0/0/1

R3(config-if)#ip address 10.10.10.6 255.255.255.252

R3(config-if)#no shutdown

R3(config-if)#exit

### RIPV2 configuration on R3

R3(config)#router rip

R3(config-router)#version 2

R3(config-router)#no auto-summary

R3(config-router)#network 192.168.3.0

R3(config-router)#network 10.10.10.4

R3(config)#exit 

### Verify RIPV2 on R3

R3#show ip route


##########################################################
## Clients Configuration
##########################################################

Configure IP address for PC1,PC2 and PC3 according to the table

### PC1

Open the 'IP Configuration' window:

Enter the IP address:

192.168.1.10

Enter the Subnet mask:

255.255.255.0 

Enter Default-Gateway:

192.168.1.1

### PC2

Open the 'IP Configuration' window:

Enter the IP address:

192.168.2.10

Enter the Subnet mask:

255.255.255.0 

Enter Default-Gateway:

192.168.2.1


### PC3

Open the 'IP Configuration' window: 

Enter the IP address:

192.168.3.10

Enter the Subnet mask:

255.255.255.0 

Enter Default-Gateway:

192.168.3.1


##########################################################
##  Testing Connectivity
##########################################################

Ensure that all Pcs can ping each other without any problem

### PC1

Open the Command Prompt:

Type the ping command followed by the IP address of the PC2 

& 

Type the ping command followed by the IP address of the PC3 

### PC2

Open the Command Prompt:

Type the ping command followed by the IP address of the PC1 

&

Type the ping command followed by the IP address of the PC3 

### PC3

Open the Command Prompt:

Type the ping command followed by the IP address of the PC1 

&

Type the ping command followed by the IP address of the PC2









