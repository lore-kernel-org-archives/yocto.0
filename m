Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7649E011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 10:53:55 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Tue, 16 Oct 2012 11:53:55 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Tue, 16 Oct 2012 11:53:51 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Tue, 16 Oct 2012 11:53:54 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Marc Ferland <ferlandm@sonatest.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] lm-sensors not available as a package?
Thread-Index: AQHNq8T7915XsixcRCmSxVny1UBT2pe8NfQa
Date: Tue, 16 Oct 2012 17:53:53 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D961A0A@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
	<1643755.JoZOaIgQYA@helios>,<87vceal3m1.fsf@sonatest.com>
In-Reply-To: <87vceal3m1.fsf@sonatest.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Oct 2012 17:53:51.0881 (UTC)
	FILETIME=[33C20F90:01CDABC7]
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
X-List-Received-Date: Tue, 16 Oct 2012 17:53:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I got the oe-classic recipe building with the latest version of lm-sensors.=
  However, I am now running into perl issues - when I try to run sensors-de=
tect, I get errors with the @INC paths - strict.pm is not found anywhere on=
 the filesystem.  I went back to see if I had left out perl support, but it=
 was present and included.  Where is strict.pm?  How can I get that in my i=
mage?=0A=
=0A=
Thanks!=0A=
=0A=
FYI, here is what the recipe looks like.  It still gives a man page warning=
, but I am ignoring that for now.=0A=
=0A=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
------=0A=
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
}=0A=
=0A=
PACKAGES =3D+ "lmsensors-sensors lmsensors-sensors-dbg"=0A=
PACKAGES =3D+ "lmsensors-scripts"=0A=
=0A=
FILES_lmsensors-scripts =3D "${bindir}/*.pl ${bindir}/ddcmon ${sbindir}/fan=
control* ${sbindir}/pwmconfig ${sbindir}/sensors-detect"=0A=
RDEPENDS_lmsensors-scripts +=3D "lmsensors-sensors perl bash"=0A=
=0A=
FILES_lmsensors-sensors =3D "${bindir}/sensors ${sysconfdir}"=0A=
FILES_lmsensors-sensors-dbg +=3D "${bindir}/.debug/sensors"=0A=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
------=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Marc Ferland [ferlandm@sonatest.com]=0A=
Sent: Tuesday, October 16, 2012 11:37=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] lm-sensors not available as a package?=0A=
=0A=
Paul Eggleton <paul.eggleton@linux.intel.com> writes:=0A=
=0A=
> On Tuesday 16 October 2012 16:00:01 Jonathan Haws wrote:=0A=
>> I would be surprised if a recipe for lm-sensors has not already been=0A=
>> created, however I cannot find one.  Can someone point me in the right=
=0A=
>> direction?=0A=
>>=0A=
>> All I can find is a sysstat package that I can include via=0A=
>> IMAGE_INSTALL_append, however I cannot see how I can get the same=0A=
>> information out of it that lm-sensors gives me.=0A=
>>=0A=
>> Has anyone got lm-sensors included in their image?  If so, can you share=
 the=0A=
>> recipe?=0A=
>=0A=
> Unless anyone else pipes up, my local index suggests that this is somethi=
ng=0A=
> that hasn't yet been brought up-to-date from OE-Classic.=0A=
>=0A=
> http://git.openembedded.org/openembedded/tree/recipes/lm_sensors=0A=
>=0A=
> Assuming nothing else is available you should be able to use this as a ba=
se.=0A=
> There is a brief guide on the main things that need to be changed when=0A=
> updating a recipe from OE-Classic here:=0A=
>=0A=
> http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core=0A=
>=0A=
> If you do come up with an updated recipe we'd love to have it added to me=
ta-oe=0A=
> or some other layer ;)=0A=
>=0A=
I have a lmsensors recipe somewhere around here. I'll dust it off and=0A=
post it to the oe-core mailing list.=0A=
=0A=
Marc=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

