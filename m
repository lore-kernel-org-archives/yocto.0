Subject: Cannot boot with systemd : Must be superuser to use mount
To: yocto@lists.yoctoproject.org
From: aiman.najjar@hurranet.com
X-Originating-Location: Kissimmee, Florida, US (97.100.22.132)
X-Originating-Platform: Linux Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 23 Aug 2020 19:00:40 -0700
Message-ID: <KjFn.1598234440750313484.BYFX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="73WHahmNl3QMY67IVZYZ"

--73WHahmNl3QMY67IVZYZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all -

I'm a beginner Ycoto user and I'm trying to build raspberrypi4-64 image fo=
r my project. I've been able to build an image and boot it successfully ini=
tially, but when I switched from sysvinit to systemd, and enable U-Boot, I'=
m not longer able to boot.

During boot process, I noticed all systemd services that try to mount part=
itions are failing, including the following:

Copy
[ FAILED ] Failed to mount / var / volatile.
[ FAILED ] Failed to mount Temporary Directory ( /tmp )

When I use the emergency shell to check the logs of those systemd services=
, I am seeing this error:

"must be superuser to use mount."

I even tried to manually mount partitions in the emergency shell using the=
 mount command, and I got the same error, when I run whoami , I see that I =
am root user.

Furthermore, when I list the files in the rootfs, everything is owned by u=
id 1000, including /sbin/init , /bin/mount , /lib/systemd/sytemd =E2=80=A6 =
I was under the impression those should be owned by root user.

I would really appreciate any help, I cannot find anything online regardin=
g this issue.

Please see below my conf/local.conf:

DISTRO_FEATURES +=3D " ${DISTRO_FEATURES_LIBC} wifi ipv4 virtualization sy=
stemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
VIRTUAL - RUNTIME_init_manager =3D "systemd"
VIRTUAL - RUNTIME_initscripts =3D ""
MACHINE_FEATURES_remove =3D "apm"
IMAGE_FSTYPES =3D "rpi-sdimg"
MACHINE =3D "raspberrypi4-64"
DISABLE_SPLASH =3D "1"
ENABLE_UART =3D "1"
RPI_USE_U_BOOT =3D "1"
PREFERRED_VERSION_linux - raspberrypi =3D "5.4.%"
DISTRO =3D "poky"
PACKAGE_CLASSES =3D "package_ipk"
EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
IMAGE_INSTALL_append =3D " wpa-supplicant docker-ce python3-docker-compose=
 openssh avahi-daemon kernel-image kernel-devicetree"

--73WHahmNl3QMY67IVZYZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; font=
-size: 15.008px;">Hello all -</p>
<p><span style=3D"color: #222222; font-family: Helvetica, Arial, sans-seri=
f;"><span style=3D"font-size: 15.008px;">I'm a beginner Ycoto user and I'm =
trying to build raspberrypi4-64 image for my project. I've been able to bui=
ld an image and boot it successfully initially, but when I switched from sy=
svinit to systemd, and enable U-Boot, I'm not longer able to boot.</span></=
span></p>
<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; fon=
t-size: 15.008px;">During boot process, I noticed all systemd services that=
 try to mount partitions are failing, including the following:</p>
<div class=3D"code-highlight" style=3D"color: #222222; font-family: Helvet=
ica, Arial, sans-serif; font-size: 15.008px;">
<div class=3D"bd-clipboard" style=3D"background-color: #f8f8f8; position: =
relative; white-space: nowrap;"><span class=3D"btn-clipboard" style=3D"back=
ground-color: transparent; border-radius: 2px; color: #333333; cursor: defa=
ult; display: inline-block; font-size: 0.857143em; padding: 0.25em 0.4em;">=
Copy</span></div>
<pre style=3D"font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Lib=
eration Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New=
', monospace; font-size: 1em;"><code class=3D"hljs cs" style=3D"font-family=
: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu San=
s Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace; font-size: 1=
em; overflow: auto; tab-size: 4; overflow-wrap: normal; display: block; pad=
ding: 0.5em; max-height: 500px;">[<span class=3D"hljs-meta">FAILED</span>] =
Failed to mount /<span class=3D"hljs-keyword" style=3D"color: var(--primary=
-very-high); font-weight: bold;">var</span>/<span class=3D"hljs-keyword" st=
yle=3D"color: var(--primary-very-high); font-weight: bold;">volatile</span>=
.
[<span class=3D"hljs-meta">FAILED</span>] <span class=3D"hljs-function">Fa=
iled to mount Temporary <span class=3D"hljs-title" style=3D"color: var(--hl=
js-string); font-weight: bold;">Directory</span> (<span class=3D"hljs-param=
s">/tmp</span>)
</span></code></pre>
</div>
<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; fon=
t-size: 15.008px;">When I use the emergency shell to check the logs of thos=
e systemd services, I am seeing this error:</p>
<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; fon=
t-size: 15.008px;"><code style=3D"font-family: Consolas, Menlo, Monaco, 'Lu=
cida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans =
Mono', 'Courier New', monospace; font-size: 1em; color: var(--primary-very-=
high); background: var(--hljs-bg);">"must be superuser to use mount."</code=
></p>
<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; fon=
t-size: 15.008px;">I even tried to manually mount partitions in the emergen=
cy shell using the mount command, and I got the same error, when I run&nbsp=
;<code style=3D"font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Li=
beration Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier Ne=
w', monospace; font-size: 1em; color: var(--primary-very-high); background:=
 var(--hljs-bg);">whoami</code>, I see that I am root user.</p>
<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; fon=
t-size: 15.008px;">Furthermore, when I list the files in the rootfs, everyt=
hing is owned by uid 1000, including&nbsp;<code style=3D"font-family: Conso=
las, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono'=
, 'Bitstream Vera Sans Mono', 'Courier New', monospace; font-size: 1em; col=
or: var(--primary-very-high); background: var(--hljs-bg);">/sbin/init</code=
>,&nbsp;<code style=3D"font-family: Consolas, Menlo, Monaco, 'Lucida Consol=
e', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Cou=
rier New', monospace; font-size: 1em; color: var(--primary-very-high); back=
ground: var(--hljs-bg);">/bin/mount</code>,&nbsp;<code style=3D"font-family=
: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu San=
s Mono', 'Bitstream Vera Sans Mono', 'Courier New', monospace; font-size: 1=
em; color: var(--primary-very-high); background: var(--hljs-bg);">/lib/syst=
emd/sytemd</code>&hellip; I was under the impression those should be owned =
by root user.</p>
<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; fon=
t-size: 15.008px;">I would really appreciate any help, I cannot find anythi=
ng online regarding this issue.</p>
<p style=3D"color: #222222; font-family: Helvetica, Arial, sans-serif; fon=
t-size: 15.008px;">Please see below my conf/local.conf:<span style=3D"color=
: #bf2600;"></span></p>
<div style=3D"color: #000000; background-color: #fffffe; font-family: SFMo=
no-Medium, 'SF Mono', 'Segoe UI Mono', 'Roboto Mono', 'Ubuntu Mono', Menlo,=
 monospace; font-size: 13px; line-height: 18px; white-space: pre;">
<div><span style=3D"color: #202020;">DISTRO_FEATURES</span> +=3D <span sty=
le=3D"color: #bf2600;">" ${DISTRO_FEATURES_LIBC} wifi ipv4 virtualization s=
ystemd"</span></div>
<div><span style=3D"color: #202020;">DISTRO_FEATURES_BACKFILL_CONSIDERED</=
span> =3D <span style=3D"color: #bf2600;">"sysvinit"</span></div>
<div><span style=3D"color: #202020;">VIRTUAL</span>-<span style=3D"color: =
#202020;">RUNTIME_init_manager</span> =3D <span style=3D"color: #bf2600;">"=
systemd"</span></div>
<div><span style=3D"color: #202020;">VIRTUAL</span>-<span style=3D"color: =
#202020;">RUNTIME_initscripts</span> =3D <span style=3D"color: #bf2600;">""=
</span></div>
<div><span style=3D"color: #202020;">MACHINE_FEATURES_remove</span> =3D <s=
pan style=3D"color: #bf2600;">"apm"</span></div>
<div><span style=3D"color: #202020;">IMAGE_FSTYPES</span> =3D <span style=
=3D"color: #bf2600;">"rpi-sdimg"</span></div>
<div><span style=3D"color: #202020;">MACHINE</span> =3D <span style=3D"col=
or: #bf2600;">"raspberrypi4-64"</span></div>
<div><span style=3D"color: #202020;">DISABLE_SPLASH</span> =3D <span style=
=
=3D"color: #bf2600;">"1"</span></div>
<div><span style=3D"color: #202020;">ENABLE_UART</span> =3D <span style=3D=
"color: #bf2600;">"1"</span></div>
<div><span style=3D"color: #202020;">RPI_USE_U_BOOT</span> =3D <span style=
=
=3D"color: #bf2600;">"1"</span></div>
<div><span style=3D"color: #202020;">PREFERRED_VERSION_linux</span>-<span =
style=3D"color: #202020;">raspberrypi</span> =3D <span style=3D"color: #bf2=
600;">"5.4.%"</span></div>
<div><span style=3D"color: #202020;">DISTRO</span> =3D <span style=3D"colo=
r: #bf2600;">"poky"</span></div>
<div><span style=3D"color: #202020;">PACKAGE_CLASSES</span> =3D <span styl=
e=3D"color: #bf2600;">"package_ipk"</span></div>
<div><span style=3D"color: #202020;">EXTRA_IMAGE_FEATURES</span> =3D <span=
 style=3D"color: #bf2600;">"debug-tweaks"</span></div>
<div><span style=3D"color: #202020;">IMAGE_INSTALL_append</span> =3D <span=
 style=3D"color: #bf2600;">" wpa-supplicant docker-ce python3-docker-compos=
e openssh avahi-daemon kernel-image kernel-devicetree"<br /><br /><br /></s=
pan></div>
<br />
<div>&nbsp;</div>
</div>

--73WHahmNl3QMY67IVZYZ--
