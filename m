Return-Path: <poornesh@elmeasure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCDC2C433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 03:33:32 +0000 (UTC)
Subject: Re: Error while installing Python modules using pip3 in yocto zeus
 #zeus
To: yocto@lists.yoctoproject.org
From: poornesh@elmeasure.com
X-Originating-Location: Bengaluru, Karnataka, IN (119.161.98.28)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Oct 2021 20:33:31 -0700
Message-ID: <u8Ys.1634009611879842746.Oasa@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sGVLQLFQPADQgOzyQFfO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 03:33:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55026

--sGVLQLFQPADQgOzyQFfO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I am working on Rockpis Board with Yocto Zeus for development . When I am t=
rying to install=C2=A0 Python modules " *backports.zoneinfo"* using pip3 I =
am facing the below error . Kindly requesting any suggestions to resolve.

*Error Log:*
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------
Building wheels for collected packages: backports.zoneinfo
Building wheel for backports.zoneinfo (PEP 517) ... error
ERROR: Command errored out with exit status 1:
command: /usr/bin/python3 /usr/lib/python3.7/site-packages/pip/_vendor/pep5=
17/in_process/_in_process.py build_wheel /tmp/tmpj158xpon
cwd: /tmp/pip-install-e1zrr5gk/backports-zoneinfo_fe1585f6e0ef47be9df309ad5=
56bbecf
Complete output (39 lines):
running bdist_wheel
running build
running build_py
creating build
creating build/lib.linux-aarch64-3.7
creating build/lib.linux-aarch64-3.7/backports
copying src/backports/__init__.py -> build/lib.linux-aarch64-3.7/backports
creating build/lib.linux-aarch64-3.7/backports/zoneinfo
copying src/backports/zoneinfo/_zoneinfo.py -> build/lib.linux-aarch64-3.7/=
backports/zoneinfo
copying src/backports/zoneinfo/_version.py -> build/lib.linux-aarch64-3.7/b=
ackports/zoneinfo
copying src/backports/zoneinfo/_tzpath.py -> build/lib.linux-aarch64-3.7/ba=
ckports/zoneinfo
copying src/backports/zoneinfo/_common.py -> build/lib.linux-aarch64-3.7/ba=
ckports/zoneinfo
copying src/backports/zoneinfo/__init__.py -> build/lib.linux-aarch64-3.7/b=
ackports/zoneinfo
running egg_info
writing src/backports.zoneinfo.egg-info/PKG-INFO
writing dependency_links to src/backports.zoneinfo.egg-info/dependency_link=
s.txt
writing requirements to src/backports.zoneinfo.egg-info/requires.txt
writing top-level names to src/backports.zoneinfo.egg-info/top_level.txt
reading manifest file 'src/backports.zoneinfo.egg-info/SOURCES.txt'
reading manifest template 'MANIFEST.in'
warning: no files found matching '*.png' under directory 'docs'
warning: no files found matching '*.svg' under directory 'docs'
no previously-included directories found matching 'docs/_build'
no previously-included directories found matching 'docs/_output'
adding license file 'LICENSE'
adding license file 'licenses/LICENSE_APACHE'
writing manifest file 'src/backports.zoneinfo.egg-info/SOURCES.txt'
copying src/backports/zoneinfo/__init__.pyi -> build/lib.linux-aarch64-3.7/=
backports/zoneinfo
copying src/backports/zoneinfo/py.typed -> build/lib.linux-aarch64-3.7/back=
ports/zoneinfo
running build_ext
building 'backports.zoneinfo._czoneinfo' extension
creating build/temp.linux-aarch64-3.7
creating build/temp.linux-aarch64-3.7/lib
*aarch64-poky-linux-gcc -mcpu=3Dcortex-a35+crc+crypto -fstack-protector-str=
ong -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-secur=
ity -Wno-unused-result -Wsign-compare -DNDEBUG -g -O3 -Wa9*
*lib/zoneinfo_module.c:1:10: fatal error: Python.h: No such file or directo=
ry*
*1 | #include "Python.h"*
*|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~*
*compilation terminated.*
*error: command 'aarch64-poky-linux-gcc' failed with exit status 1*
*----------------------------------------*
*ERROR: Failed building wheel for backports.zoneinfo*
Failed to build backports.zoneinfo
ERROR: Could not build wheels for backports.zoneinfo which use PEP 517 and =
cannot be installed directly

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
----------------------------

Thanks in Advance

--sGVLQLFQPADQgOzyQFfO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !<br /><br />I am working on Rockpis Board with Yocto Zeus for de=
velopment . When I am trying to install&nbsp; Python modules "<strong>backp=
orts.zoneinfo"</strong> using pip3 I am facing the below error . Kindly req=
uesting any suggestions to resolve.<br /><br /><strong>Error Log:</strong><=
br />----------------------------------------------------------------------=
---------------------------------------------------------------------------=
--------------------------------------------<br />Building wheels for colle=
cted packages: backports.zoneinfo<br />&nbsp; Building wheel for backports.=
zoneinfo (PEP 517) ... error<br />&nbsp; ERROR: Command errored out with ex=
it status 1:<br />&nbsp;&nbsp; command: /usr/bin/python3 /usr/lib/python3.7=
/site-packages/pip/_vendor/pep517/in_process/_in_process.py build_wheel /tm=
p/tmpj158xpon<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cwd: /tmp/pip-insta=
ll-e1zrr5gk/backports-zoneinfo_fe1585f6e0ef47be9df309ad556bbecf<br />&nbsp;=
 Complete output (39 lines):<br />&nbsp; running bdist_wheel<br />&nbsp; ru=
nning build<br />&nbsp; running build_py<br />&nbsp; creating build<br />&n=
bsp; creating build/lib.linux-aarch64-3.7<br />&nbsp; creating build/lib.li=
nux-aarch64-3.7/backports<br />&nbsp; copying src/backports/__init__.py -&g=
t; build/lib.linux-aarch64-3.7/backports<br />&nbsp; creating build/lib.lin=
ux-aarch64-3.7/backports/zoneinfo<br />&nbsp; copying src/backports/zoneinf=
o/_zoneinfo.py -&gt; build/lib.linux-aarch64-3.7/backports/zoneinfo<br />&n=
bsp; copying src/backports/zoneinfo/_version.py -&gt; build/lib.linux-aarch=
64-3.7/backports/zoneinfo<br />&nbsp; copying src/backports/zoneinfo/_tzpat=
h.py -&gt; build/lib.linux-aarch64-3.7/backports/zoneinfo<br />&nbsp; copyi=
ng src/backports/zoneinfo/_common.py -&gt; build/lib.linux-aarch64-3.7/back=
ports/zoneinfo<br />&nbsp; copying src/backports/zoneinfo/__init__.py -&gt;=
 build/lib.linux-aarch64-3.7/backports/zoneinfo<br />&nbsp; running egg_inf=
o<br />&nbsp; writing src/backports.zoneinfo.egg-info/PKG-INFO<br />&nbsp; =
writing dependency_links to src/backports.zoneinfo.egg-info/dependency_link=
s.txt<br />&nbsp; writing requirements to src/backports.zoneinfo.egg-info/r=
equires.txt<br />&nbsp; writing top-level names to src/backports.zoneinfo.e=
gg-info/top_level.txt<br />&nbsp; reading manifest file 'src/backports.zone=
info.egg-info/SOURCES.txt'<br />&nbsp; reading manifest template 'MANIFEST.=
in'<br />&nbsp; warning: no files found matching '*.png' under directory 'd=
ocs'<br />&nbsp; warning: no files found matching '*.svg' under directory '=
docs'<br />&nbsp; no previously-included directories found matching 'docs/_=
build'<br />&nbsp; no previously-included directories found matching 'docs/=
_output'<br />&nbsp; adding license file 'LICENSE'<br />&nbsp; adding licen=
se file 'licenses/LICENSE_APACHE'<br />&nbsp; writing manifest file 'src/ba=
ckports.zoneinfo.egg-info/SOURCES.txt'<br />&nbsp; copying src/backports/zo=
neinfo/__init__.pyi -&gt; build/lib.linux-aarch64-3.7/backports/zoneinfo<br=
 />&nbsp; copying src/backports/zoneinfo/py.typed -&gt; build/lib.linux-aar=
ch64-3.7/backports/zoneinfo<br />&nbsp; running build_ext<br />&nbsp; build=
ing 'backports.zoneinfo._czoneinfo' extension<br />&nbsp; creating build/te=
mp.linux-aarch64-3.7<br />&nbsp; creating build/temp.linux-aarch64-3.7/lib<=
br /><strong>&nbsp; aarch64-poky-linux-gcc -mcpu=3Dcortex-a35+crc+crypto -f=
stack-protector-strong -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -We=
rror=3Dformat-security -Wno-unused-result -Wsign-compare -DNDEBUG -g -O3 -W=
a9</strong><br /><strong>&nbsp; lib/zoneinfo_module.c:1:10: fatal error: Py=
thon.h: No such file or directory</strong><br /><strong>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; 1 | #include "Python.h"</strong><br /><strong>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; ^~~~~~~~~~</strong><br /><strong>&nbsp; compilation terminated.</str=
ong><br /><strong>&nbsp; error: command 'aarch64-poky-linux-gcc' failed wit=
h exit status 1</strong><br /><strong>&nbsp; ------------------------------=
----------</strong><br /><strong>&nbsp; ERROR: Failed building wheel for ba=
ckports.zoneinfo</strong><br />Failed to build backports.zoneinfo<br />ERRO=
R: Could not build wheels for backports.zoneinfo which use PEP 517 and cann=
ot be installed directly<br /><br />---------------------------------------=
---------------------------------------------------------------------------=
----------------------------------------------------------------<br /><br /=
>Thanks in Advance <br />

--sGVLQLFQPADQgOzyQFfO--

