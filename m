Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 301D8E007B6;
	Fri, 14 Feb 2014 09:50:21 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 14 Feb 2014 09:50:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,845,1384329600"; d="scan'208";a="475356500"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2014 09:49:59 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 14 Feb 2014 09:49:59 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.166]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.245]) with mapi id
	14.03.0123.003; Fri, 14 Feb 2014 09:49:58 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Koen Kooi
	<koen@dominion.thruhere.net>, "meta-intel@lists.yoctoproject.org"
	<meta-intel@lists.yoctoproject.org>
Thread-Topic: [meta-intel] [common][dora][PATCH] emgd-driver-bin: limit
	build to x86*
Thread-Index: AQHPKanxSXLgSogft0inuog1ppbEJpq1BtyQ
Date: Fri, 14 Feb 2014 17:49:56 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C7CDAA21A@ORSMSX103.amr.corp.intel.com>
References: <1392391313-2901-1-git-send-email-koen@dominion.thruhere.net>
	<CF23915D.6D6B7%dvhart@linux.intel.com>
In-Reply-To: <CF23915D.6D6B7%dvhart@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [meta-intel] [common][dora][PATCH] emgd-driver-bin: limit build to x86*
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
X-List-Received-Date: Fri, 14 Feb 2014 17:50:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: meta-intel-bounces@yoctoproject.org [mailto:meta-intel-
> bounces@yoctoproject.org] On Behalf Of Darren Hart
> Sent: Friday, February 14, 2014 9:26 AM
> To: Koen Kooi; meta-intel@lists.yoctoproject.org
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [meta-intel] [common][dora][PATCH] emgd-driver-bin: limit
> build to x86*
>=20
> On 2/14/14, 7:21, "Koen Kooi" <koen@dominion.thruhere.net> wrote:
>=20
> >When building GL apps for non-x86 machines (e.g. raspberrypi)
> >emgd-driver-bin is being dragged in as a valid provider. To avoid build
> >breakage fix it at the source by limiting emgd-driver-bin to x86
> >architectures.
> >
> >Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> >---
> > common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb | 2 ++
> >common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb | 2 ++
> > 2 files changed, 4 insertions(+)
> >
> >diff --git
> >a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> >b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> >index c8ca726..8cb088e 100644
> >--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> >+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
> >@@ -9,6 +9,8 @@ LICENSE =3D "Intel-software-license-emgd-1.16 &
> >Intel-user-space-graphics-driver-b
> > LICENSE_FLAGS =3D "license_${PN}_${PV}"
> > PR =3D "r0"
> >
> >+COMPATIBLE_HOST =3D "(i.86|x86_64).*-linux"
>=20
> And you can drop the x86_64 as well as this is a 32bit only driver.


Agreed.
Nitin

>=20
> --
> Darren Hart
> Yocto Project - Linux Kernel
> Intel Open Source Technology Center
>=20
>=20
>=20
>=20
> _______________________________________________
> meta-intel mailing list
> meta-intel@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-intel

