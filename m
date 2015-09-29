Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DCA2E00F07; Tue, 29 Sep 2015 15:55:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 984CEE0086D
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 15:55:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Sep 2015 15:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,609,1437462000"; d="scan'208";a="800021203"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2015 15:55:52 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.2.42]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.23]) with mapi id
	14.03.0248.002; Tue, 29 Sep 2015 15:55:52 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Smith, Daniel W" <dwsmith@ball.com>, Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] PSPLASH PPC Colors
Thread-Index: AdD69SPhoftkf+XWQjCaFWyUqTR1UgAPisMAAAAsHAAACoiT0A==
Date: Tue, 29 Sep 2015 22:55:51 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6101F7AA8@ORSMSX109.amr.corp.intel.com>
References: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40@EX2010-CO-02.AERO.BALL.com>
	<560AF9DA.6080103@mlbassoc.com>
	<167A17EDB344B047B2D335D8E4C5A2FAA4CB5E5F@EX2010-CO-02.AERO.BALL.com>
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E5F@EX2010-CO-02.AERO.BALL.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: PSPLASH PPC Colors
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
X-List-Received-Date: Tue, 29 Sep 2015 22:55:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is a known bug:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7236

Juro

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Smith, Daniel W
> Sent: Tuesday, September 29, 2015 1:57 PM
> To: Gary Thomas; yocto@yoctoproject.org
> Subject: Re: [yocto] PSPLASH PPC Colors
>=20
>=20
> > Does this happen on qemuppc or only on real hardware?
>=20
> I have only tried it on qemuppc & qemuarm at this point.  The colors are =
all
> correct once busybox is running, so I suspect it is an edianness issue wi=
th
> images generated on a PC and then installed on a PPC.
>=20
> -Daniel Smith
>=20
>=20
>=20
> This message and any enclosures are intended only for the addressee.
> Please notify the sender by email if you are not the intended recipient. =
 If
> you are not the intended recipient, you may not use, copy, disclose, or
> distribute this message or its contents or enclosures to any other person=
 and
> any such actions may be unlawful.  Ball reserves the right to monitor and
> review all messages and enclosures sent to or from this email address.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

