Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1162E00444; Wed, 21 Sep 2016 09:14:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA791E00404
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 09:14:06 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP; 21 Sep 2016 09:14:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,374,1470726000"; d="scan'208";a="11701832"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga006.fm.intel.com with ESMTP; 21 Sep 2016 09:14:06 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Wed, 21 Sep 2016 09:14:05 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.16]) by
	ORSMSX114.amr.corp.intel.com ([169.254.8.240]) with mapi id
	14.03.0248.002; Wed, 21 Sep 2016 09:14:05 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>, Trevor Woerner <twoerner@gmail.com>,
	Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Cortex-M4 build support
Thread-Index: AdIKb7GAmo83mHHiRt+SgpS1CJ5BJQAcqi8AAIL6SwAAE6+TAAA4mBoAAAW6IIAAZEhRgADv/yAAACa4AkA=
Date: Wed, 21 Sep 2016 16:14:04 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B611894C3A@ORSMSX112.amr.corp.intel.com>
References: <DB6PR0401MB26303ED7C7F9D20C58F0A218EEFA0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<1da73c18-5295-5524-4b80-05269193b9d8@windriver.com>
	<DB6PR0401MB26304EA907417D20A2333B56EEFF0@DB6PR0401MB2630.eurprd04.prod.outlook.com>
	<8f11dcb6-91bc-c5c9-f79c-32e0fb684011@windriver.com>
	<140dc7c6-d500-11a2-026f-54bdc5a7dc0c@reliableembeddedsystems.com>
	<88AA93DF-A9F2-4C96-A2BD-8B8C781F6172@gmail.com>
	<20160915200713.GA19012@openSUSE-i7.site>
	<DB6PR0401MB2630746035CC5851C1B64BE6EEF70@DB6PR0401MB2630.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0401MB2630746035CC5851C1B64BE6EEF70@DB6PR0401MB2630.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org"
	<public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
Subject: Re: Cortex-M4 build support
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
X-List-Received-Date: Wed, 21 Sep 2016 16:14:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You can also have a look at the Zephyr project https://www.zephyrproject.or=
g/
Zephyr Project is a small, scalable real-time operating system for use on r=
esource-constrained systems supporting multiple architectures.
It does come with Cortex m0,m1,m2,m3,m4 baremetal Yocto based toolchain.
https://gerrit.zephyrproject.org/r/p/meta-zephyr-sdk.git

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Zhenhua Luo
> Sent: Tuesday, September 20, 2016 7:39 AM
> To: Trevor Woerner <twoerner@gmail.com>; Khem Raj <raj.khem@gmail.com>
> Cc: robert.berger@gmane <gmane@reliableembeddedsystems.com>;
> yocto@yoctoproject.org; yocto-EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org
> <public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
> Subject: Re: [yocto] Cortex-M4 build support
>=20
> Thank you so much for your suggestion, Trevor.
>=20
>=20
> Best Regards,
>=20
> Zhenhua
>=20
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Trevor Woerner
> > Sent: Friday, September 16, 2016 4:07 AM
> > To: Khem Raj <raj.khem@gmail.com>
> > Cc: robert.berger@gmane <gmane@reliableembeddedsystems.com>;
> > yocto@yoctoproject.org; yocto-
> > EtnWKYl6rD/WsZ/bQMPhNw@public.gmane.org <public-yocto-
> > EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>
> > Subject: Re: [yocto] Cortex-M4 build support
> >
> > On Tue 2016-09-13 @ 01:15:49 PM, Khem Raj wrote:
> > >
> > > > On Sep 13, 2016, at 10:31 AM, robert.berger@gmane
> > <gmane@reliableembeddedsystems.com> wrote:
> > > >
> > > > Hi,
> > > >
> > > > Shouldn't it be possible to build a bare-metal Cortex-M4 compiler
> with the YP
> > and build a small RTOS like FreeRTOS with this compiler?
> > > >
> > >
> > > yes it should be possible. you can also look into meta-ti where I
> > > think they try to have their DSP toolchain build some code using OE
> > > recipe model
> >
> > Perhaps other things to consider (I'm not entirely sure if these apply,
> but maybe
> > worth investigating?)
> >
> > The ROS project has a meta layer:
> > https://layers.openembedded.org/layerindex/branch/master/layer/meta-ros=
/
> >
> > If your CortexM board has enough RAM (e.g. http://www.emcraft.com/) you
> > can run (a version of) Linux (uClinux) right on your CortexM target:
> > https://github.com/EmcraftSystems/linux-emcraft
> >
> > The Emcraft website appears to provide Linux support for NXP-based
> CortexM
> > boards too: http://www.emcraft.com/products/456
> > http://www.emcraft.com/products/88
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

