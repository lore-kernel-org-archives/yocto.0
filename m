Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93F78E0086D; Wed,  3 Jun 2015 10:28:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Jun 2015 10:28:19 PDT
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4921CE005B9
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 10:28:19 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AikFALc4b1WHCzIm/2dsb2JhbABbgmYqgTIGxiwCgUNMAQEBAQEBgQuEIgEBAQEDEig/DAQCAQgNCAECChQJBzIUEQEBBA4FCBqICwGtDK5AAQEBAQEBAQEBAQEBAQEBAQEBAQEBF4tDhFUxB4MXgRYFkxSMTYZni1aDWSSCChyBUm8BgUWBAQEBAQ
X-IronPort-AV: E=Sophos;i="5.13,548,1427774400"; d="scan'208";a="119190499"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	03 Jun 2015 13:27:15 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Jun 2015 13:27:16 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Wed, 3 Jun 2015 13:27:15 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Kernel module not installed in rootfs
Thread-Index: AdCdbfFqFMJECWBQTEOFK6W7uxmOPQAhGTuAAAv2J4A=
Date: Wed, 3 Jun 2015 17:27:15 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377985392FD7F@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377985392F38F@AZ-US1EXMB03.global.avaya.com>
	<71668614.b93BMjqxRS@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <71668614.b93BMjqxRS@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel module not installed in rootfs
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
X-List-Received-Date: Wed, 03 Jun 2015 17:28:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: June 03, 2015 3:42 AM
>=20
> On Tuesday 02 June 2015 19:58:50 Vuille, Martin wrote:
> > Yocto 1.6.1
> >
> > I have added a module to my kernel.
> >
> > The module is getting built, I see a kernel-module-blah-blah RPM and
> > it contains the .ko
> >
> > I add kernel-module-blah-blah to one of the packagegroups contained in
> > my image, I see do_rootfs task run, but the module is not in the
> > image. In log.do_rootfs I see that the module is NOT one of the
> > packages installed.
> >
> > I did a cleansstate on the image and the packagegroup, I did a
> > cleanall on virtual/kernel, makes no difference.
> >
> > If I do a "clean build" from scratch, then the module is installed.
> >
> > Any thoughts on what I'm missing here?
>=20
> Something is definitely strange here.
>=20
> If you cleansstate and rebuild the packagegroup *after* building the kern=
el
> with the module in it, does that make a difference?
>=20

Hi Paul,

Overnight I deleted build/tmp and build/sstate-cache from my workspace
and rebuilt everything.

Then this morning I added the module to the packagegroup and rebuilt the im=
age.
This time the .ko did show up in the rootfs.

So it seems there was some sort of gremlin lurking and now it's gone. I hop=
e
for good.

Thanks for your help
MV

