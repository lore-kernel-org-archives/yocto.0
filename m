Subject: #sdk
To: yocto@lists.yoctoproject.org
From: m.madej@xtrack.com
X-Originating-Location: Ledowo, Pomerania, PL (83.18.155.22)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 Jan 2020 05:53:17 -0800
Message-ID: <2zkv.1579182797318490741.rkdo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GJ66CYikDnyzpwsm1KRv"

--GJ66CYikDnyzpwsm1KRv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I work on Yocto warrior branch. I use debian buster. I built extensi=
ble SDK for my image and wanted to install it. Build passes without any pro=
blem but at the end of installation process i got following messages:

SDK environment now set up; additionally you may now run devtool to perfor=
m development tasks.
Run devtool --help for further details.
*(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5: (SDKROOT=
)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: No such file or dir=
ectory*
*post-relocate command "(SDKROOT)/sysroots/x86_64-pokysdk-linux/post-reloc=
ate-setup.d/meson-setup.py (SDKROOT)" failed with status 127*
SDK has been successfully set up and is ready to be used.
Each time you wish to use the SDK in a new shell session, you need to sour=
ce the environment setup script e.g.

In spite of fact there is information that SDK is successfully set up it d=
oes not work and after loading environment devtool command output is:

$ devtool
(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5: (SDKROOT)=
/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real

To analyze the problem I also run:

$ file=C2=A0(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real
(SDKROOT) /sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: ELF 64-bi=
t LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, *interp=
reter /opt/smart-recovery/2.7.2/sysroots/x86_64-pokysdk-linux/lib/ld-linux-=
x86-64.so.2* , BuildID[sha1]=3Dbc0bda633e50a52d06a027cc21707a0be0341f64, fo=
r GNU/Linux 3.2.0, stripped

The problem is that interpreter file does not exist and this is probably c=
aused by problem which occured at installation process. Is the problem know=
n to anyone?

--GJ66CYikDnyzpwsm1KRv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello, I work on Yocto warrior branch. I use debian buster. I built extensi=
ble SDK for my image and wanted to install it. Build passes without any pro=
blem but at the end of installation process i got following messages:<br />=
<br />
<div><em>SDK environment now set up; additionally you may now run devtool =
to perform development tasks.</em></div>
<div><em>Run devtool --help for further details.</em></div>
<div><strong><em>(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3: =
line 5: (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real: No =
such file or directory</em></strong></div>
<div><strong><em>post-relocate command "(SDKROOT)/sysroots/x86_64-pokysdk-=
linux/post-relocate-setup.d/meson-setup.py (SDKROOT)" failed with status 12=
7</em></strong></div>
<div><em>SDK has been successfully set up and is ready to be used.</em></d=
iv>
<div><em>Each time you wish to use the SDK in a new shell session, you nee=
d to source the environment setup script e.g.</em><br /><br />In spite of f=
act there is information that SDK is successfully set up it does not work a=
nd after loading environment devtool command output is:<br /><br /><em>$ de=
vtool</em><br /><em>(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3=
: line 5: (SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real</e=
m><br /><br />To analyze the problem I also run:<br /><br /><em>$ file&nbsp=
;(SDKROOT)/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real</em><br /><=
em>(SDKROOT)</em><em>/sysroots/x86_64-pokysdk-linux/usr/bin/python3.7.real:=
 ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linke=
d, <strong>interpreter /opt/smart-recovery/2.7.2/sysroots/x86_64-pokysdk-li=
nux/lib/ld-linux-x86-64.so.2</strong>, BuildID[sha1]=3Dbc0bda633e50a52d06a0=
27cc21707a0be0341f64, for GNU/Linux 3.2.0, stripped<br /><br /></em>The pro=
blem is that interpreter file does not exist and this is probably caused by=
 problem which occured at installation process. Is the problem known to any=
one?</div>

--GJ66CYikDnyzpwsm1KRv--
