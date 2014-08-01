Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BDD1E0056A; Thu, 31 Jul 2014 23:10:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A143E004E0
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 23:10:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jul 2014 23:10:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,778,1400050800"; d="scan'208";a="570324950"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2014 23:10:11 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 31 Jul 2014 23:10:09 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
	ORSMSX111.amr.corp.intel.com ([169.254.11.231]) with mapi id
	14.03.0123.003; Thu, 31 Jul 2014 23:10:09 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] why does dev manual, "Supported Board Support
	Packages", mention only meta-intel?
Thread-Index: AQHPrCwHb2LafF1iukKlhgEW+Tsou5u5rHMwgACDxoD//4ww8IABIAOAgABpKjA=
Date: Fri, 1 Aug 2014 06:10:08 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD2A40@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407301522260.30037@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15B5@ORSMSX101.amr.corp.intel.com>
	<CAMKF1sqyPbb1-oe23zZ0Rpm31Oxn9pz+yPDDsD_j10h4h2K1FA@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15F5@ORSMSX101.amr.corp.intel.com>
	<alpine.LFD.2.11.1407311234570.12848@localhost>
In-Reply-To: <alpine.LFD.2.11.1407311234570.12848@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why does dev manual, "Supported Board Support Packages", mention only meta-intel?
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
X-List-Received-Date: Fri, 01 Aug 2014 06:10:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This section probably does need a fresh look in light of the current manual=
 structure now.  When I wrote it, I had some detailed examples in the dev-m=
anual that stepped people through building a kernel image and an image for =
crown-bay.  Those detailed examples have gone by the wayside.  I will take =
a look at this section.

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Thursday, July 31, 2014 9:52 AM
>To: Rifenbark, Scott M
>Cc: Khem Raj; Yocto discussion list
>Subject: RE: [yocto] why does dev manual, "Supported Board Support Package=
s",
>mention only meta-intel?
>
>
>(SIDE NOTE: i'm being this picky since i want to use these manuals straigh=
t out
>as training material, so i want them to be precise and
>accurate.)
>
>On Thu, 31 Jul 2014, Rifenbark, Scott M wrote:
>
>> Yes - that is what I meant by fixing it up to be less-restrictive.
>> I need to find out some stuff on BSPs in general and then I will get
>> to it.
>
>  looking at that entire section 2.2 in the dev manual ("Getting Set Up"),=
 it might
>be worth stepping back and asking what that section is meant to accomplish=
 --
>one would think, listing the really basic stuff one needs to, say, build t=
heir first
>image.
>
>  with that in mind, the list in that section seems a bit odd in places, a=
nd a couple
>other notes about it.
>
>  first, "You should also have about 50 Gbytes of free disk space for buil=
ding
>images" seems a bit, um, harsh. you can build an entire bootable qemuarm
>image in less than 16G, so scaring the reader by mentioning 50G seems slig=
htly
>extreme.
>
>  next, given that first-time users are probably going to just go with the=
 kernel
>provided and configured for their machine of choice, it's not clear that t=
hat
>section needs to get into checking out a kernel manually, or mentioning me=
ta-
>yocto-kernel-extras. but that's just me.
>
>  finally, about BSPs, i'm not sure what that section needs to say at this=
 point
>beyond, "depending on what MACHINE you're building for, you may need to
>manually check out the specific BSP layer for that machine," then just poi=
nt the
>reader at the layers page.
>
>  it might be sufficient to say something like:
>
>  "in terms of BSPs, you will already have support for a number of machine=
s. OE
>provides support for a number of QEMU images, while the yocto layer adds
>support for five 'reference' boards [LIST THEM].
>beyond that, you will need to locate and download the BSP layer for the ma=
chine
>you want."
>
>  if you truly want to give an example of downloading a BSP layer, pick a
>*simple* one -- i always use meta-raspberrypi since it is a single checkou=
t that
>defines a single machine. with all due respect, using meta-intel as an exa=
mple is
>probably the worst choice in that it is a single checkout that is a layer,=
 with
>numerous sublayers as part of the checkout, and do you really want to get =
into
>that?
>
>  anyway, i would keep that entire section as simple as possible, and refe=
r
>readers to the more advanced sections in other manuals.
>
>  movin' on ...
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D
>


