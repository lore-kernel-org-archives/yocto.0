Subject: ERROR: iso-codes-4.4-r0
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.218.239)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Jul 2020 07:52:30 -0700
Message-ID: <9C9o.1594219950238454277.qCPQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5h9kB1m2hZnjHZ5XHZnh"

--5h9kB1m2hZnjHZ5XHZnh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build yocto image for RPI4 but i am getting following error

pankaj@exaleap-Inspiron-3584:~/raspberrypi4_image$ bitbake core-image-sato
Parsing recipes: 100% |###################################################=
###########################################################################=
########################################| Time: 0:09:59
Parsing of 2198 .bb files complete (0 cached, 2198 parsed). 3282 targets, =
147 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.46.0"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "universal"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnu=
eabi"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "raspberrypi4"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "3.1"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "arm vfp cortexa7 neon vfpv4 =
thumb callconvention-hard"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "hard"
meta
meta-poky
meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "dunfell:9c8049068406532c3dd5=
d8906c595218b0fefd40"
meta-oe
meta-python
meta-networking
meta-multimedia=C2=A0 =C2=A0 =C2=A0 =3D "dunfell:e413c1ef621688e69bb7830bb=
3151ed23b30b73e"
meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D "master:5ac6f013339b0b1ab2d71f9f6a=
f48a186e126c19"

Initialising tasks: 100% |################################################=
###########################################################################=
########################################| Time: 0:00:18
Sstate summary: Wanted 1395 Found 0 Missed 1395 Current 1738 (0% match, 55=
% complete)
NOTE: Executing Tasks
WARNING: iso-codes-4.4-r0 do_fetch: Failed to fetch URL git://salsa.debian=
.org/iso-codes-team/iso-codes.git;protocol=3Dhttp, attempting MIRRORS if av=
ailable
ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure: Unable to find revision=
 38edb926592954b87eb527124da0ec68d2a748f3 in branch master even from upstre=
am
ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure for URL: 'git://salsa.de=
bian.org/iso-codes-team/iso-codes.git;protocol=3Dhttp'. Unable to fetch URL=
 from any source.
ERROR: Logfile of failure stored in: /home/pankaj/raspberrypi4_image/tmp/w=
ork/all-poky-linux/iso-codes/4.4-r0/temp/log.do_fetch.24501
ERROR: Task (/home/pankaj/Yocto-practice/poky/meta/recipes-support/iso-cod=
es/iso-codes_4.4.bb:do_fetch) failed with exit code '1'

can someone help me how i can resolve this error?

--5h9kB1m2hZnjHZ5XHZnh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am trying to build yocto image for RPI4 but i am getting following e=
rror&nbsp;<br /><br />pankaj@exaleap-Inspiron-3584:~/raspberrypi4_image$ bi=
tbake core-image-sato</div>
<div>Parsing recipes: 100% |##############################################=
###########################################################################=
#############################################| Time: 0:09:59</div>
<div>Parsing of 2198 .bb files complete (0 cached, 2198 parsed). 3282 targ=
ets, 147 skipped, 0 masked, 0 errors.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>&nbsp;</div>
<div>Build Configuration:</div>
<div>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.46.0"</div>
<div>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"=
</div>
<div>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "universal"</div>
<div>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "arm-poky-linu=
x-gnueabi"</div>
<div>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "raspberr=
ypi4"</div>
<div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "pok=
y"</div>
<div>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "3.1"</div>
<div>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "arm vfp cortexa7 neon v=
fpv4 thumb callconvention-hard"</div>
<div>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "hard"</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</d=
iv>
<div>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp;=3D "dunfell:9c8049068406532=
c3dd5d8906c595218b0fefd40"</div>
<div>meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-networking&nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-multimedia&nbsp; &nbsp; &nbsp; =3D "dunfell:e413c1ef621688e69bb7=
830bb3151ed23b30b73e"</div>
<div>meta-raspberrypi&nbsp; &nbsp; &nbsp;=3D "master:5ac6f013339b0b1ab2d71=
f9f6af48a186e126c19"</div>
<div>&nbsp;</div>
<div>Initialising tasks: 100% |###########################################=
###########################################################################=
#############################################| Time: 0:00:18</div>
<div>Sstate summary: Wanted 1395 Found 0 Missed 1395 Current 1738 (0% matc=
h, 55% complete)</div>
<div>NOTE: Executing Tasks</div>
<div>WARNING: iso-codes-4.4-r0 do_fetch: Failed to fetch URL git://salsa.d=
ebian.org/iso-codes-team/iso-codes.git;protocol=3Dhttp, attempting MIRRORS =
if available</div>
<div>ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure: Unable to find rev=
ision 38edb926592954b87eb527124da0ec68d2a748f3 in branch master even from u=
pstream</div>
<div>ERROR: iso-codes-4.4-r0 do_fetch: Fetcher failure for URL: 'git://sal=
sa.debian.org/iso-codes-team/iso-codes.git;protocol=3Dhttp'. Unable to fetc=
h URL from any source.</div>
<div>ERROR: Logfile of failure stored in: /home/pankaj/raspberrypi4_image/=
tmp/work/all-poky-linux/iso-codes/4.4-r0/temp/log.do_fetch.24501</div>
<div>ERROR: Task (/home/pankaj/Yocto-practice/poky/meta/recipes-support/is=
o-codes/iso-codes_4.4.bb:do_fetch) failed with exit code '1'</div>
<div><br />can someone help me how i can resolve this error?</div>

--5h9kB1m2hZnjHZ5XHZnh--
