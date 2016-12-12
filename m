Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C678E00905; Mon, 12 Dec 2016 14:15:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 700BDE005B9
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 14:15:50 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP; 12 Dec 2016 14:15:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,338,1477983600"; d="scan'208";a="41748325"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2016 14:15:49 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 12 Dec 2016 14:15:49 -0800
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.163]) by
	ORSMSX155.amr.corp.intel.com ([10.22.240.21]) with mapi id
	14.03.0248.002; Mon, 12 Dec 2016 14:15:48 -0800
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-zephyr layer
Thread-Index: AdJUwsGpugg9Pmu/QsqjzuAXZM7o+w==
Date: Mon, 12 Dec 2016 22:15:48 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: meta-zephyr layer
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
X-List-Received-Date: Mon, 12 Dec 2016 22:15:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There is interest in the community to support building Zephyr images
( https://www.zephyrproject.org/ )in Yocto via bitbake recipes.=20
AFAIK the only way thus far to build Zephyr images is based on command=20
line/Kconfig, similar to building Linux kernel images.=20

Building of Zephyr images in Yocto can now be done fairly unobtrusively=20
via a new layer "meta-zephyr" and specifying a new distro in local.conf:
DISTRO=3D"zephyr"

The repository for the meta-zephyr is here:=20
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Djuro/meta-z=
ephyr.

The new meta-zephyr layer contains several recipes to build (and run
in QEMUs) various Zephyr tests. There is also a sample recipe to build=20
Zephyr sample "philosophers" with instructions how to run it in QEMU.

This is the first kick at the can.
At present, only x86 and ARM CortexM3 toolchains are supported, with
more coming eventually. (Zephyr also supports BSPs for ARC, Nios2, IAMCU,
and Xtensa and RISC-V coming in the next release)

The new meta-zephyr is work based on previous original work by=20
Randy Witt and Richard Purdie, so it is actually a second kick at the can.

This is a work in progress, any feedback is appreciated.

Juro



