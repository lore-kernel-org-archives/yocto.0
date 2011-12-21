Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2841E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 07:35:54 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Dec 2011 07:35:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49426040"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 07:35:54 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Wed, 21 Dec 2011 07:35:53 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 21 Dec 2011 07:35:50 -0800
Thread-Topic: [yocto] [bernard 1/1] binutils-2.21: fix building on suse 11.4
Thread-Index: Acy/tgyr+T6HReicSjK1Ac+SgEVg9QAQAgeg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94E78681DE@orsmsx504.amr.corp.intel.com>
References: <cover.1324452915.git.nitin.a.kamble@intel.com>
	<6bd4afcd3f351bb92e2573d487b135c965fce0aa.1324452915.git.nitin.a.kamble@intel.com>
	<20111221075624.GC12791@jama.jama.net>
In-Reply-To: <20111221075624.GC12791@jama.jama.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [bernard 1/1] binutils-2.21: fix building on suse 11.4
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
X-List-Received-Date: Wed, 21 Dec 2011 15:35:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Martin Jansa [mailto:martin.jansa@gmail.com]
> Sent: Tuesday, December 20, 2011 11:56 PM
> To: Kamble, Nitin A
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [bernard 1/1] binutils-2.21: fix building on suse
> 11.4
>=20
> On Tue, Dec 20, 2011 at 11:37:03PM -0800, nitin.a.kamble@intel.com
> wrote:
> > From: Nitin Kamble <nitin@yocto-hm1.jf.intel.com>
> >
> > x86_64 opensuse 11.4 has bintuils version 2.21, and when this
> > binutils_2.21 recipe is built for x86_64 target then, the invocation
> > of distro gcc fails with errors like this:
> >
> > | /usr/lib64/gcc/x86_64-suse-linux/4.5/../../../../x86_64-suse-
> linux/b
> > | in/as: symbol lookup error:
> > | /usr/lib64/gcc/x86_64-suse-linux/4.5/../../../../x86_64-suse-
> linux/b
> > | in/as: undefined symbol: concat
> > | make[2]: *** [sysinfo.o] Error 1
> >
> > The issue rootcaused as incompatible LD_LIBRARY_PATH while running
> the distro gcc.
> >
> > This commit fixes the issue by clearing the LD_LIBRARY_PATH for
> distro
> > gcc (CC_FOR_BUILD)
> >
> > This Fixes bug: [YOCTO #1833]
>=20
> FWIW: I see the same issue with binutils-2.22 and oe-core master when
> building qemux86-64 on gentoo.
>=20
Good to know, the same fix should fix the binutils-2.22 build on gentoo. Ca=
n you please test and report?

Thanks,
Nitin

> > Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> > ---
> >  .../binutils/binutils-cross-canadian_2.21.bb       |    2 +-
> >  .../binutils/binutils-crosssdk_2.21.bb             |    2 +-
> >  meta/recipes-devtools/binutils/binutils.inc        |    2 +-
> >  meta/recipes-devtools/binutils/binutils_2.21.bb    |    2 +-
> >  4 files changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git
> > a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
> > b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
> > index 7dad2a6..e91e7dc 100644
> > --- a/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
> > +++ b/meta/recipes-devtools/binutils/binutils-cross-canadian_2.21.bb
> > @@ -1,3 +1,3 @@
> >  require binutils_${PV}.bb
> >  require binutils-cross-canadian.inc
> > -PR =3D "r0"
> > +PR =3D "r1"
> > diff --git a/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
> > b/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
> > index 0d6efff..21289cd 100644
> > --- a/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
> > +++ b/meta/recipes-devtools/binutils/binutils-crosssdk_2.21.bb
> > @@ -4,7 +4,7 @@ inherit crosssdk
> >
> >  PROVIDES =3D "virtual/${TARGET_PREFIX}binutils-crosssdk"
> >
> > -PR =3D "r0"
> > +PR =3D "r1"
> >
> >  do_configure_prepend () {
> >  	sed -i 's#/usr/local/lib /lib /usr/lib#${SDKPATHNATIVE}/lib
> > ${SDKPATHNATIVE}/usr/lib /usr/local/lib /lib /usr/lib#'
> > ${S}/ld/configure.tgt diff --git
> > a/meta/recipes-devtools/binutils/binutils.inc
> > b/meta/recipes-devtools/binutils/binutils.inc
> > index d9e859e..1178e0c 100644
> > --- a/meta/recipes-devtools/binutils/binutils.inc
> > +++ b/meta/recipes-devtools/binutils/binutils.inc
> > @@ -71,7 +71,7 @@ export RANLIB_FOR_TARGET =3D "${TARGET_PREFIX}ranlib"
> >  export CC_FOR_HOST =3D "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}"
> >  export CXX_FOR_HOST =3D "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}"
> >
> > -export CC_FOR_BUILD =3D "${BUILD_CC}"
> > +export CC_FOR_BUILD =3D "LD_LIBRARY_PATH=3D ${BUILD_CC}"
> >  export CPP_FOR_BUILD =3D "${BUILD_CPP}"
> >  export CFLAGS_FOR_BUILD =3D "${BUILD_CFLAGS}"
> >
> > diff --git a/meta/recipes-devtools/binutils/binutils_2.21.bb
> > b/meta/recipes-devtools/binutils/binutils_2.21.bb
> > index 270c720..f34b69d 100644
> > --- a/meta/recipes-devtools/binutils/binutils_2.21.bb
> > +++ b/meta/recipes-devtools/binutils/binutils_2.21.bb
> > @@ -1,6 +1,6 @@
> >  require binutils.inc
> >
> > -PR =3D "r0"
> > +PR =3D "r1"
> >
> >  LIC_FILES_CHKSUM=3D"\
> >
> > file://src-release;endline=3D17;md5=3D4830a9ef968f3b18dd5e9f2c00db2d35\
> > --
> > 1.7.6.4
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

