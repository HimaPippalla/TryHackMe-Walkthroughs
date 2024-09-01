# Owasp top 10 (2021)

**Date**: 28, August, 2024  
**Author**: P.Hima Bindu  

---

[Click Here](https://tryhackme.com/r/room/owasptop102021) to go to the TryHackMe room.

---

![Description](./Images/img1.png)

Deploy the machine and go to [http://MACHINE_IP](http://MACHINE_IP) - Login with the username **noot** and the password **test1234**.


### **Task 4 :** Broken Access Control (IDOR Challenge)

- Look at other users' notes. What is the flag?
  - Try to change the 'note_id=1' parameter to something else. I tried 'note_id=2/3/4', At 'note_id=5' I get a hint displayed in the screen.
  - **Hint** - Do note_ids start from 1? Maybe go lower ;)
  - Then changed the 'note_id=0', Boom! I got the flag
  - **flag{fivefourthree}**


### **Task 8 :** Cryptographic Failures(Challenge)

connect to the web application at http://Machine_IP/.

##
- What is the name of the mentioned directory?

```bash
curl http://10.10.134.171:81/login.php
```

observe the page, you can find this :  Must remember to do something better with the database than store it in **/assets**...

- Ans - **/assets**
##

##
- Navigate to the directory you found in question one. What file stands out as being likely to contain sensitive data? (Navigate to - http://10.10.134.171:81/assets)

![Description](./Images/img2.png)

- Ans - **webapp.db**
##

##
- Use the supporting material to access the sensitive data. What is the password hash of the admin user?

```bash 
sqlite3 webapp.db
SQLite version 3.22.0 2018-01-22 18:45:57
Enter ".help" for usage hints.
sqlite> .tables
sessions  users   
sqlite> PRAGMA table_info(sessions)
   ...> ;
0|sessionID|TEXT|1||1
1|userID|TEXT|1||0
2|expiry|INT|1||0
sqlite> PRAGMA table_info(users);
0|userID|TEXT|1||1
1|username|TEXT|1||0
2|password|TEXT|1||0
3|admin|INT|1||0
sqlite> SELECT * FROM users;
4413096d9c933359b898b6202288a650|admin|6eea9b7ef19179a06954edd0f6c05ceb|1
23023b67a32488588db1e28579ced7ec|Bob|ad0234829205b9033196ba818f7a872b|1
4e8423b514eef575394ff78caed3254d|Alice|268b38ca7b84f44fa0a6cdc86e6301e0|0

```
- Ans - **6eea9b7ef19179a06954edd0f6c05ceb**
##

##
- What is the admin's plaintext password?
  - use the crackstation online tool for cracking the hash

![Description](./Images/img2.png)  

  - Ans - **qwertyuiop**
##

##
- Log in as the admin. What is the flag?

  - username=admin, password=qwertyuiop

![Description](./Images/img4.png) 

- Ans - **THM{Yzc2YjdkMjE5N2VjMzNhOTE3NjdiMjdl}**

##
