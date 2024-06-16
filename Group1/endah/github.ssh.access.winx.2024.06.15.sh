#!/bin/sh
echo This is a vodka-bottle-documentation, sorry, no automation at this time, :-/
exit 1

##########################################################
# Windows Subsystem for Linux Installation
##########################################################

# - Open Windows PowerShell
wsl --install -d ubuntu
# The requested operation requires elevation.
# Installing: Virtual Machine Platform
# Virtual Machine Platform has been installed.
# Installing: Windows Subsystem for Linux
# Windows Subsystem for Linux has been installed.
# Installing: Ubuntu
# Ubuntu has been installed.
# The requested operation is successful. Changes will not be effective until the system is rebooted.

# - reboot computer
# - after reboot Ubuntu cmd will pop up:

# Ubuntu is already installed.
# Launching Ubuntu...
# Installing, this may take a few minutes...
# Please create a default UNIX user account. The username does not need to match your Windows username.
# For more information visit: https://aka.ms/wslusers
Enter new UNIX username: "nda"
New password: "Nda123"
Retype new password: "Nda123"
# passwd: password updated successfully
# Installation successful!
# To run a command as administrator (user "root"), use "sudo <command>".
# See "man sudo_root" for details.

# Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.153.1-microsoft-standard-WSL2 x86_64)

#  * Documentation:  https://help.ubuntu.com
#  * Management:     https://landscape.canonical.com
#  * Support:        https://ubuntu.com/advantage


# This message is shown once a day. To disable it please create the
# /root/.hushlogin file.
# nda@NDAVivo23:~$

# - If we've forgot the password, we'll have to reset it
# - open cmd
ubuntu config --default-user root

# - open wsl
passwd nda
New password: "Nda123"
Retype new password: "Nda123"
# passwd: password updated successfully

# - open cmd
ubuntu config --default-user nda

# - Open WSL
sudo apt update
[sudo] password for nda: "Nda123"
# Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
# Get:3 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
# Hit:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease
# Fetched 257 kB in 1s (361 kB/s)
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# 105 packages can be upgraded. Run 'apt list --upgradable' to see them.

sudo apt upgrade
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# Calculating upgrade... Done
# The following NEW packages will be installed:
# [...]
# 103 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
# 58 standard LTS security updates
# Need to get 97.9 MB of archives.
# After this operation, 1705 kB of additional disk space will be used.
# 23 packages can be upgraded. Run 'apt list --upgradable' to see them.

Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 motd-news-config all 12ubuntu4.6 [4352 B]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc6 amd64 2.35-0ubuntu3.8 [3235 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 base-files amd64 12ubuntu4.6 [62.5 kB]
# Get:4 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bash amd64 5.1-6ubuntu1.1 [769 kB]
# Get:5 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 bsdutils amd64 1:2.37.2-4ubuntu3.4 [80.9 kB]
# [...]
# Processing triggers for man-db (2.10.2-1) ...
# Processing triggers for plymouth-theme-ubuntu-text (0.9.5+git20211018-1ubuntu3) ...
# Processing triggers for dbus (1.12.20-2ubuntu4.1) ...
# Processing triggers for install-info (6.8-4build1) ...

# - install python
sudo apt install python3-pip
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
# [...]
# 0 upgraded, 68 newly installed, 0 to remove and 2 not upgraded.
# Need to get 72.3 MB of archives.
# After this operation, 243 MB of additional disk space will be used.

Do you want to continue? [Y/n] "y"
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 libc-dev-bin amd64 2.35-0ubuntu3.8 [20.3 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 linux-libc-dev amd64 5.15.0-112.122 [1342 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 libcrypt-dev amd64 1:4.4.27-1 [112 kB]
# [...]
# Processing triggers for libc-bin (2.35-0ubuntu3.8) ...
# /sbin/ldconfig.real: /usr/lib/wsl/lib/libcuda.so.1 is not a symbolic link


##########################################################
# install password generator and ssh
##########################################################

# - install password generator
sudo apt install pwgen
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following NEW packages will be installed:
#   pwgen
# 0 upgraded, 1 newly installed, 0 to remove and 2 not upgraded.
# Need to get 17.4 kB of archives.
# After this operation, 53.2 kB of additional disk space will be used.
# Get:1 http://archive.ubuntu.com/ubuntu jammy/universe amd64 pwgen amd64 2.08-2build1 [17.4 kB]
# Fetched 17.4 kB in 0s (96.2 kB/s)
# Selecting previously unselected package pwgen.
# (Reading database ... 24242 files and directories currently installed.)
# Preparing to unpack .../pwgen_2.08-2build1_amd64.deb ...
# Unpacking pwgen (2.08-2build1) ...
# Setting up pwgen (2.08-2build1) ...
# Processing triggers for man-db (2.10.2-1) ...

# - create a password 40 chars, numbers and symbols
pwgen -y -n 40
# aef*ahw7gae4bi5wae9Zei8ahChakuuto)sheo0J
# xaeha5seeh>aing^eeghui6oe?B$u6lai2phui9V
# zaph0jaec1aih4Doo|s0phooki{Waij4phahyei6
# puw>e7adaezoothai6ki<fooy9ahl7hohc1Orae8
# ahquooGhoot^ooxaeghie6Kooceeghiej8Echaef
# zi@Johch;aing<eashoo3Saiz7eugu3ato7Iehac
# doB2Jah2xee#rohj7eiqueequ4is4leewohc{eir
# Thoo2Eeboh4xe7phoo}v8aitae)ghuo*w6phumoo
# Aen:eetheec*e9vee5lab5eeghai1Edai@ghoh7I
# boo2equuu#kah}C{o2aenaeG0Yoh2naey6Lakae7
# yiesooGeghiegaem4eephai5IeSh2ahK?eePh8oh
# caa5Eigh9ighiel2Euyaepue5iechou6oofieC%a
# eungiey5eewiom9Jie0kiev1woo"t/eth[ae0iph
# feemae8aeNg9eejohzah]mij0ieZ0uey1Qua8iqu
# koo8ohcha3xeing]ieTh8sex6cu0Queihuu?waew
# xaigh2Nieth2ahgaengae8oos2iGh7aC#o&r*ee@
# ahg0soh7xajeiLai0vah0Za_huZu;x3uoh0phood
# rie8eeph"ee>zaif=ah0xo8Veikeethe+s2ma.Ma
# eengae.gh"ohF3Zie}th1aivaeph0aech>ohmah+
# xei2miesh7ahzoo7rie^Th3mieph8aop&ah[kohv


# - check if ssh service is running
sudo service ssh status
# ● ssh.service - OpenBSD Secure Shell server
#      Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor p>
#      Active: active (running) since Fri 2024-06-14 11:29:20 CEST; 2h 32>
#        Docs: man:sshd(8)
#              man:sshd_config(5)
#    Main PID: 278 (sshd)
#       Tasks: 1 (limit: 9330)
#      Memory: 4.7M
#      CGroup: /system.slice/ssh.service
#              └─278 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 star>
# Jun 14 11:29:20 NDAVivo23 systemd[1]: Starting OpenBSD Secure Shell ser>
# Jun 14 11:29:20 NDAVivo23 sshd[278]: Server listening on 0.0.0.0 port 2>
# Jun 14 11:29:20 NDAVivo23 sshd[278]: Server listening on :: port 22.
# Jun 14 11:29:20 NDAVivo23 systemd[1]: Started OpenBSD Secure Shell serv>
# lines 1-15/15 (END)
############### close the terminal and open it again


############### OPTIONAL ############
# - install powershell
sudo snap install powershell --classic
# powershell 7.4.2 from Microsoft PowerShell✓ installed

# - run powershell in wsl
pwsh
# PowerShell 7.4.2
# Now we can run Powershel in WSL

# - to remove powershell
sudo snap remove powershell
# powershell removed
#####################################


# - in wsl install openssh
sudo apt install openssh-server
[sudo] password for nda: "Nda123"
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# The following additional packages will be installed:
#   libwrap0 ncurses-term openssh-sftp-server ssh-import-id
# Suggested packages:
#   molly-guard monkeysphere ssh-askpass
# The following NEW packages will be installed:
#   libwrap0 ncurses-term openssh-server openssh-sftp-server
#   ssh-import-id
# 0 upgraded, 5 newly installed, 0 to remove and 2 not upgraded.
# Need to get 800 kB of archives.
# After this operation, 6161 kB of additional disk space will be used.

Do you want to continue? [Y/n] y
# Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-sftp-server amd64 1:8.9p1-3ubuntu0.7 [38.9 kB]
# Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libwrap0 amd64 7.6.q-31build2 [47.9 kB]
# Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 openssh-server amd64 1:8.9p1-3ubuntu0.7 [435 kB]
# [...]
# Processing triggers for libc-bin (2.35-0ubuntu3.8) ...
# /sbin/ldconfig.real: /usr/lib/wsl/lib/libcuda.so.1 is not a symbolic link

# - create keypair
mkdir .ssh
chmod 740 .ssh/
ssh-keygen -t rsa -b 4096 -f ~/.ssh/asus.vivobook
# Generating public/private rsa key pair.

Enter passphrase (empty for no passphrase): "xaeha5seeh>aing^eeghui6oe?B$u6lai2phui9V"
Enter same passphrase again: "xaeha5seeh>aing^eeghui6oe?B$u6lai2phui9V"
# Your identification has been saved in /home/nda/.ssh/asus.vivobook
# Your public key has been saved in /home/nda/.ssh/asus.vivobook.pub
# The key fingerprint is:
# SHA256:VEUPiNzJO3nNE30Z18B/Us+Z5YA61yYwitMNkinOR7E nda@NDAVivo23
# The key's randomart image is:
# +---[RSA 4096]----+
# |      .= +.=+o.+=|
# |    . =.+.B .o+.B|
# |   o oE+.+ * +.B*|
# |    o +.o B + Bo*|
# |     . .S  = o o.|
# |                 |
# |                 |
# |                 |
# |                 |
# +----[SHA256]-----+
# nda@NDAVivo23:~$

# - start ssh service
sudo service ssh start
[sudo] password for nda: "Nda123"
# ==== AUTHENTICATION COMPLETE ===

# - allow ssh in firewall
sudo ufw allow ssh
# Skipping adding existing rule
# Skipping adding existing rule (v6)
### or the output will be like this ###
# Rules updated
# Rules updated (v6)

##########################################################
# upload public keypair to github
##########################################################

# - install git
sudo apt install git
# Reading package lists... Done
# Building dependency tree... Done
# Reading state information... Done
# git is already the newest version (1:2.34.1-1ubuntu1.11).
# git set to manually installed.
# 0 upgraded, 0 newly installed, 0 to remove and 2 not upgraded.

# - fetch pubkey
cat .ssh/asus.vivobook.pub
# [ssh-rsa ***********]
# [this key is a new SSH KEYS that will add to github web]

# - copy and paste to github web
# - open github web and login
# - go to setting and click on "SSH and GPG keys"
# - or copy and paste this link address to search engine
"https://github.com/settings/ssh/new"

# Add new SSH Key
# Title
"SSH Dee"

# Key type
"[Authentication Key↕]"

# Key
"****************" # copy paste new SSH KEYS on wsl (the key start with "ssh-rsa .....")
# -Add SSH key

# - create ssh config file
cat <<"EOF" > ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/asus.vivobook
EOF

# - Create source directory
cd
mkdir src
cd src

# - Clone repo
git clone git@github.com:JensenEducationKista/KB-SEP23.git
# Cloning into 'KB-SEP23'...
# The authenticity of host 'github.com (140.82.121.4)' can't be established.
# ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
# This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
# Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.


Enter passphrase for key '/home/nda/.ssh/asus.vivobook': "xaeha5seeh>aing^eeghui6oe?B$u6lai2phui9V"
# remote: Enumerating objects: 43, done.
# remote: Counting objects: 100% (43/43), done.
# remote: Compressing objects: 100% (29/29), done.
# remote: Total 43 (delta 15), reused 37 (delta 10), pack-reused 0
# Receiving objects: 100% (43/43), 17.80 KiB | 2.22 MiB/s, done.
# Resolving deltas: 100% (15/15), done.


# - create a branch from main branch
git checkout -b "endah_doc_verification"

# - Push changes to remote repository
cd KB-SEP23/Group1
mkdir endah
cd endah
nano github.ssh.access.winx.2024.06.15.sh
# - copy and paste all the text from original file to this nano editor
Ctrl+x   # - to exit nano editor
Ctrl+y   # - to save the file

cd
cd src/KB-SEP23/
git status
# On branch endah_doc_verification
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#         ./

# nothing added to commit but untracked files present (use "git add" to track)


git add *
git status
# On branch endah_doc_verification
# Changes to be committed:
#   (use "git restore --staged <file>..." to unstage)
#         new file:   Group1/endah/github.ssh.access.winx.2024.06.15.sh

# - description for the commitment (any changes)
git commit -m "add github.ssh.access.winx.2024.06.15.sh"
# Author identity unknown

# *** Please tell me who you are.

# Run

#   git config --global user.email "you@example.com"
#   git config --global user.name "Your Name"

# to set your account's default identity.
# Omit --global to set the identity only in this repository.

# fatal: empty ident name (for <nda@NDAVivo23.>) not allowed


git config --global user.name "EndahAshalen"
 git config --global user.email endahdamayanti.dd@gmail.com
git commit -am "verify previous documentation"
# [endah_doc_verification 33c8493] verify previous documentation
#  1 file changed, 362 insertions(+)
#  create mode 100644 Group1/endah/github.ssh.access.winx.2024.06.15.sh


# On branch main
# Your branch is ahead of 'origin/main' by 1 commit.
#   (use "git push" to publish your local commits)

# nothing to commit, working tree clean
git push --set-upstream origin endah_doc_verification
