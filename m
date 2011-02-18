Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 623484C8007E
	for <yocto@yoctoproject.org>; Fri, 18 Feb 2011 03:43:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Feb 2011 01:43:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,186,1297065600"; d="scan'208";a="709438971"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 18 Feb 2011 01:43:57 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 18 Feb 2011 17:42:13 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 18 Feb 2011 17:42:13 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 18 Feb 2011 17:42:11 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Chris Tapp' <opensource@keylevel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 18 Feb 2011 17:42:11 +0800
Thread-Topic: [yocto] do_compile() isn't run when building
Thread-Index: AcvPSxyY71XYockQRKC/g1aVM0GtDwABFMMg
Message-ID: <1865303E0DED764181A9D882DEF65FB6863CE7363B@shsmsx502.ccr.corp.intel.com>
References: <13233D92-281E-48E5-9830-E31753F2717E@keylevel.com>
In-Reply-To: <13233D92-281E-48E5-9830-E31753F2717E@keylevel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: do_compile() isn't run when building
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
X-List-Received-Date: Fri, 18 Feb 2011 09:44:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Chris Tapp wrote:
> I've created a simple recipe based on an example from the Poky
> Reference manual (I've added a license to get it to build):
The code looks ok.

> However, if I 'bitbake test' the code isn't compiled:
>=20
> NOTE: Running setscene task 178 of 276 (/home/chris/poky-dev/meta/
> recipes-keylevel/test/test_0.1.0.bb:do_populate_sysroot_setscene)
> NOTE: Running setscene task 179 of 276 (/home/chris/poky-dev/meta/
> recipes-keylevel/test/test_0.1.0.bb:do_package_setscene)
> NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene:
> Started NOTE: package test-0.1.0-r0: task do_package_setscene: Started
> NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene:
> Succeeded
> NOTE: Running setscene task 180 of 276 (/home/chris/poky-dev/meta/
> recipes-keylevel/test/test_0.1.0.bb:do_populate_lic_setscene)
> NOTE: package test-0.1.0-r0: task do_package_setscene: Succeeded
> NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Started
> NOTE: Running setscene task 181 of 276 (/home/chris/poky-dev/meta/
> recipes-keylevel/test/test_0.1.0.bb:do_package_write_ipk_setscene)
> NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Succeeded
> NOTE: package test-0.1.0-r0: task do_package_write_ipk_setscene:
> Started NOTE: package test-0.1.0-r0: task
> do_package_write_ipk_setscene: Succeeded
> NOTE: Executing RunQueue Tasks
> NOTE: Running noexec task 828 of 829 (ID: 9,
> /home/chris/poky-dev/meta/ recipes-keylevel/test/test_0.1.0.bb,
> do_package_write)=20
> NOTE: Running noexec task 829 of 829 (ID: 4,
> /home/chris/poky-dev/meta/ recipes-keylevel/test/test_0.1.0.bb,
> do_build)=20
>=20
>=20
> Why doesn't the code get built?
Is this the complete log?
I don't find any tasks(e.g., do_fetch, do_unpack, do_install...) that shoul=
d be there. This is odd.

Maybe you can try "bitbake -c cleanall test; bitbake test" to see if any ch=
ange?

Thanks,
-- Dexuan

