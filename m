Subject: How to add pacemaker and corosync with yocto for aspberrypi with all it's dependencies #dunfell #raspberrypi #yocto
To: yocto@lists.yoctoproject.org
From: prashantsingh@dialtronics.com
X-Originating-Location: Hyderabad, Telangana, IN (183.83.218.146)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Dec 2020 22:24:27 -0800
Message-ID: <VXIS.1608359067118906592.Kdme@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ixIrNxVgFC3EZ2SzbDYO"

--ixIrNxVgFC3EZ2SzbDYO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Team,

I need to use High availability cluster in my project. I'm generating OS f=
or Rpi using Ycot. I'm using dunfell poky version 3.1.3.

I'm adding *ntp tzdata pacemaker haveged* and *crmsh* command in my *local=
.conf* file, where crmsh command is giving error while doing bitbake saying=
 unable to *python-setuptools-native* , doing web I got I can remove this d=
ependency.

After that crmsh got installed properly and yocto build got completed. But=
 when I'm flashing Image then while using *crm status* command crmsh is giv=
ing error in start, like this -
"
Fatal error:
No module named 'doctest'

Failed to start crmsh! This is likely due to a broken
installation or a missing dependency.

If you are using a packaged version of crmsh, please try
reinstalling the package. Also check your PYTHONPATH and
make sure that the crmsh module is reachable.

Please file an issue describing your installation at
https://github.com/Clusterlabs/crmsh/issues/ .
"

And corosync is also failing to start.

Please assist me add these commands properly with yocto for raspberrypi.

Reagrds.

--ixIrNxVgFC3EZ2SzbDYO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Team,<br /><br />I need to use High availability cluster in my projec=
t. I'm generating OS for Rpi using Ycot. I'm using dunfell poky version 3.1=
.3.<br /><br />I'm adding <strong>ntp tzdata pacemaker haveged </strong>and=
<strong> crmsh</strong> command in my<strong> local.conf</strong> file, whe=
re crmsh command is giving error while doing bitbake saying unable to <stro=
ng>python-setuptools-native</strong>, doing web I got I can remove this dep=
endency.<br /><br />After that crmsh got installed properly and yocto build=
 got completed. But when I'm flashing Image then while using <strong>crm st=
atus</strong> command crmsh is giving error in start, like this -<br />"<br=
 />Fatal error:<br />&nbsp;&nbsp;&nbsp; No module named 'doctest'<br /><br =
/>Failed to start crmsh! This is likely due to a broken<br />installation o=
r a missing dependency.<br /><br />If you are using a packaged version of c=
rmsh, please try<br />reinstalling the package. Also check your PYTHONPATH =
and<br />make sure that the crmsh module is reachable.<br /><br />Please fi=
le an issue describing your installation at<br />https://github.com/Cluster=
labs/crmsh/issues/ .<br />"<br /><br />And corosync is also failing to star=
t.<br /><br />Please assist me add these commands properly with yocto for r=
aspberrypi.<br /><br />Reagrds.<br />

--ixIrNxVgFC3EZ2SzbDYO--
