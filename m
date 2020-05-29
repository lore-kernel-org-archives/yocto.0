Subject: Generating a genericx86_64 - bad hddimg #yocto
To: yocto@lists.yoctoproject.org
From: "fnx_qt" <quentinrapin@gmail.com>
X-Originating-Location: Yverdon-les-Bains, Vaud, CH (77.56.226.172)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 May 2020 06:26:28 -0700
Message-ID: <19cA.1590758788047397077.KrY2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xYuUimFRk7mD9HvfC8yp"

--xYuUimFRk7mD9HvfC8yp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to generate a simple genericx86_64 with Yocto 2.7 Warrior. Prob=
lem is that my hddimg is completely messed up upon generation.
I have not made any particular configuration apart from adding layers and =
modiying the local.conf file. Here is the content of the hddimg file:

% fdisk -l core-image-minimal-genericx86-64.hddimg images/genericx86-64 wa=
gner
Disk core-image-minimal-genericx86-64.hddimg: 535.4 MiB, 561386496 bytes, =
1096458 sectors
Units: sectors of 1 * 512 =3D 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x20ac7dda

Device Boot Start End Sectors Size Id Type
core-image-minimal-genericx86-64.hddimg1 3224498923 3657370039 432871117 2=
06.4G 7 HPFS/NTFS/exFAT
core-image-minimal-genericx86-64.hddimg2 3272020941 5225480974 1953460034 =
931.5G 16 Hidden FAT16
core-image-minimal-genericx86-64.hddimg3 0 0 0 0B 6f unknown
core-image-minimal-genericx86-64.hddimg4 50200576 974536369 924335794 440.=
8G 0 Empty

Here is the bblayers.conf file:

% cat bblayers.conf build/conf wagner
# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.co=
nf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
${TOPDIR}/../sources/poky/meta \
${TOPDIR}/../sources/poky/meta-poky \
${TOPDIR}/../sources/poky/meta-yocto-bsp \
${TOPDIR}/../sources/meta-openembedded/meta-oe \
${TOPDIR}/../sources/meta-openembedded/meta-python \
${TOPDIR}/../sources/meta-openembedded/meta-networking \
${TOPDIR}/../sources/meta-openembedded/meta-filesystems \
${TOPDIR}/../sources/meta-intel \
${TOPDIR}/../sources/meta-virtualization \
"

And here is the local.conf file (only the uncommented lines):

MACHINE ??=3D "genericx86-64"
DL_DIR ?=3D "/home/username/workspace/downloads"
SSTATE_DIR ?=3D "/home/username/workspace/sstate-cache"
DISTRO ?=3D "poky"
PACKAGE_CLASSES ?=3D "package_rpm"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
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
PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
CONF_VERSION =3D "1"

# Include SystemD and SystemCTL
DISTRO_FEATURES_append =3D " systemd virtualization"
VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"

# Added Docker container to the image
IMAGE_INSTALL_append =3D " docker python3-docker-compose"

Do anyone have an idea of what the problem is ?

--xYuUimFRk7mD9HvfC8yp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,<br /><br />I'm trying to generate a simple genericx86_64 with Yoc=
to 2.7 Warrior. Problem is that my hddimg is completely messed up upon gene=
ration.<br />I have not made any particular configuration apart from adding=
 layers and modiying the local.conf file. Here is the content of the hddimg=
 file:<br /><br /><br /></p>
<div style=3D"display: inline-block; white-space: pre; background-color: #=
0c0c0c; font-family: 'Cascadia Mono',monospace; font-size: 12pt; padding: 4=
px;"><span style=3D"color: #13a10e;">%</span><span style=3D"color: #cccccc;=
"> fdisk -l core-image-minimal-genericx86-64.hddimg images/genericx86-64 </=
span><span style=3D"color: #3b78ff;">wagner<br /></span><span style=3D"colo=
r: #f2f2f2;">Disk core-image-minimal-genericx86-64.hddimg: 535.4 MiB, 56138=
6496 bytes, 1096458 sectors<br /></span><span style=3D"color: #cccccc;">Uni=
ts: sectors of 1 * 512 =3D 512 bytes<br />Sector size (logical/physical): 5=
12 bytes / 512 bytes<br />I/O size (minimum/optimal): 512 bytes / 512 bytes=
<br />Disklabel type: dos<br />Disk identifier: 0x20ac7dda<br /><br /></spa=
n><span style=3D"color: #f2f2f2;">Device</span><span style=3D"color: #ccccc=
c;"> </span><span style=3D"color: #f2f2f2;">Boot</span><span style=3D"color=
: #cccccc;"> </span><span style=3D"color: #f2f2f2;"> Start</span><span styl=
e=3D"color: #cccccc;"> </span><span style=3D"color: #f2f2f2;"> End</span><s=
pan style=3D"color: #cccccc;"> </span><span style=3D"color: #f2f2f2;"> Sect=
ors</span><span style=3D"color: #cccccc;"> </span><span style=3D"color: #f2=
f2f2;"> Size</span><span style=3D"color: #cccccc;"> </span><span style=3D"c=
olor: #f2f2f2;">Id</span><span style=3D"color: #cccccc;"> </span><span styl=
e=3D"color: #f2f2f2;">Type<br /></span><span style=3D"color: #cccccc;">core=
-image-minimal-genericx86-64.hddimg1 3224498923 3657370039 432871117 206.4G=
 7 HPFS/NTFS/exFAT<br />core-image-minimal-genericx86-64.hddimg2 3272020941=
 5225480974 1953460034 931.5G 16 Hidden FAT16<br />core-image-minimal-gener=
icx86-64.hddimg3 0 0 0 0B 6f unknown<br />core-image-minimal-genericx86-64.=
hddimg4 50200576 974536369 924335794 440.8G 0 Empty</span></div>
<p><br />Here is the bblayers.conf file:</p>
<div style=3D"display: inline-block; white-space: pre; background-color: #=
0c0c0c; font-family: 'Cascadia Mono',monospace; font-size: 12pt; padding: 4=
px;"><span style=3D"color: #13a10e;"> % </span><span style=3D"color: #ccccc=
c;">cat bblayers.conf </span><span style=3D"color: #13a10e;"> </span><span =
style=3D"color: #cccccc;">build/conf </span><span style=3D"color: #3b78ff;"=
>wagner<br /></span><span style=3D"color: #cccccc;"># POKY_BBLAYERS_CONF_VE=
RSION is increased each time build/conf/bblayers.conf<br /># changes incomp=
atibly<br />POKY_BBLAYERS_CONF_VERSION =3D "2"<br /><br />BBPATH =3D "${TOP=
DIR}"<br />BBFILES ?=3D ""<br /><br />BBLAYERS ?=3D " \<br />${TOPDIR}/../s=
ources/poky/meta \<br />${TOPDIR}/../sources/poky/meta-poky \<br />${TOPDIR=
}/../sources/poky/meta-yocto-bsp \<br />${TOPDIR}/../sources/meta-openembed=
ded/meta-oe \<br />${TOPDIR}/../sources/meta-openembedded/meta-python \<br =
/>${TOPDIR}/../sources/meta-openembedded/meta-networking \<br />${TOPDIR}/.=
./sources/meta-openembedded/meta-filesystems \<br />${TOPDIR}/../sources/me=
ta-intel \<br />${TOPDIR}/../sources/meta-virtualization \<br />"</span></d=
iv>
<p><br />And here is the local.conf file (only the uncommented lines):</p>
<div style=3D"display: inline-block; white-space: pre; background-color: #=
0c0c0c; font-family: 'Cascadia Mono',monospace; font-size: 12pt; padding: 4=
px;"><span style=3D"color: #cccccc;">MACHINE ??=3D "genericx86-64"<br /></s=
pan>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">DL_DIR ?=3D "/home/username/workspace/downloads"=
<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">SSTATE_DIR ?=3D "/home/username/workspace/sstate=
-cache"<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">DISTRO ?=3D "poky"<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">PACKAGE_CLASSES ?=3D "package_rpm"<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"<br /></=
span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">USER_CLASSES ?=3D "buildstats image-mklibs image=
-prelink"<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">PATCHRESOLVE =3D "noop"<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">BB_DISKMON_DIRS ??=3D "\<br />STOPTASKS,${TMPDIR=
},1G,100K \<br />STOPTASKS,${DL_DIR},1G,100K \<br />STOPTASKS,${SSTATE_DIR}=
,1G,100K \<br />STOPTASKS,/tmp,100M,100K \<br />ABORT,${TMPDIR},100M,1K \<b=
r />ABORT,${DL_DIR},100M,1K \<br />ABORT,${SSTATE_DIR},100M,1K \<br />ABORT=
,/tmp,10M,1K"<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">PACKAGECONFIG_append_pn-qemu-system-native =3D "=
 sdl"<br />PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"<br /></span>
<div style=3D"display: inline-block; font-size: 12pt; padding: 4px;"><span=
 style=3D"color: #cccccc;">CONF_VERSION =3D "1"<br /><br /># Include System=
D and SystemCTL<br />DISTRO_FEATURES_append =3D " systemd virtualization"<b=
r />VIRTUAL-RUNTIME_init_manager =3D "systemd"<br />VIRTUAL-RUNTIME_initscr=
ipts =3D "systemd-compat-units"<br />DISTRO_FEATURES_BACKFILL_CONSIDERED =
=3D "sysvinit"<br /><br /># Added Docker container to the image<br />IMAGE=
_INSTALL_append =3D " docker python3-docker-compose"</span></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div style=3D"display: inline-block; white-space: pre; background-color: #=
0c0c0c; font-family: 'Cascadia Mono',monospace; font-size: 12pt; padding: 4=
px;">&nbsp;</div>
<p><br /><br />Do anyone have an idea of what the problem is ?<br /><br />=
</p>

--xYuUimFRk7mD9HvfC8yp--
