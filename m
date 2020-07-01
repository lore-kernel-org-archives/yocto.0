Subject: The following packages have unmet dependencies: packagegroup-core-x11-base : Depends: packagegroup-core-x11-xserver but it is not going to be installed #yocto
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.210.249)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Jul 2020 11:22:00 -0700
Message-ID: <7EEe.1593627720022564157.9Hlz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RmAl0YQQdzpsBIH21dSR"

--RmAl0YQQdzpsBIH21dSR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
i am trying to build core-image-sato and i am using PACKAGE_CLASSES =3D "p=
ackage_deb" but while building i am getting following error
pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sato
Parsing recipes: 100% |###################################################=
###########################################################################=
########################################| Time: 0:01:56
Parsing of 2279 .bb files complete (0 cached, 2279 parsed). 3439 targets, =
195 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.46.0"
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D "ubuntu-18.04"
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "aarch64-oe-linux"
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "raspberrypi4-=
64"
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "Exaleap-=
arm-linux"
DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "Exaleap-arm-linux-r1.0.0"
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "aarch64 cortexa72 crc crypto=
"
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ""
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "mas=
ter:982b7f98b8423236cc986346379b1bde3694f131"
meta-oe
meta-python
meta-networking
meta-multimedia
meta-perl=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "dunfell:e413c1ef62=
1688e69bb7830bb3151ed23b30b73e"
meta-raspberrypi=C2=A0 =C2=A0 =C2=A0=3D "master:5ac6f013339b0b1ab2d71f9f6a=
f48a186e126c19"
meta-pankaj=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "<unknown>:<unknown>"

Initialising tasks: 100% |################################################=
###########################################################################=
########################################| Time: 0:00:05
Sstate summary: Wanted 270 Found 0 Missed 270 Current 1913 (0% match, 87% =
complete)
NOTE: Executing Tasks
ERROR: core-image-sato-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/home/pankaj/Oe-Raspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-linux/co=
re-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/apt-get=C2=A0 install --=
force-yes --allow-unauthenticated --no-remove apt bash bsdtar cmake dhcp-cl=
ient dhcp-server dosfstools dpkg e2fsprogs git glibc-utils kernel-modules l=
ocaledef lsb-release mtd-utils-ubifs mtools openssh os-release packagegroup=
-base-extended packagegroup-core-boot packagegroup-core-sdk packagegroup-co=
re-ssh-openssh packagegroup-core-standalone-sdk-target packagegroup-core-to=
ols-debug packagegroup-core-x11-base packagegroup-core-x11-sato parted pseu=
do psplash-raspberrypi python3-pip ruby run-postinsts unicode-ucd' returned=
 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
packagegroup-core-x11-base : Depends: packagegroup-core-x11-xserver but it=
 is not going to be installed
E: Unable to correct problems, you have held broken packages.

ERROR: Logfile of failure stored in: /home/pankaj/Oe-Raspberrypi4/tmp-glib=
c/work/raspberrypi4_64-oe-linux/core-image-sato/1.0-r0/temp/log.do_rootfs.1=
2854
ERROR: Task (/home/pankaj/openembedded-core/meta/recipes-sato/images/core-=
image-sato.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5894 tasks of which 5893 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
/home/pankaj/openembedded-core/meta/recipes-sato/images/core-image-sato.bb=
:do_rootfs
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

when i am trying to build image without PACKAGE_CLASSES =3D "package_deb" =
i am able to buld i really dont have much knowledge about this can someone =
help??

--RmAl0YQQdzpsBIH21dSR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />i am trying to build core-image-sato and i am using PACKAGE_CLASSE=
S =3D "package_deb" but while building i am getting following error<br />
<div>pankaj@exaleap-Inspiron-3584:~/Oe-Raspberrypi4$ bitbake core-image-sa=
to</div>
<div>Parsing recipes: 100% |##############################################=
###########################################################################=
#############################################| Time: 0:01:56</div>
<div>Parsing of 2279 .bb files complete (0 cached, 2279 parsed). 3439 targ=
ets, 195 skipped, 0 masked, 0 errors.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>&nbsp;</div>
<div>Build Configuration:</div>
<div>BB_VERSION&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "1.46.0"</div>
<div>BUILD_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"=
</div>
<div>NATIVELSBSTRING&nbsp; &nbsp; &nbsp; =3D "ubuntu-18.04"</div>
<div>TARGET_SYS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "aarch64-oe-li=
nux"</div>
<div>MACHINE&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "raspberr=
ypi4-64"</div>
<div>DISTRO&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "Exa=
leap-arm-linux"</div>
<div>DISTRO_VERSION&nbsp; &nbsp; &nbsp; &nbsp;=3D "Exaleap-arm-linux-r1.0.=
0"</div>
<div>TUNE_FEATURES&nbsp; &nbsp; &nbsp; &nbsp; =3D "aarch64 cortexa72 crc c=
rypto"</div>
<div>TARGET_FPU&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D ""</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D=
 "master:982b7f98b8423236cc986346379b1bde3694f131"</div>
<div>meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-networking&nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-multimedia&nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-perl&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "dunfell:e413c=
1ef621688e69bb7830bb3151ed23b30b73e"</div>
<div>meta-raspberrypi&nbsp; &nbsp; &nbsp;=3D "master:5ac6f013339b0b1ab2d71=
f9f6af48a186e126c19"</div>
<div>meta-pankaj&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "&lt;unknown&gt;:&l=
t;unknown&gt;"</div>
<div>&nbsp;</div>
<div>Initialising tasks: 100% |###########################################=
###########################################################################=
#############################################| Time: 0:00:05</div>
<div>Sstate summary: Wanted 270 Found 0 Missed 270 Current 1913 (0% match,=
 87% complete)</div>
<div>NOTE: Executing Tasks</div>
<div>ERROR: core-image-sato-1.0-r0 do_rootfs: Unable to install packages. =
Command '/home/pankaj/Oe-Raspberrypi4/tmp-glibc/work/raspberrypi4_64-oe-lin=
ux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/apt-get&nbsp; insta=
ll --force-yes --allow-unauthenticated --no-remove apt bash bsdtar cmake dh=
cp-client dhcp-server dosfstools dpkg e2fsprogs git glibc-utils kernel-modu=
les localedef lsb-release mtd-utils-ubifs mtools openssh os-release package=
group-base-extended packagegroup-core-boot packagegroup-core-sdk packagegro=
up-core-ssh-openssh packagegroup-core-standalone-sdk-target packagegroup-co=
re-tools-debug packagegroup-core-x11-base packagegroup-core-x11-sato parted=
 pseudo psplash-raspberrypi python3-pip ruby run-postinsts unicode-ucd' ret=
urned 100:</div>
<div>Reading package lists...</div>
<div>Building dependency tree...</div>
<div>Reading state information...</div>
<div>Some packages could not be installed. This may mean that you have</di=
v>
<div>requested an impossible situation or if you are using the unstable</d=
iv>
<div>distribution that some required packages have not yet been created</d=
iv>
<div>or been moved out of Incoming.</div>
<div>The following information may help to resolve the situation:</div>
<div>&nbsp;</div>
<div>The following packages have unmet dependencies:</div>
<div>&nbsp;packagegroup-core-x11-base : Depends: packagegroup-core-x11-xse=
rver but it is not going to be installed</div>
<div>E: Unable to correct problems, you have held broken packages.</div>
<div>&nbsp;</div>
<div>ERROR: Logfile of failure stored in: /home/pankaj/Oe-Raspberrypi4/tmp=
-glibc/work/raspberrypi4_64-oe-linux/core-image-sato/1.0-r0/temp/log.do_roo=
tfs.12854</div>
<div>ERROR: Task (/home/pankaj/openembedded-core/meta/recipes-sato/images/=
core-image-sato.bb:do_rootfs) failed with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 5894 tasks of which 5893 didn't need t=
o be rerun and 1 failed.</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /home/pankaj/openembedded-core/meta/recipes-sato/images/core-i=
mage-sato.bb:do_rootfs</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit c=
ode.</div>
<div>&nbsp;</div>
when i am trying to build image without PACKAGE_CLASSES =3D "package_deb" =
i am able to buld i really dont have much knowledge about this can someone =
help??<br />
<div>&nbsp;</div>

--RmAl0YQQdzpsBIH21dSR--
