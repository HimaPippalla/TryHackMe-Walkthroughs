# Owasp top 10 (2017)

**Date**: 26, August, 2024  
**Author**: P.Hima Bindu  

[Click Here](https://tryhackme.com/r/room/owasptop10) to go to the TryHackMe room.

## Enumeration

### Nmap

```bash
$ nmap -sC -sV -p- -oN nmap.out 10.10.96.70
Nmap scan report for 10.10.96.70
Host is up (0.16s latency).
Not shown: 65530 closed ports
PORT      STATE    SERVICE    VERSION
21/tcp    filtered ftp
22/tcp    open     ssh        OpenSSH 7.6p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)

