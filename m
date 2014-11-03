Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6D10E008EA; Mon,  3 Nov 2014 06:20:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 978F7E008BA
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 06:20:41 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhcFAK6OV1SHCzIm/2dsb2JhbABcgmsjgSwE1VMCgSAWAQEBAQEBfIQCAQEBAQMSKD8MBAIBCA0IAQIKFAkHMhQRAQEEDgUIGogfAahinn0BAQEBAQEBAQEBAQEBAQEBAQEBAQEXkF8xB4MtgR4FkhqNGIZthwGDKIQJg3hsAYFHgQMBAQE
X-IronPort-AV: E=Sophos;i="5.07,308,1413259200"; d="scan'208";a="90348507"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	03 Nov 2014 09:20:32 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Nov 2014 09:20:32 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Mon, 3 Nov 2014 09:20:32 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Another sstate rebuild issue, badly need help
	understanding sstate
Thread-Index: Ac/3ZHenwuDsNv5FQjOB/ZYFOtnF4wANa0OAAAo/PEA=
Date: Mon, 3 Nov 2014 14:20:31 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798411584BB@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
	<1550328.akuF352sGY@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1550328.akuF352sGY@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another sstate rebuild issue, badly need help understanding sstate
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
X-List-Received-Date: Mon, 03 Nov 2014 14:20:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: November 03, 2014 9:13 AM
>=20
> On Monday 03 November 2014 12:53:23 Vuille, Martin wrote:
> > Poky 1.6.1 / daisy
> >
> > I have a variable "REV_TOOLS" defined in distro/conf/somename.conf in
> > a custom distro layer from a git repo.
> >
> > This variable is assigned to SRCREV in a number of recipes (SRCREV =3D
> > "${REV_TOOLS}") for packages included in my images and SDKs.
> >
> > Pulled an update to the distro layer that changed the value of REV_TOOL=
S.
> >
> > Rebuilt all my images and SDKs, but bitbake decided there was nothing t=
o
> do.
> >
> > Looking at toaster, all the do_build tasks for the packages affected
> > by this change say "Prebuilt" and the other tasks say "Covered". If I
> > understand correctly, this means sstate didn't detect any change.
> >
> > I am continually running into this problem and am at my wits' end. Why
> > didn't the affected packages get rebuilt? Clearly there is something I
> > don't understand and would appreciate some hint.
>=20
> I honestly don't know how to explain this behaviour either, because it
> should not happen this way. BitBake automatically extracts variable
> references within variable values and adds them to the dependencies of
> the variable, so a change to REV_TOOLS should have resulted in the
> signatures changing for the do_fetch tasks for all of the recipes where
> SRCREV contained the reference and thus all of those recipes and the ones
> that depend upon them getting rebuilt.
>=20
> Did you use oe-init-build-env or oe-init-build-env-memres to initialise y=
our
> build environment?
>=20

oe-init-build-env, prefixed with TEMPLATECONF to point to our custom
distro layer.

MV


