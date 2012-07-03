Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60818E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 05:00:25 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 Jul 2012 05:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="118455191"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by AZSMGA002.ch.intel.com with ESMTP; 03 Jul 2012 05:00:24 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.19.9.29) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 3 Jul 2012 05:00:24 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	fmsmsx110.amr.corp.intel.com (10.19.9.29) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 3 Jul 2012 05:00:24 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.33]) by
	SHSMSX151.ccr.corp.intel.com ([10.239.6.50]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 20:00:22 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, Khem Raj
	<raj.khem@gmail.com>, "Wang, Shane" <shane.wang@intel.com>
Thread-Topic: [yocto] Hob question: meta-yocto layer and 'defaultsetup'
	distro option
Thread-Index: AQHNWPh9rRL+Ex0QPkeQ1fUV6C9vuJcXZUYAgAAOyEA=
Date: Tue, 3 Jul 2012 12:00:21 +0000
Message-ID: <40776A41FC278F40B59438AD47D147A90FDC7F66@SHSMSX102.ccr.corp.intel.com>
References: <CAMKF1spFRf6C3YmFGq8GRmFvPxCn1UQEL8s7dNNCeDzHwR6Z+g@mail.gmail.com>
	<CC18726D.12703%belen.barros.pena@intel.com>
In-Reply-To: <CC18726D.12703%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Hob question: meta-yocto layer and 'defaultsetup' distro option
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
X-List-Received-Date: Tue, 03 Jul 2012 12:00:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Barros Pena, Belen
> Sent: Tuesday, July 03, 2012 7:04 PM
> To: Khem Raj; Wang, Shane; Xu, Dongxiao
> Cc: yocto
> Subject: Re: [yocto] Hob question: meta-yocto layer and 'defaultsetup' di=
stro
> option
>=20
> Thanks, Khem.
>=20
> Just to make sure I understand this correctly: if I don't use the meta-yo=
cto layer,
> OE-Core should provide reference distro policies that allow me to build a=
n
> image. So I guess the 'defaultsetup' option in Hob is referring to those =
OE-Core
> policies. Shane, Dongxiao: could you confirm if this is the case?

Yes, actually "defaultsetup" will be applied in default for any kind of lay=
er settings, including the default OE-Core. The difference is, OE-Core only=
 applies "defaultsetup", while for meta-yocto layer, we can add additional =
distro policies (poky, poky-bleeding, etc) to override some of the "default=
setup" settings.

Thanks,
Dongxiao

>=20
> Thanks!
>=20
> Belen
>=20
> On 02/07/2012 17:53, "Khem Raj" <raj.khem@gmail.com> wrote:
>=20
> >On Mon, Jul 2, 2012 at 9:05 AM, Barros Pena, Belen
> ><belen.barros.pena@intel.com> wrote:
> >>
> >> If I delete the meta-yocto layer, am I supposed to provide the distro
> >> to be used via a layer or some other means?
> >
> >OE-Core has reference distro policies which are enough to generate
> >images by just using OE-Core and that is what happens when you drop
> >meta-yocto its testing the reference distro setup from OE-Core
> >
> >


