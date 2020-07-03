Subject: Build hangs
To: yocto@lists.yoctoproject.org
From: "Kjeld Flarup" <kfa@deif.com>
X-Originating-Location: Viborg, Central Jutland, DK (87.54.42.99)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Jul 2020 01:07:07 -0700
Message-ID: <bNRG.1593763627322531824.X25r@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZG4JAnFSE4D5wC9cXLlh"

--ZG4JAnFSE4D5wC9cXLlh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I sometimes encounters this situation, where a task is running forever. Thi=
s example only one task, but I have seen 6 tasks which have been running fo=
r 10+ minutes

Currently=C2=A0 1 running tasks (680 of 2941)=C2=A0 23% |#################=
##########=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |
0: openssl-native-1.1.1d-r0 do_install - 6m17s (pid 6007)

When I look into the docker container I see only these processes
user@yocto:~$ ps -ef
UID=C2=A0 =C2=A0 =C2=A0 =C2=A0 PID=C2=A0 PPID=C2=A0 C STIME TTY=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 TIME CMD
user=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A00=C2=A0 0 07:37=
 pts/0=C2=A0 =C2=A0 00:00:00 /bin/bash scripts/ci.sh pdsystems prepare_arti=
facts
user=C2=A0 =C2=A0 =C2=A0 =C2=A0 53=C2=A0 =C2=A0 =C2=A01=C2=A0 1 07:37 pts/=
0=C2=A0 =C2=A0 00:00:03 python3 /home/user/meta-poky/bitbake/bin/bitbake ma=
chine
user=C2=A0 =C2=A0 =C2=A0 =C2=A0 59=C2=A0 =C2=A0 =C2=A01=C2=A0 4 07:37 ?=C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 00:00:14 python3 /home/user/meta-poky/bitbake/bin=
/bitbake machine
user=C2=A0 =C2=A0 =C2=A0 =C2=A0414=C2=A0 =C2=A0 =C2=A00=C2=A0 0 07:38 pts/=
1=C2=A0 =C2=A0 00:00:00 bash
user=C2=A0 =C2=A0 =C2=A0 =C2=A0449=C2=A0 =C2=A0 59=C2=A0 5 07:39 ?=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 00:00:11 python3 /home/user/meta-poky/bitbake/bin/bit=
bake-worker decafbad
user=C2=A0 =C2=A0 =C2=A015205=C2=A0 =C2=A0414=C2=A0 0 07:42 pts/1=C2=A0 =
=C2=A0 00:00:00 ps -ef

Usually I can fix this by deleting all of by build folder, which of course=
 is annoying as it takes a loong time. Just deleting caches does not help.

Anybody has an idea of why this happens.

Kjeld Flarup

--ZG4JAnFSE4D5wC9cXLlh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I sometimes encounters this situation, where a task is running forever=
. This example only one task, but I have seen 6 tasks which have been runni=
ng for 10+ minutes<br /><br /><span style=3D"font-family: courier_newregula=
r, courier;">Currently&nbsp; 1 running tasks (680 of 2941)&nbsp; 23% |#####=
######################&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">0: openssl-=
native-1.1.1d-r0 do_install - 6m17s (pid 6007)</span></div>
<div><br />When I look into the docker container I see only these processe=
s<br />
<div><span style=3D"font-family: courier_newregular, courier;">user@yocto:=
~$ ps -ef</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">UID&nbsp; &=
nbsp; &nbsp; &nbsp; PID&nbsp; PPID&nbsp; C STIME TTY&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; TIME CMD</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">user&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;1&nbsp; &nbsp; &nbsp;0&nbsp; 0 07:37 pts/0&nbsp;=
 &nbsp; 00:00:00 /bin/bash scripts/ci.sh pdsystems prepare_artifacts</span>=
</div>
<div><span style=3D"font-family: courier_newregular, courier;">user&nbsp; =
&nbsp; &nbsp; &nbsp; 53&nbsp; &nbsp; &nbsp;1&nbsp; 1 07:37 pts/0&nbsp; &nbs=
p; 00:00:03 python3 /home/user/meta-poky/bitbake/bin/bitbake machine</span>=
</div>
<div><span style=3D"font-family: courier_newregular, courier;">user&nbsp; =
&nbsp; &nbsp; &nbsp; 59&nbsp; &nbsp; &nbsp;1&nbsp; 4 07:37 ?&nbsp; &nbsp; &=
nbsp; &nbsp; 00:00:14 python3 /home/user/meta-poky/bitbake/bin/bitbake mach=
ine</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">user&nbsp; =
&nbsp; &nbsp; &nbsp;414&nbsp; &nbsp; &nbsp;0&nbsp; 0 07:38 pts/1&nbsp; &nbs=
p; 00:00:00 bash</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">user&nbsp; =
&nbsp; &nbsp; &nbsp;449&nbsp; &nbsp; 59&nbsp; 5 07:39 ?&nbsp; &nbsp; &nbsp;=
 &nbsp; 00:00:11 python3 /home/user/meta-poky/bitbake/bin/bitbake-worker de=
cafbad</span></div>
<div><span style=3D"font-family: courier_newregular, courier;">user&nbsp; =
&nbsp; &nbsp;15205&nbsp; &nbsp;414&nbsp; 0 07:42 pts/1&nbsp; &nbsp; 00:00:0=
0 ps -ef</span></div>
</div>
<div><br />Usually I can fix this by deleting all of by build folder, whic=
h of course is annoying as it takes a loong time. Just deleting caches does=
 not help.<br /><br />Anybody has an idea of why this happens.<br /><br />K=
jeld Flarup<br /><br /></div>

--ZG4JAnFSE4D5wC9cXLlh--
