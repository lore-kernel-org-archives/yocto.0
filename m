Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AB084C80BCF
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 02:58:26 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 00:58:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,317,1291622400"; d="scan'208";a="696366180"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2011 00:58:14 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 13 Jan 2011 16:57:05 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 13 Jan 2011 16:57:04 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "rdelaet@mri-inc.net" <rdelaet@mri-inc.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 13 Jan 2011 16:57:03 +0800
Thread-Topic: [yocto] Building all packages using the released toolchain
Thread-Index: Acuy2BtxL5Aa2xYZTgCbM30U9zcjhwAJyA7w
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D7895E5E8@shsmsx502.ccr.corp.intel.com>
References: <1294881695.3219.20.camel@laptop>
	<625BA99ED14B2D499DC4E29D8138F1504D7895E2F4@shsmsx502.ccr.corp.intel.com>
	<1294891924.3219.86.camel@laptop>
In-Reply-To: <1294891924.3219.86.camel@laptop>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Building all packages using the released toolchain
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
X-List-Received-Date: Thu, 13 Jan 2011 08:58:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Rick De Laet [mailto:rdelaet@mri-inc.net]
> Sent: Thursday, January 13, 2011 12:12 PM
>=20
> On Thu, 2011-01-13 at 10:32 +0800, Tian, Kevin wrote:
> > > From: Rick De Laet
> > > Sent: Thursday, January 13, 2011 9:22 AM
> > >
> > > I am new to yocto, I have installed yacto on Fedora 12.
> > >
> > > I was trying to follow the steps in the getting started guide and
> > > was trying a build with "bitbake make-native" and got some build
> > > errors in "elfutils", but it was using the compiler in my Fedora
> > > distribution.  I
> >
> > The make-native is required on Fedora14. So you don't need that step
> > and Instead you could directly:
> > 	Bitbake poky-image-sato
>=20
> Ok. I was not sure if it was specific to Fedora 14 or not.  The Quick Sta=
rt
> mentions Fedora 14 "or another distribution with GNU make 3.82"
> which is what I have on Fedora 12, so I thought this step would be requir=
ed.
>=20
>=20
> Why is this only required on Fedora 14?

Yes, it's make 3.82 related. My gut-feeling is that FC12 should have an old=
er version
which ends up wrong here. :-)

>=20
> BTW, I did run Bitbake poky-image-sato, and I got a similar error to belo=
w, but
> in a different directory
>=20
> >
> > Btw, could you post your errors?
>=20
> My gcc version is 4.4.4, the latest available from yum update for Fedora =
12.
> My poky-4.0-build/conf/local.conf is attached.

OK, I remembered that there're a series of patches to make FC14 happy after=
 Laverne
release:
	https://lists.yoctoproject.org/pipermail/poky/2010-December/001023.html

So it's better you can try the poky master for your experiment here:
	git://git.pokylinux.org/poky.git

Thanks
Kevin

>=20
> My error building the elfutils directory is shown below:
>=20
> | ccache gcc -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wextra
> -fgnu89-inline -Wformat=3D2
> -isystem/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/include -O2
> -rdynamic -L/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-O1 -o ld ld.o ldgeneric.o ldlex.o ldscript.o symbolhash.o sectionhas=
h.o
> versionhash.o ../libebl/libebl.a ../libelf/libelf.so ../lib/libeu.a -ldl
> | ccache gcc -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wextra
> -fgnu89-inline -Wformat=3D2
> -isystem/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/include -O2
> -Wl,-rpath-link,../libelf:../libdw
> -L/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-O1 -o elflint
> elflint.o ../libebl/libebl.a ../libelf/libelf.so ../lib/libeu.a  -ldl
> | ldgeneric.o: In function `ld_generic_open_outfile':
> | ldgeneric.c:(.text+0x8f62): warning: the use of `mktemp' is dangerous,
> better use `mkstemp'
> | ./ld: invalid option -- 'p'
> | Try `ld --help' or `ld --usage' for more information.
> | collect2: ld returned 64 exit status
> | make[2]: *** [elflint] Error 1
> | ccache gcc -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wextra
> -fgnu89-inline -Wformat=3D2
> -isystem/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/include -O2
> -Wl,-rpath-link,../libelf:../libdw
> -L/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath-link,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-rpath,/lfs/poky/poky-4.0-build/tmp/sysroots/i686-linux/usr/lib
> -Wl,-O1 -o findtextrel
> findtextrel.o ../libdw/libdw.so ../libelf/libelf.so
> | ./ld: invalid option -- 'p'
> | Try `ld --help' or `ld --usage' for more information.
> | collect2: ld returned 64 exit status
> | make[2]: *** [findtextrel] Error 1
> | rm i386_ld.o
> | make[2]: Leaving directory
> `/lfs/poky/poky-4.0-build/tmp/work/i686-linux/elfutils-native-0.148-r1/el=
futils-0.
> 148/src'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/lfs/poky/poky-4.0-build/tmp/work/i686-linux/elfutils-native-0.148-r1/el=
futils-0.
> 148'
> | make: *** [all] Error 2
> | FATAL: oe_runmake failed
> | ERROR: Task failed: ('function do_compile failed',
> '/lfs/poky/poky-4.0-build/tmp/work/i686-linux/elfutils-native-0.148-r1/te=
mp/log
> .do_compile.26312')
> NOTE: package elfutils-native-0.148-r1: task do_compile: Failed
> ERROR: Task 283
> (virtual:native:/lfs/poky/poky-laverne-4.0/meta/recipes-devtools/elfutils=
/elfutil
> s_0.148.bb, do_compile) failed with 1
>=20
>=20
> >
> > For native packages, yes the host compiler from your distribution is ex=
pected
> btw.
> >
> > > have also downloaded the toolchain in /opt/poky, and manually reran
> > > configure in the elfutils to use the compilers in /opt/poky and it
> > > built fine.
> > >
> > > What config changes do I have to make so that bitbake builds
> > > everything using the toolchain compilers rather than the default
> > > gcc?  (i.e have it run each configure script so that it specifies
> > > the toolchain compiler rather than use the default compiler)
> > >
> > > I did run the environment script
> > >
> > > 	/opt/poky/environment-setup-i586-poky-linux
> > >
> > > but apparently more is required
> > >
> >
> > This makes me a bit confused what you're tempting to do. Did you try
> > to build a complete sato image, or want to use pre-built image and
> > downloard toolchain to develop application? For the former you don't
> > need the later /opt/poky stuff. For the latter you don't need build
> > any native packages since all the toolchains are already there.
>=20
> Long term what I want to do is build an embedded linux system from scratc=
h to
> run on our own hardware.
>=20
> I only found out about yacto today through searching around the Intel EDC=
 web
> site.  We have the Intel Atom based eval board (EG20T) with Tunnel Creek =
and
> saw today that this is a newly supported platform in yocto so I was very =
anxious
> to try it out.  I thought it would be best to first try and build a stand=
ard
> configuration first just to learn the
> tool, so short term, yes, I want to build the complete sato image.   We
> are building our own Intal Atom/ Tunnel Creek embedded platform and on th=
e
> surface it looks like yacto is a perfect fit.  Trying to decide now if co=
mmercial
> linux is required or if something like yocto will work.
>=20
> For developing embedded products I like the idea of having an "isolated"
> toolchain so I can built a consistent product, regardless of what updates=
 I do to
> my laptop distribution.  So is there a way to configure yocto to use the
> /opt/poky toolchain rather than the fedora tools?
>=20
> >
> > Thanks
> > Kevin s
>=20


