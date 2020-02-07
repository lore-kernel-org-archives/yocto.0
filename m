Subject: Can't build poky with 'out of the box' defaults and settings
To: yocto@lists.yoctoproject.org
From: "OliverYSedlacek" <owy@sevensoftltd.com>
X-Originating-Location: Haywards Heath, England, GB (81.174.247.223)
X-Originating-Platform: Windows Firefox 72
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 07 Feb 2020 08:28:47 -0800
Message-ID: <v4uE.1581092927230845408.DXQ8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BNYVO5YEhtQy9ul9BhMo"

--BNYVO5YEhtQy9ul9BhMo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've been tasked with setting up Yocto builds and I thought I'd better star=
t with the simplest possible build of Poky. I've tried Yocto 2.7.1 and Yoct=
o 3.0.1 on Debian 9 and Debian 10 but they all fail on the bitbake command.=
 The simplest failure comes from a Debian 10/Yocto 3.0.1/core-image-minimal=
 build, so I've included the output. Where do I go from here?
>=20
>=20
> olivers@isembard-deb:~/poky/build$ bitbake -k core-image-minimal
>=20
> WARNING: Host distribution "Debian-10" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
>=20
> Loading cache: 100%
> |#######################################################################=
########################|
> ETA:=C2=A0 00:00:00
>=20
> Loaded 1287 entries from dependency cache.
>=20
> NOTE: Resolving any missing task queue dependencies
>=20
>=20
> Build Configuration:
>=20
> BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.26.0"
>=20
> BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-li=
nux"
>=20
> NATIVELSBSTRING=C2=A0=C2=A0 =3D "Debian-10"
>=20
> TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "i586-poky-linu=
x"
>=20
> MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"qemux86"
>=20
> DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "poky"
>=20
> DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "1.8.2"
>=20
> TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m32 i586"
>=20
> TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D ""
>=20
> meta
>=20
> meta-yocto
>=20
> meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:87631919819b6f85f23f57689cd10=
65c64d7fb03"
>=20
>=20
> NOTE: Preparing RunQueue
>=20
> NOTE: Executing SetScene Tasks
>=20
> NOTE: Executing RunQueue Tasks
>=20
> ERROR: Function failed: do_compile (log file is located at
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/temp/=
log.do_compile.27321)
>=20
>=20
> ERROR: Logfile of failure stored in:
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/temp/=
log.do_compile.27321
>=20
>=20
> Log data follows:
>=20
> | DEBUG: Executing shell function do_compile
>=20
> | NOTE: make -j 1
> infodir=3D/home/olivers/poky/build/tmp/sysroots/x86_64-linux/usr/share/i=
nfo
>=20
> | make=C2=A0 all-recursive
>=20
> | make[1]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d'
>=20
>=20
> | Making all in .
>=20
> | make[2]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d'
>=20
>=20
> | make[2]: Nothing to be done for 'all-am'.
>=20
> | make[2]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d'
>=20
>=20
> | Making all in examples
>=20
> | make[2]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d/examples'
>=20
>=20
> | make[2]: Nothing to be done for 'all'.
>=20
> | make[2]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d/examples'
>=20
>=20
> | Making all in lib
>=20
> | make[2]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d/lib'
>=20
>=20
> | make=C2=A0 all-am
>=20
> | make[3]: Entering directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d/lib'
>=20
>=20
> | gcc=C2=A0=C2=A0 -I.
> -I/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-=
1.4.17/lib
> -isystem/home/olivers/poky/build/tmp/sysroots/x86_64-linux/usr/include=
=C2=A0
> -isystem/home/olivers/poky/build/tmp/sysroots/x86_64-linux/usr/include -=
O2
> -pipe -c -o freadahead.o
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.=
4.17/lib/freadahead.c
>=20
>=20
> |
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.=
4.17/lib/freadahead.c:
> In function 'freadahead':
>=20
> |
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.=
4.17/lib/freadahead.c:91:3:
> error: #error "Please port gnulib freadahead.c to your platform! Look at
> the definition of fflush, fread, ungetc on your system, then report this
> to bug-gnulib."
>=20
> |=C2=A0=C2=A0 #error "Please port gnulib freadahead.c to your platform! =
Look at the
> definition of fflush, fread, ungetc on your system, then report this to
> bug-gnulib."
>=20
> |=C2=A0=C2=A0=C2=A0 ^~~~~
>=20
> | make[3]: *** [Makefile:1842: freadahead.o] Error 1
>=20
> | make[3]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d/lib'
>=20
>=20
> | make[2]: *** [Makefile:1602: all] Error 2
>=20
> | make[2]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d/lib'
>=20
>=20
> | make[1]: *** [Makefile:1506: all-recursive] Error 1
>=20
> | make[1]: Leaving directory
> '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/buil=
d'
>=20
>=20
> | make: *** [Makefile:1461: all] Error 2
>=20
> | ERROR: oe_runmake failed
>=20
> | WARNING: exit code 1 from a shell command.
>=20
> | ERROR: Function failed: do_compile (log file is located at
> /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/temp/=
log.do_compile.27321)
>=20
>=20
> ERROR: Task 947
> (/home/olivers/poky/meta/recipes-devtools/m4/m4-native_1.4.17.bb,
> do_compile) failed with exit code '1'
>=20
> NOTE: Tasks Summary: Attempted 725 tasks of which 724 didn't need to be
> rerun and 1 failed.
>=20
> No currently running tasks (27 of 2034)
>=20
>=20
> Summary: 1 task failed:
>=20
> /home/olivers/poky/meta/recipes-devtools/m4/m4-native_1.4.17.bb,
> do_compile
>=20
> Summary: There was 1 WARNING message shown.
>=20
> Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.
>=20
>=20
>

--BNYVO5YEhtQy9ul9BhMo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've been tasked with setting up Yocto builds and I thought I'd better star=
t with the simplest possible build of Poky. I've tried Yocto 2.7.1 and Yoct=
o 3.0.1 on Debian 9 and Debian 10 but they all fail on the bitbake command.=
 The simplest failure comes from a Debian 10/Yocto 3.0.1/core-image-minimal=
 build, so I've included the output. Where do I go from here?
<blockquote>olivers@isembard-deb:~/poky/build$ bitbake -k core-image-minim=
al<br /><br />WARNING: Host distribution "Debian-10" has not been validated=
 with this version of the build system; you may possibly experience unexpec=
ted failures. It is recommended that you use a tested distribution.<br /><b=
r />Loading cache: 100% |##################################################=
#############################################| ETA:&nbsp; 00:00:00<br /><br=
 />Loaded 1287 entries from dependency cache.<br /><br />NOTE: Resolving an=
y missing task queue dependencies<br /><br /><br />Build Configuration:<br =
/><br />BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.26.0"<b=
r /><br />BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x8=
6_64-linux"<br /><br />NATIVELSBSTRING&nbsp;&nbsp; =3D "Debian-10"<br /><br=
 />TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "i586-poky-linu=
x"<br /><br />MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; =3D "qemux86"<br /><br />DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky"<br /><br />DISTRO_VERSION&nbsp;&nb=
sp;&nbsp; =3D "1.8.2"<br /><br />TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"m32 i586"<br /><br />TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=
=3D ""<br /><br />meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; <br /><br />meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; <br /><br />meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D "fido:876=
31919819b6f85f23f57689cd1065c64d7fb03"<br /><br /><br />NOTE: Preparing Run=
Queue<br /><br />NOTE: Executing SetScene Tasks<br /><br />NOTE: Executing =
RunQueue Tasks<br /><br />ERROR: Function failed: do_compile (log file is l=
ocated at /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r=
0/temp/log.do_compile.27321)<br /><br />ERROR: Logfile of failure stored in=
: /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/temp/l=
og.do_compile.27321<br /><br />Log data follows:<br /><br />| DEBUG: Execut=
ing shell function do_compile<br /><br />| NOTE: make -j 1 infodir=3D/home/=
olivers/poky/build/tmp/sysroots/x86_64-linux/usr/share/info<br /><br />| ma=
ke&nbsp; all-recursive<br /><br />| make[1]: Entering directory '/home/oliv=
ers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build'<br /><br />=
| Making all in .<br /><br />| make[2]: Entering directory '/home/olivers/p=
oky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build'<br /><br />| mak=
e[2]: Nothing to be done for 'all-am'.<br /><br />| make[2]: Leaving direct=
ory '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/bui=
ld'<br /><br />| Making all in examples<br /><br />| make[2]: Entering dire=
ctory '/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/b=
uild/examples'<br /><br />| make[2]: Nothing to be done for 'all'.<br /><br=
 />| make[2]: Leaving directory '/home/olivers/poky/build/tmp/work/x86_64-l=
inux/m4-native/1.4.17-r0/build/examples'<br /><br />| Making all in lib<br =
/><br />| make[2]: Entering directory '/home/olivers/poky/build/tmp/work/x8=
6_64-linux/m4-native/1.4.17-r0/build/lib'<br /><br />| make&nbsp; all-am<br=
 /><br />| make[3]: Entering directory '/home/olivers/poky/build/tmp/work/x=
86_64-linux/m4-native/1.4.17-r0/build/lib'<br /><br />| gcc&nbsp;&nbsp; -I.=
 -I/home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.=
4.17/lib&nbsp;&nbsp; -isystem/home/olivers/poky/build/tmp/sysroots/x86_64-l=
inux/usr/include&nbsp; -isystem/home/olivers/poky/build/tmp/sysroots/x86_64=
-linux/usr/include -O2 -pipe -c -o freadahead.o /home/olivers/poky/build/tm=
p/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.4.17/lib/freadahead.c<br /><br=
 />| /home/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-=
1.4.17/lib/freadahead.c: In function 'freadahead':<br /><br />| /home/olive=
rs/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-1.4.17/lib/fread=
ahead.c:91:3: error: #error "Please port gnulib freadahead.c to your platfo=
rm! Look at the definition of fflush, fread, ungetc on your system, then re=
port this to bug-gnulib."<br /><br />|&nbsp;&nbsp; #error "Please port gnul=
ib freadahead.c to your platform! Look at the definition of fflush, fread, =
ungetc on your system, then report this to bug-gnulib."<br /><br />|&nbsp;&=
nbsp;&nbsp; ^~~~~<br /><br />| make[3]: *** [Makefile:1842: freadahead.o] E=
rror 1<br /><br />| make[3]: Leaving directory '/home/olivers/poky/build/tm=
p/work/x86_64-linux/m4-native/1.4.17-r0/build/lib'<br /><br />| make[2]: **=
* [Makefile:1602: all] Error 2<br /><br />| make[2]: Leaving directory '/ho=
me/olivers/poky/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/build/lib'<=
br /><br />| make[1]: *** [Makefile:1506: all-recursive] Error 1<br /><br /=
>| make[1]: Leaving directory '/home/olivers/poky/build/tmp/work/x86_64-lin=
ux/m4-native/1.4.17-r0/build'<br /><br />| make: *** [Makefile:1461: all] E=
rror 2<br /><br />| ERROR: oe_runmake failed<br /><br />| WARNING: exit cod=
e 1 from a shell command.<br /><br />| ERROR: Function failed: do_compile (=
log file is located at /home/olivers/poky/build/tmp/work/x86_64-linux/m4-na=
tive/1.4.17-r0/temp/log.do_compile.27321)<br /><br />ERROR: Task 947 (/home=
/olivers/poky/meta/recipes-devtools/m4/m4-native_1.4.17.bb, do_compile) fai=
led with exit code '1'<br /><br />NOTE: Tasks Summary: Attempted 725 tasks =
of which 724 didn't need to be rerun and 1 failed.<br /><br />No currently =
running tasks (27 of 2034)<br /><br /><br />Summary: 1 task failed:<br /><b=
r />&nbsp; /home/olivers/poky/meta/recipes-devtools/m4/m4-native_1.4.17.bb,=
 do_compile<br /><br />Summary: There was 1 WARNING message shown.<br /><br=
 />Summary: There was 1 ERROR message shown, returning a non-zero exit code=
.<br /><br /><br /></blockquote>

--BNYVO5YEhtQy9ul9BhMo--
