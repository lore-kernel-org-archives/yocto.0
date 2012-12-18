Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A063BE0034C
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 09:54:29 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Dec 2012 09:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,309,1355126400"; d="scan'208";a="235941023"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 18 Dec 2012 09:54:04 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 18 Dec 2012 09:54:03 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.179]) with mapi id
	14.01.0355.002; Tue, 18 Dec 2012 09:54:02 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Sean Liming <sean.liming@annabooks.com>, 'Mark Hatle'
	<mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] IMHO, cross-compile/toolchain examples should use
	non-x86 arches
Thread-Index: AQHN3G4FLJueJntkgUiFTNyi+qb/A5gdMABQgAIpqoD//3ulcA==
Date: Tue, 18 Dec 2012 17:53:59 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B6DEE3@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212161148480.17740@oneiric>
	<000601cddbe0$b587de30$20979a90$@annabooks.com>
	<50CF3EBD.3040101@windriver.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6D866@ORSMSX101.amr.corp.intel.com>
	<005101cddd46$36d09160$a471b420$@annabooks.com>
In-Reply-To: <005101cddd46$36d09160$a471b420$@annabooks.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: IMHO, cross-compile/toolchain examples should use non-x86 arches
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
X-List-Received-Date: Tue, 18 Dec 2012 17:54:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Sean,

Your summary is correct as far as current ADT installer's capabilities goes=
.  I think in the ADT manual we talked about besides using ADT installer to=
 setup an application cross development environment, user can also using a =
toolchain tarball.  This is discussed in another email thread atm.  Origina=
lly the toolchain tarball sysroot is pretty much canned so very limited for=
 user to customize to match their target images.  For 1.3, Mark has added t=
he capability to generate the toolchain tarball that matching the target im=
age via bitbake -c populate_sdk image.  As far as eclipse plug-in goes, you=
 can specify you desired toolchain and sysroot combination whether they're =
installed via adt-installer or toolchain tarball.

BTW, one of the features that we will be working on for adt-installer is to=
 make it base on sstate instead of the current opkg and ipk adt-repo.  In t=
his way, we eliminate the dependency on particular ipk package format also,=
 gives user the flexibility to customized their sysroot instead of the the =
predefined images rootfs.

Thanks,
Jessica
-----Original Message-----
From: Sean Liming [mailto:sean.liming@annabooks.com]
Sent: Tuesday, December 18, 2012 9:36 AM
To: Zhang, Jessica; 'Mark Hatle'; yocto@yoctoproject.org
Subject: RE: [yocto] IMHO, cross-compile/toolchain examples should use non-=
x86 arches

Jessica and Mark,

Thank you for the responses. It appears that there is another thread on the=
 same subject. Let me feedback what I am seeing and hearing:

The quick start guide
(http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs=
.
html) and various presentation slides showing the Poky Work Flow / Yocto Pr=
oject Development Environment show an output of the image and Application D=
evelopment SDK. When I include the option to build the SDK in a Yoicto1.3 D=
anny build, I see in the /../tmp/deploy/sdk is the ADT installer. To me the=
 ADT installer installs the toolchain and the rootfs to build applications.
Also, the ADT installer only installs a rootfs based on pre-set images like=
 core-image-sato, core-image-minimal, etc., and doesn't address a custom ro=
otfs that may have more or less support than the standard images. The Eclip=
se plug in adds the capability to Eclipse to link to the toolchain and root=
fs installed by the ADT installer.

Does this sound correct?

Regards,

Sean Liming
Owner
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Zhang, Jessica
> Sent: Monday, December 17, 2012 8:40 AM
> To: Mark Hatle; yocto@yoctoproject.org
> Subject: Re: [yocto] IMHO, cross-compile/toolchain examples should use
> non-x86 arches
>
> Or in Yocto Project context, we kind of use ADT more inclusive that
referring
> what Mark talked about SDK, the eclipse plug-in and other developers
tools.
> And we don't call out SDK that much.
>
>  --Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Mark Hatle
> Sent: Monday, December 17, 2012 7:48 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] IMHO, cross-compile/toolchain examples should use
> non-x86 arches
>
> On 12/16/12 4:57 PM, Sean Liming wrote:
> >
> > My 2c (USD) is for clarity on ADT vs. SDK vs. Toolchain.
>
> The biggest clarify problem I've seen is the terms being intermingled.
There
> are clear definitions for each.
>
> Toolchain, the compiler and related tools that enable compiling
> software
for
> a given target.
>
> SDK - Software Development Kit - On OE-Core this purpose of this is to
> enable developing software to be run on a specific target environment,
> generally also constructed from OE-Core.  The SDK consists of three
primary
> components:
>    1) environment setup files - these configure the compilation
environment
> with the right settings
>    2) nativesdk software - these are applications that run on the
> -host-
system
> to assist in compiling software for the target (this includes the
> target
> toolchain.)
>    3) target sysroot - The sysroot is the collection of libraries,
> headers
and
> assorted items that are compiled for the target.  A sysroot is setup
> in a
similar
> fashion as a target's root filesystem.
>
> ADT - Application Developer Tool - This is an Eclipse component that
> can
use
> the SDK, generated by OE-Core, to enable application development
> within the Eclipse framework.  (I may be slightly wrong on this item,
> as people
have
> told me in the past there are command line parts to the ADT.... but
> the
ADT
> itself is -not- the
> SDK.)
>
> --Mark
>
> > Regards,
> >
> > Sean Liming
> > Owner
> > Annabooks
> > Tel: 714-970-7523 / Cell: 858-774-3176
> >
> >> -----Original Message-----
> >> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >> bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> >> Sent: Sunday, December 16, 2012 8:55 AM
> >> To: Yocto discussion list
> >> Subject: [yocto] IMHO, cross-compile/toolchain examples should use
> >> non-
> >> x86 arches
> >>
> >>
> >>    a general preference on my part, but i think it would be useful
> >> if any
> > yocto
> >> docs that are discussing toolchains or cross-compilation or the
> >> like use
> >> *non*-x86 architectures to get the point across.
> >>
> >>    for example, consider the current application developer's guide.
> >> part of it uses, as an example, the toolchain installer
> > poky-eglibc-x86_64-i586-
> >> toolchain-gmae-1.4.sh.  while this works just fine, of course, what
> >> it
> > does is
> >> potentially co-mingle both the dev host content and target host
> >> content, making it harder than necessary for the reader to draw a
> >> clear distinction between the two.
> >>
> >>    if any example related to compilation or a toolchain involves,
> >> say, an
> > *arm*
> >> target, then it's *immediately* obvious (using the "file"
> >> command) whether something belongs on the dev host or on the target.
> >>
> >>    also, if you're using x86 for both dev content and target
> >> content, you
> > run
> >> the risk of an example working by accident since you're picking up
> > natively-
> >> installed tools when you shouldn't be.  if you use a non-x86 arch,
> >> there's
> > little
> >> chance of that happening.
> >>
> >>    just my $0.02 (Cdn).
> >>
> >> rday
> >>
> >>
> >> --
> >>
> >>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> Robert P. J. Day                                 Ottawa, Ontario,
CANADA
> >>                          http://crashcourse.ca
> >>
> >> Twitter:
http://twitter.com/rpjday
> >> LinkedIn:
http://ca.linkedin.com/in/rpjday
> >>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


