Subject: Avahi in yocto #yocto
To: yocto@lists.yoctoproject.org
From: lavkhush2208@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.98.179.254)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 19 Mar 2021 02:33:14 -0700
Message-ID: <UpzZ.1616146394646466650.Lq0k@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="k3EBqC4PWb1g5By3ykVJ"

--k3EBqC4PWb1g5By3ykVJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Guys
i have installed *avahi-0.8* version using gatesgarth version, its compile=
d successfully but i am facing an *issue* with *TriggeredBy: [[0;1;32m=E2=
=97=8F[[0m avahi-daemon.socket, when i restart my service.

[[0;1;32m=E2=97=8F[[0m avahi-daemon.service - Avahi mDNS/DNS-SD Stack
Loaded: loaded (/lib/systemd/system/avahi-daemon.service; enabled; vendor =
preset: enabled)
Active: [[0;1;32mactive (running)[[0m since Wed 2021-03-17 09:39:36 UTC; 3=
min 16s ago
TriggeredBy: [[0;1;32m=E2=97=8F[[0m avahi-daemon.socket
Main PID: 15022 (avahi-daemon)
Status: "avahi-daemon 0.8 starting up."
Tasks: 2 (limit: 9561)
Memory: 928.0K
CGroup: /system.slice/avahi-daemon.service
=E2=94=9C=E2=94=8015022 avahi-daemon: running [robot.local]
=E2=94=94=E2=94=8015023 avahi-daemon: chroot helper

Mar 17 09:39:36 robot systemd[1]: Starting Avahi mDNS/DNS-SD Stack...
Mar 17 09:39:36 robot avahi-daemon[15022]: Process 14994 died: No such pro=
cess; trying to remove PID
file. (/run/avahi-daemon//pid)
Mar 17 09:39:36 robot systemd[1]: Started Avahi mDNS/DNS-SD Stack.*

if something is missing, please update me sothat i can modify.

T&R
lavkhush

--k3EBqC4PWb1g5By3ykVJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Guys <br />i have installed <strong>avahi-0.8</strong> version using =
gatesgarth version, its compiled successfully but i am facing an <strong>is=
sue</strong> with <strong>TriggeredBy: [[0;1;32m=E2=97=8F[[0m avahi-daemon.=
socket, when i restart my service.<br /><br />[[0;1;32m=E2=97=8F[[0m avahi-=
daemon.service - Avahi mDNS/DNS-SD Stack<br />&nbsp;&nbsp;&nbsp;&nbsp; Load=
ed: loaded (/lib/systemd/system/avahi-daemon.service; enabled; vendor prese=
t: enabled)<br />&nbsp;&nbsp;&nbsp;&nbsp; Active: [[0;1;32mactive (running)=
[[0m since Wed 2021-03-17 09:39:36 UTC; 3min 16s ago<br />TriggeredBy: [[0;=
1;32m=E2=97=8F[[0m avahi-daemon.socket<br />&nbsp;&nbsp; Main PID: 15022 (a=
vahi-daemon)<br />&nbsp;&nbsp;&nbsp;&nbsp; Status: "avahi-daemon 0.8 starti=
ng up."<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tasks: 2 (limit: 9561)<br />&nb=
sp;&nbsp;&nbsp;&nbsp; Memory: 928.0K<br />&nbsp;&nbsp;&nbsp;&nbsp; CGroup: =
/system.slice/avahi-daemon.service<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=9C=E2=94=8015022 avahi-daemon:=
 running [robot.local]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=8015023 avahi-daemon: chroot help=
er<br /><br />Mar 17 09:39:36 robot systemd[1]: Starting Avahi mDNS/DNS-SD =
Stack...<br />Mar 17 09:39:36 robot avahi-daemon[15022]: Process 14994 died=
: No such process; trying to remove PID <br />file. (/run/avahi-daemon//pid=
)<br />Mar 17 09:39:36 robot systemd[1]: Started Avahi mDNS/DNS-SD Stack.</=
strong><br /><br />if something is missing, please update me sothat i can m=
odify.<br /><br />T&amp;R<br />lavkhush<br /><br />

--k3EBqC4PWb1g5By3ykVJ--
