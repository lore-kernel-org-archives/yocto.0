Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EA8FE00955; Mon, 12 Dec 2016 14:52:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1052EE00828
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 14:52:56 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 12 Dec 2016 14:52:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,338,1477983600"; d="scan'208";a="39364066"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga004.jf.intel.com with ESMTP; 12 Dec 2016 14:52:56 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 12 Dec 2016 14:52:55 -0800
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.163]) by
	ORSMSX158.amr.corp.intel.com ([10.22.240.20]) with mapi id
	14.03.0248.002; Mon, 12 Dec 2016 14:52:55 -0800
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: Philip Balister <philip@balister.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-zephyr layer
Thread-Index: AdJUwsGpugg9Pmu/QsqjzuAXZM7o+wARg/WAAA+b+CA=
Date: Mon, 12 Dec 2016 22:52:55 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6118C686A@ORSMSX112.amr.corp.intel.com>
References: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
	<a278001c-6944-42c4-0762-30d4931a2016@balister.org>
In-Reply-To: <a278001c-6944-42c4-0762-30d4931a2016@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: meta-zephyr layer
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
X-List-Received-Date: Mon, 12 Dec 2016 22:52:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

you need poky to build QEMUs and toolchains

> -----Original Message-----
> From: Philip Balister [mailto:philip@balister.org]
> Sent: Monday, December 12, 2016 2:19 PM
> To: Bystricky, Juro <juro.bystricky@intel.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] meta-zephyr layer
>=20
> Does that work without poky?
>=20
> Philip
>=20
> On 12/12/2016 02:15 PM, Bystricky, Juro wrote:
> > There is interest in the community to support building Zephyr images
> > ( https://www.zephyrproject.org/ )in Yocto via bitbake recipes.
> > AFAIK the only way thus far to build Zephyr images is based on command
> > line/Kconfig, similar to building Linux kernel images.
> >
> > Building of Zephyr images in Yocto can now be done fairly unobtrusively
> > via a new layer "meta-zephyr" and specifying a new distro in local.conf=
:
> > DISTRO=3D"zephyr"
> >
> > The repository for the meta-zephyr is here:
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Djuro/me=
ta-
> zephyr.
> >
> > The new meta-zephyr layer contains several recipes to build (and run
> > in QEMUs) various Zephyr tests. There is also a sample recipe to build
> > Zephyr sample "philosophers" with instructions how to run it in QEMU.
> >
> > This is the first kick at the can.
> > At present, only x86 and ARM CortexM3 toolchains are supported, with
> > more coming eventually. (Zephyr also supports BSPs for ARC, Nios2, IAMC=
U,
> > and Xtensa and RISC-V coming in the next release)
> >
> > The new meta-zephyr is work based on previous original work by
> > Randy Witt and Richard Purdie, so it is actually a second kick at the
> can.
> >
> > This is a work in progress, any feedback is appreciated.
> >
> > Juro
> >
> >

