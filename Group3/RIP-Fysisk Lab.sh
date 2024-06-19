! ##################################################
! ##   Cisco                                      ##
! ##   Physical Lab - RIP Routing-Fysisk Lab      ##
! ##   without serial port                        ##
! ##                                              ##
! ##   LAN1:192.168.1.0/24                        ##
! ##   LAN2:192.168.2.0/24                        ##
! ##   LAN3:192.168.3.0/24                        ##
! ##################################################
! 
! Device      interface           IP-address            Subnet mask                Default-GateWay
! R1           G0/0               192.168.1.1           255.255.255.0               N/A 
!              G0/2               10.10.10.1            255.255.255.252             N/A 
! R2           G0/0               192.168.2.1           255.255.255.0               N/A 
!              G0/1               10.10.10.2            10.10.10.2                  N/A 
!              G0/2               10.10.10.5            255.255.255.252             N/A 
! R3           G0/2               192.168.3.1           255.255.255.0               N/A 
!              G0/0               10.10.10.6            255.255.255.252             N/A 
! PC1          NIC                192.168.1.10          255.255.255.0               192.168.1.1
! PC2          NIC                192.168.2.10          255.255.255.0               192.168.2.1 
! PC2          NIC                192.168.3.10          255.255.255.0               192.168.3.1 

                        



! #########################
! PART1: R1 Configuration
! #########################
!

! Enter privileged EXEC mode
enable

! Enter global configuration mode
configure terminal

! Disable DNS lookup
no ip domain-lookup

! Set hostname
hostname R1

! Configure G0/0 interface for LAN1(192.168.1.0/24)
interface G0/0
description Connected to LAN 1
ip address 192.168.1.1 255.255.255.0
no shutdown
exit

! Configure G0/2 interface for WAN(10.10.10.0/30)
interface G0/2
description Connected to WAN
ip address 10.10.10.1 255.255.255.252
no shutdown
exit

! Configure RIP route
router rip
version 2
network 192.168.1.0
network 10.10.10.0
no auto-summary
passive-interface G0/0
exit

!#########################
!Part2:  R2 Configuration
!#########################

! Enter privileged EXEC mode
enable

! Enter global configuration mode
configure terminal

! Disable DNS lookup
no ip domain-lookup

! Set hostname
hostname R2

! Configure G0/0 interface for LAN2(192.168.2.0/24
interface G0/0
description Connected to LAN 2
ip address 192.168.2.1 255.255.255.0
no shutdown
exit

! Configure G0/1 interface for WAN(10.10.10.0/30)
interface G0/1
description Connected to WAN
ip address 10.10.10.2 255.255.255.252
no shutdown
exit

! Configure G0/2 interface for WAN(10.10.10.4/30)
interface G0/2
description Connected to WAN
ip address 10.10.10.5 255.255.255.252
no shutdown
exit

! Configure RIP route
router rip
version 2
network 192.168.2.0
network 10.10.10.0
network 10.10.10.4
no auto-summary
passive-interface G0/0
exit

!##########################
! Part3:  R3 Configuration
!##########################

! Enter privileged EXEC mode
enable

! Enter global configuration mode
configure terminal

! Disable DNS lookup
no ip domain-lookup

! Set hostname
hostname R3

! Configure G0/2 interface for LAN3(192.168.3.0/24)
interface G0/2
description Connected to LAN 3
ip address 192.168.3.1 255.255.255.0
no shutdown
exit

! Configure G0/0 interface for WAN(10.10.10.4/30)
interface G0/0
description Connected to WAN
ip address 10.10.10.6 255.255.255.252
no shutdown
exit

! Configure RIP route
router rip
version 2
network 192.168.3.0
network 10.10.10.4
no auto-summary
passive-interface G0/2
exit

!Configure IP address for PC1,PC2 and PC3 according to table
!Ensure that all Pcs can ping each other without any problem
