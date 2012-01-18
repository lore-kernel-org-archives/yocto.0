Return-Path: <fei.yang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7C71E00307
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 15:50:16 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2012 15:50:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113776876"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2012 15:50:16 -0800
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 18 Jan 2012 15:50:37 -0800
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.7]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.110]) with mapi id
	14.01.0355.002; Wed, 18 Jan 2012 15:50:15 -0800
From: "Yang, Fei" <fei.yang@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Making machine config a build dependency for
	core-image recipes
Thread-Index: AczWLRfNTu9B3q16TaCsxNRcuwXo0gARVSUAAA4ITeA=
Date: Wed, 18 Jan 2012 23:50:15 +0000
Message-ID: <02E7334B1630744CBDC55DA8586225831FAF4D@ORSMSX102.amr.corp.intel.com>
References: <02E7334B1630744CBDC55DA8586225831FAEC2@ORSMSX102.amr.corp.intel.com>
	<4F1745A6.3050502@mlbassoc.com>
In-Reply-To: <4F1745A6.3050502@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Making machine config a build dependency for core-image recipes
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
X-List-Received-Date: Wed, 18 Jan 2012 23:50:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> This package is not marked as machine dependent via
>    PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> perhaps it should be since /etc/inittab is target dependent?

Well, I just checked poky/meta/recipes-core/sysvinit/sysvinit-inittab_2.88d=
sf.bb, it does have PACKAGE_ARCH =3D "${MACHINE_ARCH}". Am I looking at wro=
ng bb file? There is another file named sysvinit_2.88dsf.bb which doesn't h=
ave PACKAGE_ARCH set.


-Fei

