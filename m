Subject: ttyS0 timeout but not using ttyS0 #yocto #systemd
To: yocto@lists.yoctoproject.org
From: "William Durocher" <wdurocher@it-link.ca>
X-Originating-Location: Montreal, Quebec, CA (173.231.104.26)
X-Originating-Platform: Linux Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Jan 2020 12:16:23 -0800
Message-ID: <xRXV.1580156183893357588.xV3g@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KVn9bNqitSSWBVzNIR3U"

--KVn9bNqitSSWBVzNIR3U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have a build using warrior it boots up well but has a very long boot tim=
e of around 95 sec. Using systemd-analyze I notice that we the boot takes a=
 long time before getting to multi-user.target. As can be seen for the crit=
ical chain analysis below, there is a 60s gap after we get our console on t=
tyO0.

>=20
> multi-user.target @1min 33.351s
> =E2=94=94=E2=94=80 *getty.target @1min 33.298s*
> *=E2=94=94=E2=94=80serial-getty@ttyO0.service @34.432s*
> =E2=94=94=E2=94=80basic.target @31.841s
> =E2=94=94=E2=94=80sockets.target @31.804s
> =E2=94=94=E2=94=80sshd.socket @31.532s +238ms
> =E2=94=94=E2=94=80sysinit.target @31.183s
> =E2=94=94=E2=94=80sys-kernel-config.mount @59.350s +962ms
> =E2=94=94=E2=94=80systemd-journald.socket @2.553s
> =E2=94=94=E2=94=80system.slice @2.027s
> =E2=94=94=E2=94=80-.slice @2.028s

Looking at the logs I can see that the cause is most likely that ttyS0 is =
trying to come up.
>=20
>=20
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job
> dev-ttyS0.device/start
> timed out.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Timed out waiting for device
> /dev/ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty
> on ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job
> serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job
> dev-ttyS0.device/start
> failed with result 'timeout'.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job
> dev-ttyS0.device/start
> timed out.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Timed out waiting for device
> /dev/ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty
> on ttyS0.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job
> serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job
> dev-ttyS0.device/start
> failed with result 'timeout'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job
> dev-ttyS0.device/start
> timed out.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Timed out waiting for device
> /dev/ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty
> on ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job
> serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job
> dev-ttyS0.device/start
> failed with result 'timeout'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job
> dev-ttyS0.device/start
> timed out.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Timed out waiting for device
> /dev/ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: Dependency failed for Serial Get=
ty
> on ttyS0.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job
> serial-getty
> @ttyS0.service/start failed with result 'dependency'.
> Jan 27 01:07:15 rc8000-5e2b systemd[1]:

We are not using ttyS0 for the console or anything. In our distro config a=
nd layer we refer instead to ttyO0.

Looking through the environment of the build with "bitbake -e our-image" I=
 see that we had
>=20
>=20
> # $KERNEL_CONSOLE
> #=C2=A0=C2=A0 set?
> /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/distro/inclu=
de/default-distrovars.inc:4
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 "ttyS0"
> KERNEL_CONSOLE=3D"ttyS0"

I modifed our distro configuration setting KERNEL_MODULE to ttyO0

>=20
> KERNEL_CONSOLE=3D"ttyO0"

and now bitbake -e gives me:
>=20
> # $KERNEL_CONSOLE [2 operations]
> #=C2=A0=C2=A0 set
> /home/wdurocher/work/gammaip/warrior/sources/meta-gammaip/conf/distro/ga=
mmaip.conf:18
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 "ttyO0"
> #=C2=A0=C2=A0 set?
> /home/wdurocher/work/gammaip/warrior/sources/meta/meta/conf/distro/inclu=
de/default-distrovars.inc:4
>=20
> #=C2=A0=C2=A0=C2=A0=C2=A0 "ttyS0"
> # pre-expansion value:
> #=C2=A0=C2=A0 "ttyO0"
> KERNEL_CONSOLE=3D"ttyO0"

But loading this image, the logs still shows the timeout waiting for ttyS0=
. What else could be making Linux try to configure ttyS0 ?

Note that I saw in my search that kernel CONFIG_FHANDLE should be set and =
it was already so.

Thanking you for any help on this,

William Durocher

--KVn9bNqitSSWBVzNIR3U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We have a build using warrior it boots up well but has a very long boot tim=
e of around 95 sec. Using systemd-analyze I notice that we the boot takes a=
 long time before getting to multi-user.target. As can be seen for the crit=
ical chain analysis below, there is a 60s gap after we get our console on t=
tyO0.<br />
<blockquote>multi-user.target @1min 33.351s<br />=E2=94=94=E2=94=80<strong=
>getty.target @1min 33.298s</strong><br /><strong>&nbsp; =E2=94=94=E2=94=80=
serial-getty@ttyO0.service @34.432s</strong><br />&nbsp;&nbsp;&nbsp; =E2=94=
=
=94=E2=94=80basic.target @31.841s<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=
=94=94=E2=94=80sockets.target @31.804s<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; =E2=94=94=E2=94=80sshd.socket @31.532s +238ms<br />&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=94=94=E2=94=80sysinit.targe=
t @31.183s<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; =E2=94=94=E2=94=80sys-kernel-config.mount @59.350s +962ms<br />&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=
=E2=94=94=E2=94=80systemd-journald.socket @2.553s<br />&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=
=
=94=94=E2=94=80system.slice @2.027s<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =E2=
=94=94=E2=94=80-.slice @2.028s</blockquote>
<br />Looking at the logs I can see that the cause is most likely that tty=
S0 is trying to come up.
<blockquote>Jan 27 01:07:14 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job =
dev-ttyS0.device/start<br />&nbsp;timed out.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:14 rc8000-5e2b systemd[1]: Ti=
med out waiting for device /dev/ttyS0.&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07=
:14 rc8000-5e2b systemd[1]: Dependency failed for Serial Getty on ttyS0.<br=
 />Jan 27 01:07:14 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job =
serial-getty<br />@ttyS0.service/start failed with result 'dependency'.&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:14 rc8000-5e2b systemd[1]: de=
v-ttyS0.device: Job dev-ttyS0.device/start<br />&nbsp;failed with result 't=
imeout'.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:14 rc8000-5e2b systemd[1]: de=
v-ttyS0.device: Job dev-ttyS0.device/start<br />&nbsp;timed out.&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:14 rc8000=
-5e2b systemd[1]: Timed out waiting for device /dev/ttyS0.&nbsp;&nbsp;&nbsp=
; <br />Jan 27 01:07:14 rc8000-5e2b systemd[1]: Dependency failed for Seria=
l Getty on ttyS0.<br />Jan 27 01:07:14 rc8000-5e2b systemd[1]: serial-getty=
@ttyS0.service: Job serial-getty<br />@ttyS0.service/start failed with resu=
lt 'dependency'.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:14 rc8000=
-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.device/start<br />&nbsp;f=
ailed with result 'timeout'.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:15 rc8000=
-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.device/start<br />&nbsp;t=
imed out.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />Ja=
n 27 01:07:15 rc8000-5e2b systemd[1]: Timed out waiting for device /dev/tty=
S0.&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:15 rc8000-5e2b systemd[1]: Depende=
ncy failed for Serial Getty on ttyS0.<br />Jan 27 01:07:15 rc8000-5e2b syst=
emd[1]: serial-getty@ttyS0.service: Job serial-getty<br />@ttyS0.service/st=
art failed with result 'dependency'.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />Ja=
n 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.devic=
e/start<br />&nbsp;failed with result 'timeout'.&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />Ja=
n 27 01:07:15 rc8000-5e2b systemd[1]: dev-ttyS0.device: Job dev-ttyS0.devic=
e/start<br />&nbsp;timed out.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; <br />Jan 27 01:07:15 rc8000-5e2b systemd[1]: Timed out waiting=
 for device /dev/ttyS0.&nbsp;&nbsp;&nbsp; <br />Jan 27 01:07:15 rc8000-5e2b=
 systemd[1]: Dependency failed for Serial Getty on ttyS0.<br />Jan 27 01:07=
:15 rc8000-5e2b systemd[1]: serial-getty@ttyS0.service: Job serial-getty<br=
 />@ttyS0.service/start failed with result 'dependency'.&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; <br />Jan 27 01:07:15 rc8000-5e2b systemd[1]:</blockquote>
<br />We are not using ttyS0 for the console or anything. In our distro co=
nfig and layer we refer instead to ttyO0.<br /><br />Looking through the en=
vironment of the build with "bitbake -e our-image" I see that we had
<blockquote># $KERNEL_CONSOLE<br />#&nbsp;&nbsp; set? /home/wdurocher/work=
/gammaip/warrior/sources/meta/meta/conf/distro/include/default-distrovars.i=
nc:4<br />#&nbsp;&nbsp;&nbsp;&nbsp; "ttyS0"<br />KERNEL_CONSOLE=3D"ttyS0"</=
blockquote>
&nbsp;I modifed our distro configuration setting KERNEL_MODULE to ttyO0<br=
 />
<blockquote>KERNEL_CONSOLE=3D"ttyO0"</blockquote>
and now bitbake -e gives me:
<blockquote># $KERNEL_CONSOLE [2 operations]<br />#&nbsp;&nbsp; set /home/=
wdurocher/work/gammaip/warrior/sources/meta-gammaip/conf/distro/gammaip.con=
f:18<br />#&nbsp;&nbsp;&nbsp;&nbsp; "ttyO0"<br />#&nbsp;&nbsp; set? /home/w=
durocher/work/gammaip/warrior/sources/meta/meta/conf/distro/include/default=
-distrovars.inc:4<br />#&nbsp;&nbsp;&nbsp;&nbsp; "ttyS0"<br /># pre-expansi=
on value:<br />#&nbsp;&nbsp; "ttyO0"<br />KERNEL_CONSOLE=3D"ttyO0"</blockqu=
ote>
But loading this image, the logs still shows the timeout waiting for ttyS0=
. What else could be making Linux try to configure ttyS0 ?<br /><br />Note =
that I saw in my search that kernel CONFIG_FHANDLE should be set and it was=
 already so.<br /><br />Thanking you for any help on this,<br /><br />Willi=
am Durocher<br />

--KVn9bNqitSSWBVzNIR3U--
