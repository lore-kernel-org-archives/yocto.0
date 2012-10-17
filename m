Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A933E0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 13:21:37 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 17 Oct 2012 14:21:36 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Wed, 17 Oct 2012 14:21:32 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Wed, 17 Oct 2012 14:21:35 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Marc Ferland <ferlandm@sonatest.com>
Thread-Topic: [yocto] lm-sensors not available as a package?
Thread-Index: AQHNq8vx915XsixcRCmSxVny1UBT2pe98TCc
Date: Wed, 17 Oct 2012 20:21:35 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D965625@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
	<1643755.JoZOaIgQYA@helios> <87vceal3m1.fsf@sonatest.com>
	<DDDB9E6645DE24488B8485B41A051F471D961A0A@Mercury.usurf.usu.edu>,
	<87d30ie0gr.fsf@sonatest.com>
In-Reply-To: <87d30ie0gr.fsf@sonatest.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 17 Oct 2012 20:21:32.0038 (UTC)
	FILETIME=[FF3C7A60:01CDACA4]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: lm-sensors not available as a package?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 Oct 2012 20:21:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Marc,=0A=
=0A=
If you have a working recipe, I would love to see it.  Maybe you have alrea=
dy solved some of the issues I have been seeing.=0A=
=0A=
I have a recipe that installs the software, however, I would like to have i=
t run sensors-detect on first boot as well as install the lm_sensors.init s=
cript to /etc/init.d.  My recipe now looks like this:=0A=
=0A=
---------------------------------------------------------------------------=
---------------------------------------------------------------------=0A=
DESCRIPTION =3D "Hardware health monitoring applications"=0A=
HOMEPAGE =3D "http://www.lm-sensors.org/"=0A=
DEPENDS =3D "sysfsutils virtual/libiconv"=0A=
LICENSE =3D "GPLv2"=0A=
PR =3D "r1"=0A=
DEPENDS =3D "bison-native flex-native"=0A=
PACKAGE_ARCH =3D "${MACHINE_ARCH}"=0A=
=0A=
SRC_URI =3D "http://dl.lm-sensors.org/lm-sensors/releases/lm_sensors-${PV}.=
tar.bz2"=0A=
=0A=
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D751419260aa954499f7abaabaa882bbe=
 \=0A=
                    file://COPYING.LGPL;md5=3D4fbd65380cdd255951079008b3645=
16c \=0A=
                   "=0A=
=0A=
SRC_URI[md5sum] =3D "f357ba00b080ab102a170f7bf8bb2578"=0A=
SRC_URI[sha256sum] =3D "f13dd885406841a7352ccfb8b9ccb23c4c057abe3de4258da54=
44c149a9e3ae1"=0A=
=0A=
S =3D "${WORKDIR}/lm_sensors-${PV}"=0A=
=0A=
EXTRA_OEMAKE =3D 'LINUX=3D${STAGING_KERNEL_DIR} EXLDFLAGS=3D"${LDFLAGS}" \=
=0A=
                MACHINE=3D${TARGET_ARCH} PREFIX=3D${prefix} CC=3D"${CC}" AR=
=3D"${AR}"'=0A=
=0A=
do_compile() {=0A=
        oe_runmake user PROG_EXTRA=3Dsensors=0A=
}=0A=
=0A=
do_install() {=0A=
        oe_runmake user_install DESTDIR=3D${D}=0A=
        install -m 0755 ${S}/prog/init/lm_sensors.init ${D}/${sysconfdir}/i=
nit.d/lm_sensors.init=0A=
=0A=
        ln -sf ../init.d/lm_sensors.init ${D}${sysconfdir}/rcS.d/S90lm_sens=
ors.init=0A=
}=0A=
=0A=
pkr_postinst_lmsensors-scripts() {=0A=
        #!/bin/sh -e=0A=
        if [ x"$D" =3D "x" ]; then=0A=
                # Actions to carry out on the device go here=0A=
                yes | sensors-detect=0A=
        else=0A=
                exit 1=0A=
        fi=0A=
}=0A=
=0A=
PACKAGES =3D+ "lmsensors-sensors lmsensors-sensors-dbg"=0A=
PACKAGES =3D+ "lmsensors-scripts"=0A=
=0A=
FILES_lmsensors-scripts =3D "${bindir}/*.pl ${bindir}/ddcmon ${sbindir}/fan=
control* ${sbindir}/pwmconfig ${sbindir}/sensors-detect ${sysconfdir}/init.=
d/lm_sensors.init"=0A=
RDEPENDS_lmsensors-scripts +=3D "lmsensors-sensors perl bash perl-modules"=
=0A=
=0A=
FILES_lmsensors-sensors =3D "${bindir}/sensors ${sysconfdir}"=0A=
FILES_lmsensors-sensors-dbg +=3D "${bindir}/.debug/sensors"=0A=
---------------------------------------------------------------------------=
---------------------------------------------------------------------=0A=
=0A=
However, I get the following errors when building:=0A=
=0A=
---------------------------------------------------------------------------=
---------------------------------------------------------------------=0A=
ERROR: Function failed: do_install (see /opt/yocto/poky/build/tmp/work/penr=
yn-poky-linux/lmsensors-apps-3.3.2-r1/temp/log.do_install.9255 for further =
information)=0A=
ERROR: Logfile of failure stored in: /opt/yocto/poky/build/tmp/work/penryn-=
poky-linux/lmsensors-apps-3.3.2-r1/temp/log.do_install.9255=0A=
Log data follows:=0A=
| DEBUG: Executing shell function do_install=0A=
| NOTE: make -j 4 LINUX=3D/opt/yocto/poky/build/tmp/sysroots/penryn/usr/src=
/kernel EXLDFLAGS=3D-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed MACHINE=
=3Dx86_64 PREFIX=3D/usr CC=3Dx86_64-poky-linux-gcc    -m64  -march=3Dcore2 =
-msse3 -mtune=3Dgeneric -mfpmath=3Dsse --sysroot=3D/opt/yocto/poky/build/tm=
p/sysroots/penryn AR=3Dx86_64-poky-linux-ar user_install DESTDIR=3D/opt/yoc=
to/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image=0A=
| mkdir -p /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-=
3.3.2-r1/image/usr/lib /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lms=
ensors-apps-3.3.2-r1/image/usr/include/sensors /opt/yocto/poky/build/tmp/wo=
rk/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/man/man3 /opt/yocto/=
poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/man=
/man5=0A=
| mkdir -p /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-=
3.3.2-r1/image/usr/sbin /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lm=
sensors-apps-3.3.2-r1/image/usr/man/man8=0A=
| mkdir -p /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-=
3.3.2-r1/image/usr/sbin /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lm=
sensors-apps-3.3.2-r1/image/usr/man/man8=0A=
| mkdir -p /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-=
3.3.2-r1/image/usr/bin /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lms=
ensors-apps-3.3.2-r1/image/usr/man/man1=0A=
| install -m 755 prog/detect/sensors-detect /opt/yocto/poky/build/tmp/work/=
penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/sbin=0A=
| install -m 755 prog/pwm/fancontrol prog/pwm/pwmconfig /opt/yocto/poky/bui=
ld/tmp/work/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/sbin=0A=
| install -m 755 prog/sensors/sensors /opt/yocto/poky/build/tmp/work/penryn=
-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/bin=0A=
| install -m 644 lib/libsensors.a /opt/yocto/poky/build/tmp/work/penryn-pok=
y-linux/lmsensors-apps-3.3.2-r1/image/usr/lib=0A=
| install -m 644 prog/pwm/fancontrol.8 prog/pwm/pwmconfig.8 /opt/yocto/poky=
/build/tmp/work/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/man/man=
8=0A=
| install -m 644 prog/sensors/sensors.1 /opt/yocto/poky/build/tmp/work/penr=
yn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/man/man1=0A=
| install -m 644 prog/detect/sensors-detect.8 /opt/yocto/poky/build/tmp/wor=
k/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/man/man8=0A=
| mkdir -p /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-=
3.3.2-r1/image/etc /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsenso=
rs-apps-3.3.2-r1/image/etc/sensors.d=0A=
| if [ ! -e /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps=
-3.3.2-r1/image/etc/sensors3.conf ] ; then \=0A=
|   install -m 644 etc/sensors.conf.default /opt/yocto/poky/build/tmp/work/=
penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/etc/sensors3.conf ; \=0A=
| fi=0A=
| mkdir -p /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-=
3.3.2-r1/image/usr/sbin /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lm=
sensors-apps-3.3.2-r1/image/usr/man/man8=0A=
| mkdir -p /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-=
3.3.2-r1/image/usr/bin=0A=
| install -m 755 etc/sensors-conf-convert /opt/yocto/poky/build/tmp/work/pe=
nryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/bin=0A=
| install -m 755 prog/dump/isadump prog/dump/isaset /opt/yocto/poky/build/t=
mp/work/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/sbin=0A=
| install -m 755 lib/libsensors.so.4.3.2 /opt/yocto/poky/build/tmp/work/pen=
ryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/lib=0A=
| ln -sf libsensors.so.4.3.2 /opt/yocto/poky/build/tmp/work/penryn-poky-lin=
ux/lmsensors-apps-3.3.2-r1/image/usr/lib/libsensors.so.4=0A=
| if [ -e /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-3=
.3.2-r1/image/etc/modprobe.d/lm_sensors \=0A=
|      -a ! -e /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-a=
pps-3.3.2-r1/image/etc/modprobe.d/lm_sensors.conf ] ; then \=0A=
|   mv -f /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lmsensors-apps-3=
.3.2-r1/image/etc/modprobe.d/lm_sensors /opt/yocto/poky/build/tmp/work/penr=
yn-poky-linux/lmsensors-apps-3.3.2-r1/image/etc/modprobe.d/lm_sensors.conf =
; \=0A=
| fi=0A=
| ln -sf libsensors.so.4 /opt/yocto/poky/build/tmp/work/penryn-poky-linux/l=
msensors-apps-3.3.2-r1/image/usr/lib/libsensors.so=0A=
| install -m 644 lib/error.h lib/sensors.h /opt/yocto/poky/build/tmp/work/p=
enryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/include/sensors=0A=
| install -m 644 prog/dump/isadump.8 prog/dump/isaset.8 /opt/yocto/poky/bui=
ld/tmp/work/penryn-poky-linux/lmsensors-apps-3.3.2-r1/image/usr/man/man8=0A=
| install -m 644 lib/libsensors.3 /opt/yocto/poky/build/tmp/work/penryn-pok=
y-linux/lmsensors-apps-3.3.2-r1/image/usr/man/man3=0A=
| install -m 644 lib/sensors.conf.5 /opt/yocto/poky/build/tmp/work/penryn-p=
oky-linux/lmsensors-apps-3.3.2-r1/image/usr/man/man5=0A=
| ln -sf sensors.conf.5 /opt/yocto/poky/build/tmp/work/penryn-poky-linux/lm=
sensors-apps-3.3.2-r1/image/usr/man/man5/sensors3.conf.5=0A=
| *** Important notes:=0A=
| ***  * The libsensors configuration file (/etc/sensors3.conf) is never=0A=
| ***    overwritten by our installation process, so that you won't lose=0A=
| ***    your personal settings in that file. You still can get our latest=
=0A=
| ***    default config file in etc/sensors.conf.default and manually copy=
=0A=
| ***    it to /etc/sensors3.conf if you want. You will then want to=0A=
| ***    edit it to fit your needs again.=0A=
| ***  * The format of /etc/sensors3.conf changed with lm-sensors 3.0.0.=0A=
| ***    If you have a custom configuration file using the old format, you=
=0A=
| ***    can convert it using the sensors-conf-convert script. Otherwise ju=
st=0A=
| ***    overwrite your old configuration file with the new default one.=0A=
| ***  * As of lm-sensors 3.1.0, the default configuration file only=0A=
| ***    contains statements which do not depend on how chips are wired.=0A=
| ***    If you miss parts of the bigger configuration file that used to be=
=0A=
| ***    the default, copy the relevant parts from etc/sensors.conf.eg to=
=0A=
| ***    /etc/sensors3.conf.=0A=
| install: cannot create regular file `/opt/yocto/poky/build/tmp/work/penry=
n-poky-linux/lmsensors-apps-3.3.2-r1/image//etc/init.d/lm_sensors.init': No=
 such file or directory=0A=
| ERROR: Function failed: do_install (see /opt/yocto/poky/build/tmp/work/pe=
nryn-poky-linux/lmsensors-apps-3.3.2-r1/temp/log.do_install.9255 for furthe=
r information)=0A=
ERROR: Task 387 (/opt/yocto/poky/meta-intel/meta-penryn/recipes-extended/lm=
_sensors/lmsensors-apps_3.3.2.bb, do_install) failed with exit code '1'=0A=
---------------------------------------------------------------------------=
---------------------------------------------------------------------=0A=
=0A=
Can anyone tell me how I can get the lm_sensors.init script installed into =
/etc/init.d?  I don't understand why when I follow the same syntax as the i=
nitscripts recipe, this fails.=0A=
=0A=
As a sidenote, I would also like to get a /data directory installed as part=
 of the rootfs via a recipe (as a mountpoint for a secondary disk).  How is=
 that typically done?=0A=
=0A=
Thanks!=0A=
Jonathan=0A=
=0A=
________________________________________=0A=
From: Marc Ferland [marc.ferland@gmail.com] on behalf of Marc Ferland [ferl=
andm@sonatest.com]=0A=
Sent: Tuesday, October 16, 2012 12:27=0A=
To: Jonathan Haws=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] lm-sensors not available as a package?=0A=
=0A=
Jonathan Haws <Jonathan.Haws@sdl.usu.edu> writes:=0A=
=0A=
> I got the oe-classic recipe building with the latest version of=0A=
> lm-sensors.  However, I am now running into perl issues - when I try=0A=
> to run sensors-detect, I get errors with the @INC paths - strict.pm is=0A=
> not found anywhere on the filesystem.  I went back to see if I had=0A=
> left out perl support, but it was present and included.  Where is=0A=
> strict.pm?  How can I get that in my image?=0A=
>=0A=
> Thanks!=0A=
>=0A=
You might want to add 'perl-modules' to RDEPENDS_lmsensors-scripts.=0A=
=0A=
Marc=0A=

