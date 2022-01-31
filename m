Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B84CC433F5
	for <webhook@archiver.kernel.org>; Mon, 31 Jan 2022 10:54:35 +0000 (UTC)
Subject: Re: Fetch private gitlab repo using ssh with Yocto recipe #bitbake
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 31 Jan 2022 02:54:30 -0800
References: 
 <CAMKF1sp3rh9WFF6xinUcYocxui4d3qm4MshYWaK1xXW_y3jbVw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sp3rh9WFF6xinUcYocxui4d3qm4MshYWaK1xXW_y3jbVw@mail.gmail.com>
Message-ID: <8028.1643626470338608561@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="m68qrMEpqr3Pr3Wgh6lA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jan 2022 10:54:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56028

--m68qrMEpqr3Pr3Wgh6lA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello @Nicolas @Erik @Khem,

Update from my side:

After following some discussion from other posts, I added "config" file.

~/.ssh/config:

Host git.example.com
HostName git.example.com
User git
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_ed25519.pub
# LogLevel DEBUG3

Then I did "eval `ssh-agent -s`"

Then doing "ssh-add ~/.ssh/id_ed25519.pub" results in:

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 WARNING: UNPROTECTED PRIV=
ATE KEY FILE!=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0644 for '/root/.ssh/id_ed25519.pub' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.

Whereas the permissions are set as:

ls -l -a ~/.ssh

-rw-r--r-- 1 root root=C2=A0 157 Jan 31 10:48 config
-rw------- 1 root root=C2=A0 464 Jan 20 15:26 id_ed25519
-rw-r--r-- 1 root root=C2=A0 109 Jan 20 15:26 id_ed25519.pub
-rw-r--r-- 1 root root=C2=A0 888 Jan 26 08:43 known_hosts

"ssh-agent" is running

ssh-agent
SSH_AUTH_SOCK=3D/tmp/ssh-lcft54A4nriC/agent.2833; export SSH_AUTH_SOCK;
SSH_AGENT_PID=3D2834; export SSH_AGENT_PID;
echo Agent pid 2834;

After doing these changes, when I try to "ssh -v git.example.com" to test t=
he connection before running bitbake, I get

OpenSSH_8.2p1 Ubuntu-4ubuntu0.4, OpenSSL 1.1.1f=C2=A0 31 Mar 2020
debug1: Reading configuration data /root/.ssh/config
debug1: /root/.ssh/config line 1: Applying options for git.example.com
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: /etc/ssh/ssh_config line 19: include /etc/ssh/ssh_config.d/*.conf m=
atched no files
debug1: /etc/ssh/ssh_config line 21: Applying options for *
debug1: Connecting to git.example.com [116.203.241.xxx] port 22.
debug1: connect to address 116.203.241.xxx port 22: Connection refused
ssh: connect to host git.example.com port 22: Connection refused

I don't understand what is the issue here.

@Nicolas Can you please let me know where and how to run below commands? Do=
 I need to run them every time before fetching from gitlab?
-v $SSH_AUTH_SOCK:/ssh.socket \
-e SSH_AUTH_SOCK=3D/ssh.socket \

And also I already have "known_hosts" file with matching entries for key/ag=
ent pair.

Can you please let me know how to make this working?

Your help will be much appreciated.

Thanks in advance.

--m68qrMEpqr3Pr3Wgh6lA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello @Nicolas @Erik @Khem,<br /><br />Update from my side:<br /><br />A=
fter following some discussion from other posts, I added "config" file.<br =
/><br />~/.ssh/config:<br /><br />Host git.example.com<br />HostName git.ex=
ample.com<br />User git<br />PreferredAuthentications publickey<br />Identi=
tyFile ~/.ssh/id_ed25519.pub<br /># LogLevel DEBUG3<br /><br />Then I did "=
eval `ssh-agent -s`"<br /><br />Then doing "ssh-add ~/.ssh/id_ed25519.pub" =
results in:<br /><br />@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@=
@@@@@@@<br />@&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WARNING: UNP=
ROTECTED PRIVATE KEY FILE!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; @<br />@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@<br=
 />Permissions 0644 for '/root/.ssh/id_ed25519.pub' are too open.<br />It i=
s required that your private key files are NOT accessible by others.<br />T=
his private key will be ignored.<br /><br />Whereas the permissions are set=
 as:<br /><br />ls -l -a ~/.ssh<br /><br />-rw-r--r-- 1 root root&nbsp; 157=
 Jan 31 10:48 config<br />-rw------- 1 root root&nbsp; 464 Jan 20 15:26 id_=
ed25519<br />-rw-r--r-- 1 root root&nbsp; 109 Jan 20 15:26 id_ed25519.pub<b=
r />-rw-r--r-- 1 root root&nbsp; 888 Jan 26 08:43 known_hosts<br /><br />"s=
sh-agent" is running<br /><br />ssh-agent<br />SSH_AUTH_SOCK=3D/tmp/ssh-lcf=
t54A4nriC/agent.2833; export SSH_AUTH_SOCK;<br />SSH_AGENT_PID=3D2834; expo=
rt SSH_AGENT_PID;<br />echo Agent pid 2834;<br /><br />After doing these ch=
anges, when I try to "ssh -v git.example.com" to test the connection before=
 running bitbake, I get<br /><br />OpenSSH_8.2p1 Ubuntu-4ubuntu0.4, OpenSSL=
 1.1.1f&nbsp; 31 Mar 2020<br />debug1: Reading configuration data /root/.ss=
h/config<br />debug1: /root/.ssh/config line 1: Applying options for git.ex=
ample.com<br />debug1: Reading configuration data /etc/ssh/ssh_config<br />=
debug1: /etc/ssh/ssh_config line 19: include /etc/ssh/ssh_config.d/*.conf m=
atched no files<br />debug1: /etc/ssh/ssh_config line 21: Applying options =
for *<br />debug1: Connecting to git.example.com [116.203.241.xxx] port 22.=
<br />debug1: connect to address 116.203.241.xxx port 22: Connection refuse=
d<br />ssh: connect to host git.example.com port 22: Connection refused<br =
/><br />I don't understand what is the issue here. <br /><br />@Nicolas Can=
 you please let me know where and how to run below commands? Do I need to r=
un them every time before fetching from gitlab?<br />&nbsp; -v $SSH_AUTH_SO=
CK:/ssh.socket \<br />&nbsp; -e SSH_AUTH_SOCK=3D/ssh.socket \<br /><br />An=
d also I already have "known_hosts" file with matching entries for key/agen=
t pair.<br /><br />Can you please let me know how to make this working?<br =
/><br />Your help will be much appreciated.<br /><br />Thanks in advance.<b=
r /><br /></p>

--m68qrMEpqr3Pr3Wgh6lA--

