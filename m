Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9ACCC4C80B6B
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 14:34:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Nov 2010 12:34:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,238,1288594800"; d="scan'208";a="576430827"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 22 Nov 2010 12:34:51 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 22 Nov 2010 12:34:51 -0800
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Mon, 22 Nov 2010 12:34:50 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 22 Nov 2010 12:34:49 -0800
Thread-Topic: [yocto] When is it ok to link to host libraries?
Thread-Index: AcuKd8H6Rmin9ATYRne8iz1plbDxdAADnRaw
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC51181@orsmsx501.amr.corp.intel.com>
References: <4CEABE21.40406@intel.com>
In-Reply-To: <4CEABE21.40406@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: When is it ok to link to host libraries?
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
X-List-Received-Date: Mon, 22 Nov 2010 20:34:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Scott Garman
> Sent: Monday, November 22, 2010 11:02 AM
>=20
> Hello,
>=20
> I'd like to get some better clarity about what constitutes host
> contamination when it comes to building packages. Could someone with
> deeper knowledge of these issues clarify or comment on the following?
>=20
> My understanding is that when building non -native recipes, there
> should
> be absolutely no linking to the libraries on the host system - meaning
> that autotols configure scripts and so on should not be determining
> which features are available based on what packages are installed on
> the
> host OS. The only exceptions to this are the use of some core system
> utilities (cp, mv, etc).
>=20
> However, when it comes to -native recipes, is it acceptable to link to
> the host libraries? Since the package is intended to run on the same
> host, I would think this would be acceptable, but I'm not certain.
>=20
> The problem I'm working on which prompted this inquiry is a segfault
> that is occurring with QEMU in certain circumstances. The latest Ubuntu
> (10.10, Maverick) with the proprietary NVIDIA Xorg driver also installs
> its own version of libGL, which is linked by qemu-native. If I
> uninstall
> the proprietary NVIDIA driver and rebuild qemu-native from scratch, the
> segfault does not occur.

Would you ever have a situation where you build the SDK on one distro versi=
on but install and use it on another one? If so, does this affect your deci=
sions?

> Thanks,
>=20
> Scott
>=20
> --
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

