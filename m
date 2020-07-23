Subject: NO INTERNET ENVIRONMENT - USING PREMIRROR fails -> gstreamer1.0_1.12.2.bb:do_unpack failed due to a fetch issue
To: yocto@lists.yoctoproject.org
From: baranarman@gmail.com
X-Originating-Location: Ankara, TR (92.45.88.58)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 05:40:07 -0700
Message-ID: <4KAl.1595508007759216809.soAk@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iaDMLeTNO5A38r9rVeJr"

--iaDMLeTNO5A38r9rVeJr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a problem. I am trying to set up development environment that runs =
offline. For this purpose i set up a repository folder by the following loc=
al.conf file:

"
MACHINE ??=3D 'imx6dlsabresd'
DISTRO ?=3D 'fsl-imx-fb'
PACKAGE_CLASSES ?=3D "package_rpm"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dbg-pkgs dev-pkgs package-manageme=
nt ssh-server-dropbear ssh-server-openssh staticdev-pkgs "
USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
STOPTASKS,${TMPDIR},1G,100K \
STOPTASKS,${DL_DIR},1G,100K \
STOPTASKS,${SSTATE_DIR},1G,100K \
STOPTASKS,/tmp,100M,100K \
ABORT,${TMPDIR},100M,1K \
ABORT,${DL_DIR},100M,1K \
ABORT,${SSTATE_DIR},100M,1K \
ABORT,/tmp,10M,1K"
PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
CONF_VERSION =3D "1"

IMAGE_INSTALL_append =3D " gstreamer imx-test"

DL_DIR ?=3D "${BSPDIR}/downloads/"
SSTATE_DIR ?=3D "${BSPDIR}/sstate-cache/"
ACCEPT_FSL_EULA =3D "1"

# ADDED
BB_NO_NETWORK =3D "1"

INHERIT +=3D "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS =3D "1"

SOURCE_MIRROR_URL =3D "file://${BSPDIR}/repository"

PREMIRRORS_prepend =3D "\
git://.*/.* file://${BSPDIR}/repository/ \n \
svn://.*/.* file://${BSPDIR}/repository/ \n \
cvs://.*/.* file://${BSPDIR}/repository/ \n \
ftp://.*/.* file://${BSPDIR}/repository/ \n \
http://.*/.* file://${BSPDIR}/repository/ \n \
https://.*/.* file://${BSPDIR}/repository/ \n "
"

initially i run the conf above with "BB_NO_NETWORK =3D "0" to generate the=
 tarballs in downloads dir.
Run the command: bitbake fsl-image-multimedia-full

After initial run I copied the content of the downloads folder into reposi=
tory folder. removed build/tmp folder, downloads folder and sstate-cache fo=
lder to be on the clear page.
Then I set [BB_NO_NETWORK =3D "1" ] and execute "tar -czvf ... " to compre=
ss all the imx-yocto-bsp folder.

Then I port the imx-tar.gz file to a crops environment on Windows.

The set environment is crops/poky and no internet [unplugged ethernet].

then I run the command bitbake fsl-image-multimedia-full again.
I expect that the build will be successful as the repository shall be enou=
gh.
But I get the following error:

"
ERROR: gstreamer1.0-1.12.2-r0 do_unpack: Fetcher failure: Fetch command ex=
port DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SS=
H_AGENT_PID=3D"2184"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; =
export all_proxy=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export ALL_PRO=
XY=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export ftp_proxy=3D"http://i=
kitis:Oe6aoaeaf@10.1.1.51:8080"; export FTP_PROXY=3D"http://10.1.1.51:8080/=
"; export https_proxy=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export HT=
TPS_PROXY=3D"http://10.1.1.51:8080/"; export http_proxy=3D"http://ikitis:Oe=
6aoaeaf@10.1.1.51:8080"; export HTTP_PROXY=3D"http://10.1.1.51:8080/"; expo=
rt PATH=3D"/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/us=
r/bin/python3-native:/home/aselsan/imx-yocto-bsp/sources/poky/scripts:/home=
/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-li=
nux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/usr/bin/arm-poky-l=
inux-gnueabi:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/corte=
xa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot/usr/bin=
/crossscripts:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cort=
exa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native=
/usr/sbin:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/usr=
/bin:/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-ne=
on-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/sbin:/ho=
me/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-=
linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/bin:/home/aselsa=
n/imx-yocto-bsp/sources/poky/bitbake/bin:/home/aselsan/imx-yocto-bsp/build-=
image-minimal/tmp/hosttools"; export HOME=3D"/home/aselsan"; git -c core.fs=
yncobjectfiles=3D0 submodule update --init --recursive failed with exit cod=
e 1, output:
Submodule 'common' (https://anongit.freedesktop.org/git/gstreamer/common.g=
it) registered for path 'common'
Cloning into '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common'...
fatal: unable to access 'https://anongit.freedesktop.org/git/gstreamer/com=
mon.git/': Received HTTP code 407 from proxy after CONNECT
fatal: clone of 'https://anongit.freedesktop.org/git/gstreamer/common.git'=
 into submodule path '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common' f=
ailed
Failed to clone 'common'. Retry scheduled
Cloning into '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cor=
texa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common'...
fatal: unable to access 'https://anongit.freedesktop.org/git/gstreamer/com=
mon.git/': Received HTTP code 407 from proxy after CONNECT
fatal: clone of 'https://anongit.freedesktop.org/git/gstreamer/common.git'=
 into submodule path '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/w=
ork/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common' f=
ailed
Failed to clone 'common' a second time, aborting

ERROR: gstreamer1.0-1.12.2-r0 do_unpack: Function failed: base_do_unpack
ERROR: Logfile of failure stored in: /home/aselsan/imx-yocto-bsp/build-ima=
ge-minimal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-=
r0/temp/log.do_unpack.54012
ERROR: Task (/home/aselsan/imx-yocto-bsp/sources/poky/meta/recipes-multime=
dia/gstreamer/gstreamer1.0_1.12.2.bb:do_unpack) failed with exit code '1'
"

I checked out but could not find a reason

I would highly appreciate if you be kind enough to give support on the iss=
ue.

Best Regards
B. A.

--iaDMLeTNO5A38r9rVeJr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I have a problem. I am trying to set up development environm=
ent that runs offline. For this purpose i set up a repository folder by the=
 following local.conf file:<br /><br />"<br />MACHINE ??=3D 'imx6dlsabresd'=
<br />DISTRO ?=3D 'fsl-imx-fb'<br />PACKAGE_CLASSES ?=3D "package_rpm"<br /=
>EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dbg-pkgs dev-pkgs package-manageme=
nt ssh-server-dropbear ssh-server-openssh staticdev-pkgs "<br />USER_CLASSE=
S ?=3D "buildstats image-mklibs image-prelink"<br />PATCHRESOLVE =3D "noop"=
<br />BB_DISKMON_DIRS ??=3D "\<br />&nbsp;&nbsp;&nbsp; STOPTASKS,${TMPDIR},=
1G,100K \<br />&nbsp;&nbsp;&nbsp; STOPTASKS,${DL_DIR},1G,100K \<br />&nbsp;=
&nbsp;&nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \<br />&nbsp;&nbsp;&nbsp; STOP=
TASKS,/tmp,100M,100K \<br />&nbsp;&nbsp;&nbsp; ABORT,${TMPDIR},100M,1K \<br=
 />&nbsp;&nbsp;&nbsp; ABORT,${DL_DIR},100M,1K \<br />&nbsp;&nbsp;&nbsp; ABO=
RT,${SSTATE_DIR},100M,1K \<br />&nbsp;&nbsp;&nbsp; ABORT,/tmp,10M,1K"<br />=
PACKAGECONFIG_append_pn-qemu-native =3D " sdl"<br />PACKAGECONFIG_append_pn=
-nativesdk-qemu =3D " sdl"<br />CONF_VERSION =3D "1"<br /><br />IMAGE_INSTA=
LL_append =3D " gstreamer imx-test"<br /><br />DL_DIR ?=3D "${BSPDIR}/downl=
oads/"<br />SSTATE_DIR ?=3D "${BSPDIR}/sstate-cache/"<br />ACCEPT_FSL_EULA =
=
=3D "1"<br /><br /><br /># ADDED<br />BB_NO_NETWORK =3D "1"<br /><br />INH=
ERIT +=3D "own-mirrors"<br />BB_GENERATE_MIRROR_TARBALLS =3D "1"<br /><br /=
>SOURCE_MIRROR_URL =3D "file://${BSPDIR}/repository"<br /><br />PREMIRRORS_=
prepend =3D "\<br />git://.*/.* file://${BSPDIR}/repository/ \n \<br />svn:=
//.*/.* file://${BSPDIR}/repository/ \n \<br />cvs://.*/.* file://${BSPDIR}=
/repository/ \n \<br />ftp://.*/.* file://${BSPDIR}/repository/ \n \<br />h=
ttp://.*/.* file://${BSPDIR}/repository/ \n \<br />https://.*/.* file://${B=
SPDIR}/repository/ \n "<br />"<br /><br />initially i run the conf above wi=
th "BB_NO_NETWORK =3D "0" to generate the tarballs in downloads dir.&nbsp;<=
br />Run the command: bitbake fsl-image-multimedia-full<br /><br />After in=
itial run I copied the content of the downloads folder into repository fold=
er. removed build/tmp folder, downloads folder and sstate-cache folder to b=
e on the clear page. <br />Then I set [BB_NO_NETWORK =3D "1" ] and execute =
"tar -czvf ... " to compress all the imx-yocto-bsp folder.<br /><br />Then =
I port the imx-tar.gz file to a crops environment on Windows. <br /><br />T=
he set environment is crops/poky and no internet [unplugged ethernet].<br /=
><br />then I run the command bitbake fsl-image-multimedia-full again. <br =
/>I expect that the build will be successful as the repository shall be eno=
ugh.<br />But I get the following error:<br /><br />"<br />ERROR: gstreamer=
1.0-1.12.2-r0 do_unpack: Fetcher failure: Fetch command export DBUS_SESSION=
_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SSH_AGENT_PID=3D"21=
84"; export SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export all_proxy=
=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export ALL_PROXY=3D"http://ik=
itis:Oe6aoaeaf@10.1.1.51:8080"; export ftp_proxy=3D"http://ikitis:Oe6aoaeaf=
@10.1.1.51:8080"; export FTP_PROXY=3D"http://10.1.1.51:8080/"; export https=
_proxy=3D"http://ikitis:Oe6aoaeaf@10.1.1.51:8080"; export HTTPS_PROXY=3D"ht=
tp://10.1.1.51:8080/"; export http_proxy=3D"http://ikitis:Oe6aoaeaf@10.1.1.=
51:8080"; export HTTP_PROXY=3D"http://10.1.1.51:8080/"; export PATH=3D"/hom=
e/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-l=
inux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/usr/bin/python3-n=
ative:/home/aselsan/imx-yocto-bsp/sources/poky/scripts:/home/aselsan/imx-yo=
cto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gst=
reamer1.0/1.12.2-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:/h=
ome/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky=
-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot/usr/bin/crossscripts:/=
home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-pok=
y-linux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/usr/sbin:/home=
/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-li=
nux-gnueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/usr/bin:/home/asel=
san/imx-yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-linux-g=
nueabi/gstreamer1.0/1.12.2-r0/recipe-sysroot-native/sbin:/home/aselsan/imx-=
yocto-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/g=
streamer1.0/1.12.2-r0/recipe-sysroot-native/bin:/home/aselsan/imx-yocto-bsp=
/sources/poky/bitbake/bin:/home/aselsan/imx-yocto-bsp/build-image-minimal/t=
mp/hosttools"; export HOME=3D"/home/aselsan"; git -c core.fsyncobjectfiles=
=3D0 submodule update --init --recursive failed with exit code 1, output:<=
br />Submodule 'common' (https://anongit.freedesktop.org/git/gstreamer/comm=
on.git) registered for path 'common'<br />Cloning into '/home/aselsan/imx-y=
octo-bsp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gs=
treamer1.0/1.12.2-r0/git/common'...<br />fatal: unable to access 'https://a=
nongit.freedesktop.org/git/gstreamer/common.git/': Received HTTP code 407 f=
rom proxy after CONNECT<br />fatal: clone of 'https://anongit.freedesktop.o=
rg/git/gstreamer/common.git' into submodule path '/home/aselsan/imx-yocto-b=
sp/build-image-minimal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreame=
r1.0/1.12.2-r0/git/common' failed<br />Failed to clone 'common'. Retry sche=
duled<br />Cloning into '/home/aselsan/imx-yocto-bsp/build-image-minimal/tm=
p/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common=
'...<br />fatal: unable to access 'https://anongit.freedesktop.org/git/gstr=
eamer/common.git/': Received HTTP code 407 from proxy after CONNECT<br />fa=
tal: clone of 'https://anongit.freedesktop.org/git/gstreamer/common.git' in=
to submodule path '/home/aselsan/imx-yocto-bsp/build-image-minimal/tmp/work=
/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/git/common' fail=
ed<br />Failed to clone 'common' a second time, aborting<br /><br />ERROR: =
gstreamer1.0-1.12.2-r0 do_unpack: Function failed: base_do_unpack<br />ERRO=
R: Logfile of failure stored in: /home/aselsan/imx-yocto-bsp/build-image-mi=
nimal/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gstreamer1.0/1.12.2-r0/te=
mp/log.do_unpack.54012<br />ERROR: Task (/home/aselsan/imx-yocto-bsp/source=
s/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0_1.12.2.bb:do_unpack) =
failed with exit code '1'<br />"<br /><br />I checked out but could not fin=
d a reason<br /><br />I would highly appreciate if you be kind enough to gi=
ve support on the issue.<br /><br /><br />Best Regards<br />B. A.

--iaDMLeTNO5A38r9rVeJr--
