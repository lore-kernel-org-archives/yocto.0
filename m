Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9BD2E0034C
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 09:36:37 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qBIHaTNT001308; Tue, 18 Dec 2012 17:36:30 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Zhang, Jessica'" <jessica.zhang@intel.com>,
	"'Mark Hatle'" <mark.hatle@windriver.com>, <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1212161148480.17740@oneiric>	<000601cddbe0$b587de30$20979a90$@annabooks.com>	<50CF3EBD.3040101@windriver.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6D866@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B6D866@ORSMSX101.amr.corp.intel.com>
Date: Tue, 18 Dec 2012 09:36:27 -0800
Message-ID: <005101cddd46$36d09160$a471b420$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQKE64vHZTZaihch8F83pyFl5XI0ygGsT6mlAlwMPZ4B5qylLZaBOPtA
X-CSC: 0
X-CHA: v=2.0 cv=WpGcx6jv c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=6j2Cmf9_ExMA:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=ef6r1I4Mhy4A:10 a=iGHA9ds3AAAA:8 a=CEtC_dnCAAAA:8 a=JqEG_dyiAAAA:8
	a=jU4qhlNgAAAA:8 a=DCGUjhEUll1Gy5AlTlgA:9 a=CjuIK1q_8ugA:10
	a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=XDKM753qmDAA:10
	a=5LB9p0qODcCMjpOp:21
	a=XijxIDpzpxe18u7m:21 a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020207.50D0A99F.0181, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
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
X-List-Received-Date: Tue, 18 Dec 2012 17:36:38 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

Jessica and Mark,

Thank you for the responses. It appears that there is another thread on the
same subject. Let me feedback what I am seeing and hearing:

The quick start guide
(http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.
html) and various presentation slides showing the Poky Work Flow / Yocto
Project Development Environment show an output of the image and Application
Development SDK. When I include the option to build the SDK in a Yoicto1.3
Danny build, I see in the /../tmp/deploy/sdk is the ADT installer. To me the
ADT installer installs the toolchain and the rootfs to build applications.
Also, the ADT installer only installs a rootfs based on pre-set images like
core-image-sato, core-image-minimal, etc., and doesn't address a custom
rootfs that may have more or less support than the standard images. The
Eclipse plug in adds the capability to Eclipse to link to the toolchain and
rootfs installed by the ADT installer.

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
> Toolchain, the compiler and related tools that enable compiling software
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
>    2) nativesdk software - these are applications that run on the -host-
system
> to assist in compiling software for the target (this includes the target
> toolchain.)
>    3) target sysroot - The sysroot is the collection of libraries, headers
and
> assorted items that are compiled for the target.  A sysroot is setup in a
similar
> fashion as a target's root filesystem.
> 
> ADT - Application Developer Tool - This is an Eclipse component that can
use
> the SDK, generated by OE-Core, to enable application development within
> the Eclipse framework.  (I may be slightly wrong on this item, as people
have
> told me in the past there are command line parts to the ADT.... but the
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
> >>    a general preference on my part, but i think it would be useful if
> >> any
> > yocto
> >> docs that are discussing toolchains or cross-compilation or the like
> >> use
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
> >>    also, if you're using x86 for both dev content and target content,
> >> you
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
> ==========================================================
> >> ==============
> >> Robert P. J. Day                                 Ottawa, Ontario,
CANADA
> >>                          http://crashcourse.ca
> >>
> >> Twitter:
http://twitter.com/rpjday
> >> LinkedIn:
http://ca.linkedin.com/in/rpjday
> >>
> ==========================================================
> >> ==============
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


