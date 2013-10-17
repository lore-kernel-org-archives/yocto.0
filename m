Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A29BE01684
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 11:33:06 -0700 (PDT)
Received: by mail-pb0-f51.google.com with SMTP id jt11so2697799pbb.10
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 11:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=ZPe+q5rp9KyfONXAYGmV9kUVEtK8v+qlhj2u9F5uqbA=;
	b=drhY58ssv8sICd/1BfTolqnc0wm7UnvDMfwLzPImO7DHC7yoInz9ZdDF7l8Bvw9n2T
	La7KcS2eDnFhMYGHm9rsRu3DMc+bs2lpsZJPxph6DlMqI7H78IDeDL5XHjSTkRThRhEn
	ZPWdBntPfxFAryNzKmKhf2et8ejVXQHmGzczPQqLHvxZNLAsvasFxEZCIbyOzxDbrUcQ
	E6J9EvYfzcpQ+PeT4mBRuHk9yXswWL34HkZFD0YQ83QrjSVzCcrTu7j3gvuHNvX1dija
	VT2zU9EevXCaU9RS+mSf62u9IxkUIMgwk2QgB65vKuuXdXggqLdfGY+ip8el7Gk/IZsd
	pwmQ==
X-Received: by 10.66.189.98 with SMTP id gh2mr10764329pac.60.1382034786430;
	Thu, 17 Oct 2013 11:33:06 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	zq10sm116281192pab.6.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 17 Oct 2013 11:33:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwz6nzqUicXUPJR=4VFTuApCDv8F4ij-pRDsveDAoiU=-q19Q@mail.gmail.com>
Date: Thu, 17 Oct 2013 11:33:06 -0700
Message-Id: <F1961D15-5BB9-4609-BD52-2DBBB14783EA@gmail.com>
References: <CANwz6nz_dzPR9L2i39BXCSTHgWK+kLGs6ie-y806rBi-VMTcSw@mail.gmail.com>
	<6C2F2091-CD52-4D83-AE39-80B5B5E32C62@gmail.com>
	<CANwz6nztSJxx5NmTqy_D2jSDgKeFRT0y7Jj4Z6QjenCjTbvZug@mail.gmail.com>
	<CANwz6nzqUicXUPJR=4VFTuApCDv8F4ij-pRDsveDAoiU=-q19Q@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-xilinx
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Oct 2013 18:33:07 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Oct 17, 2013, at 8:05 AM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> Hello,
> I got the following error.
> DEBUG: Executing shell function do_compile
> NOTE: make -C =
/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zyn=
q7/usr/src/kernel/tools/perf =
O=3D/home/vidal/POKY/build101613_zedboard/poky/build/tmp/work/zedboard_zyn=
q7-poky-linux-gnueabi/perf/1.0-r8/perf-1.0 =
CROSS_COMPILE=3Darm-poky-linux-gnueabi- ARCH=3Darm =
CC=3Darm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork =
-mfloat-abi=3Dsoftfp -mfpu=3Dneon =
--sysroot=3D/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/=
zedboard-zynq7 AR=3Darm-poky-linux-gnueabi-ar perfexecdir=3D/usr/lib/perf =
NO_GTK2=3D1 NO_DWARF=3D1 prefix=3D/usr bindir=3D/usr/bin =
sharedir=3D/usr/share sysconfdir=3D/etc =
perfexecdir=3D/usr/lib/perf/perf-core ETC_PERFCONFIG=3D../etc =
sharedir=3Dshare mandir=3Dshare/man infodir=3Dshare/info all
>     CHK -fstack-protector-all
>     CHK -Wstack-protector
>     CHK -Wvolatile-register-var
>     CHK bionic
>     CHK libelf
>     CHK libdw
> make: Entering directory =
`/home/vidal/POKY/build101613_zedboard/poky/build/tmp/sysroots/zedboard-zy=
nq7/usr/src/kernel/tools/perf'
> Makefile:554: No libdw.h found or old libdw.h found or elfutils is =
older than 0.138, disables dwarf support. Please install new =
elfutils-devel/libdw-dev
>     CHK libunwind
> Makefile:570: No libunwind found, disabling post unwind support. =
Please install libunwind-dev[el] >=3D 0.99
> I installed libunwind-devel-1.0.1-5.fc18.x86_64
> Is this a zedboard-zynq specific error?  Is this an error in building =
the kernel?
>  I did not see this when building for the beagleboard. I installed =
libunwind-devel-1.0.1-5.fc18.x86_64
> I removed the package libunwind-devel-1.0.1-5.fc18.x86_64 since =
nothing improved with the package installed.

You were barking up the wrong tree :) The problem is missing dependency =
for target package not for host package.
whichever package is failing, add elfutils to DEPENDS section of the =
recipe and it should fix it.

> I am in the process of running a clean build after  all repository =
were loaded in clean folder.
> I appreciate any and all help.
> Regards
>=20
>=20
> On Wed, Oct 16, 2013 at 5:06 PM, Edward Vidal =
<vidal.develone@gmail.com> wrote:
> Hello Khem,
> Thanks for the help after modifying my local.conf=20
> MACHINE ?=3D "zedboard-zynq7"
> My build "MACHINE=3Dzedboard-zynq7 bitbake core-image-sato" is in the =
process now 295 of 5076 tasks
> should take a short time to complete.
> regards=20
>=20
>=20
>=20
> On Wed, Oct 16, 2013 at 4:45 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Oct 16, 2013, at 2:57 PM, Edward Vidal <vidal.develone@gmail.com> =
wrote:
>=20
> > Hello,
> > I built a zedboard core-image-sato on 09/21/13 with meta-xilinx at =
that time I had the following folders.
> >
> > meta-kc705
> > meta-zc702
> > meta-zedboard
> >
> > Build Configuration:
> > BB_VERSION        =3D "1.19.1"
> > BUILD_SYS         =3D "x86_64-linux"
> > NATIVELSBSTRING   =3D "Fedora-18"
> > TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> > MACHINE           =3D "zedboard"
> > DISTRO            =3D "poky"
> > DISTRO_VERSION    =3D "1.4+snapshot-20130921"
> > TUNE_FEATURES     =3D " armv7a vfp neon zynq"
> > TARGET_FPU        =3D "vfp-neon"
> > meta
> > meta-yocto        =3D =
"(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
> > meta-xilinx
> > meta-kc705
> > meta-zc702
> > meta-zedboard     =3D =
"master:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
> > meta-yocto-bsp    =3D =
"(nobranch):3dee534f1e25109e0bdb681de0746c336f4b8840"
> >
> > With the dora release I did a new clone of =
git://git.yoctoproject.org/meta-xilinx
> > now I do not see
> > meta-kc705
> > meta-zc702
> > meta-zedboard
> >
> > When I execute MACHINE=3Dzedboard bitbake core-image-sato
> > ERROR:  OE-core's config sanity checker detected a potential =
misconfiguration.
> >     Either fix the cause of this error or at your own risk disable =
the checker (see sanity.conf).
> >     Following is the list of potential problems / advisories:
> >
> >     Please set a valid MACHINE in your local.conf or environment
> >
> > ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> > In my local.conf I have the following.
> >
> > MACHINE ?=3D "zedboard"
> >
> > bblayers.conf
> > # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> > # changes incompatibly
> > LCONF_VERSION =3D "6"
> >
> > BBPATH =3D "${TOPDIR}"
> > BBFILES ?=3D ""
> >
> > BBLAYERS ?=3D " \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-xilinx \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto-bsp \
> >   "
> > BBLAYERS_NON_REMOVABLE ?=3D " \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta \
> >   /home/vidal/POKY/build101613_zedboard/poky/meta-yocto \
> >   "
> > Any help will be appreciated.
> > Regards
>=20
> it seems like layer went thru some restructuring e.g. see
> commit d9617006376d73e37f1db17857ee06c24e6b7c03
> Author: Nathan Rossi <nathan.rossi@xilinx.com>
> Date:   Fri Aug 2 12:41:14 2013 +1000
>=20
>     meta-*: Remove deprecated sublayers
>=20
>     * The machines supported in the sublayer BSPs are now supported in =
the base
>       meta-xilinx layer, these sublayers are no longer required.
>     * Relevant documentation has also been relocated into =
meta-xilinx/docs/*.
>=20
>=20
>=20
> So may be zedboard -> zedboard-zynq7
>=20
>=20
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20


