Subject: How to generate the SDK for RPI3 #dunfell #raspberrypi #sdk
To: yocto@lists.yoctoproject.org
From: prashantsingh@dialtronics.com
X-Originating-Location: Hyderabad, Telangana, IN (183.83.218.146)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Nov 2020 00:38:14 -0800
Message-ID: <EPFL.1605602294543987637.0RqK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3KMrpCC8dGw7YZP2rbEW"

--3KMrpCC8dGw7YZP2rbEW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I've built OS for rpi3 using dunfell yocto. I've also generated SDK for th=
e same, for that I've added these info in my local.conf file-

*TOOLCHAIN_TARGET_TASK_append =3D " python3-dev kernel-dev kernel-devsrc"*
*TOOLCHAIN_HOST_TASK_append =3D " nativesdk-cmake"*

and after this, it is generating kernel source also in SDK, but when I'm s=
etting environment and utilizing kernel source to compile my kernel, then I=
'm getting following error-

*make[2]: *** No rule to make target 'init/main.o', needed by 'init/built-=
in.a'.=C2=A0 Stop.*
*Makefile:1732: recipe for target 'init' failed*
*make[1]: *** [init] Error 2*
*make[1]: Leaving directory '/opt/poky/3.1.2/sysroots/cortexa7t2hf-neon-vf=
pv4-poky-linux-gnueabi/lib/modules/5.4.64-v7/build'*
*Makefile:23: recipe for target 'default' failed*
*make: *** [default] Error 2*

So please help me resolve this issue, and if I'm missing any thing to add =
in local.conf file, so help me in that to generate proper sdk.

--3KMrpCC8dGw7YZP2rbEW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />I've built OS for rpi3 using dunfell yocto. I've also g=
enerated SDK for the same, for that I've added these info in my local.conf =
file-<br /><br /><strong>TOOLCHAIN_TARGET_TASK_append =3D " python3-dev ker=
nel-dev kernel-devsrc"</strong><br /><strong>TOOLCHAIN_HOST_TASK_append =3D=
 " nativesdk-cmake"</strong><br /><br />and after this, it is generating ke=
rnel source also in SDK, but when I'm setting environment and utilizing ker=
nel source to compile my kernel, then I'm getting following error-<br /><br=
 /><strong>make[2]: *** No rule to make target 'init/main.o', needed by 'in=
it/built-in.a'.&nbsp; Stop.</strong><br /><strong>Makefile:1732: recipe for=
 target 'init' failed</strong><br /><strong>make[1]: *** [init] Error 2</st=
rong><br /><strong>make[1]: Leaving directory '/opt/poky/3.1.2/sysroots/cor=
texa7t2hf-neon-vfpv4-poky-linux-gnueabi/lib/modules/5.4.64-v7/build'</stron=
g><br /><strong>Makefile:23: recipe for target 'default' failed</strong><br=
 /><strong>make: *** [default] Error 2</strong><br /><br /><br />So please =
help me resolve this issue, and if I'm missing any thing to add in local.co=
nf file, so help me in that to generate proper sdk.

--3KMrpCC8dGw7YZP2rbEW--
