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

- What is the name of the mentioned directory?

```bash
curl http://10.10.134.171:81/login.php

<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<meta name="viewport" content="width=device-width, user-scalable=no">
		<meta charset="utf-8">
		<link rel="shortcut icon" type="image/x-icon" href="../favicon.ico">
		<link type="text/css" rel="stylesheet" href="assets/css/style.css">
		<link type="text/css" rel="stylesheet" href="assets/css/loginStyle.css">
		<link type="text/css" rel="stylesheet" href="assets/css/orkney.css">
		<link type="text/css" rel="stylesheet" href="assets/css/icons.css">
		<script src="assets/js/jquery-3.5.1.min.js"></script>
	</head>
	<body>
		<header>
			<a id="home" href="/">Sense and Sensitivity</a>
			<a id="login" href="/login.php">Login</a>
		</header>
		<div class=background></div>
		***<!-- Must remember to do something better with the database than store it in /assets... -->***
		<main>
			<div class="content">
				<form method="POST">
					<input type="text" name="user" placeholder="Username"><br>
					<input type="password" name="pass" placeholder="Password"><br>
					<input id="loginBtnFunc" type="submit" value="Login!">
				</form>
							</div>
		</main>
		<footer><span>&copy; Sense and Sensitivity, 2022</span></footer>
	</body>
</html>
