Return-Path: <jiajun.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A66544C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 11:50:10 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Nov 2010 09:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,274,1286175600"; d="scan'208";a="343112943"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 01 Nov 2010 09:50:09 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 2 Nov 2010 00:50:08 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 2 Nov 2010
	00:50:07 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>
Date: Tue, 2 Nov 2010 00:50:06 +0800
Thread-Topic: [yocto] Bugzilla Changes
Thread-Index: Act4D5ENXMHD9YMURUKCZaRM0IDiXAB0FPyw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A300B6ECE@shsmsx501.ccr.corp.intel.com>
References: <4CCBDC67.4050306@linux.intel.com>
In-Reply-To: <4CCBDC67.4050306@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Bugzilla Changes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 16:50:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> We need to review the existing Bugzilla and update the Products and
> Categories to reflect the projects correctly.  Please review this
> email and make comments, suggestions for moving forward with a better
> Bugzilla categorization.
>=20
> Currently we have "Core OS" with the following Components:
>    General
>    Graphics Driver
>    Kernel
>    Tool Chain
> Along with "Poky" which contains:
>    General
>    SDK Tools
> There are also product categories for "Runtime Distribution", "Sato"
> and "SDK Plugins". Along with other infrastructure items.
>=20
> I would propose that we clearly define the some new products and move
> bugs as appropriate:
>=20
> Poky Build System - for Poky class and configuration issues User Space
> - for user space, patching and runtime failures Tool Chain - break it
> down to compiler, tools, libraries, and general Kernel - Break it down
> to Arch  / Config components SDK - For all SDK related issues, have
> components for plugin, tools, ...
> Sato - as it exists today
> Runtime Distribution- Delete this, we are not a distro (no bugs now)
>=20
> Additionally, there is other discussion about Poky Test components for
> the standards tests such as LSB, LTP, Posix.
>=20

These test suites can help to find bugs from user level to kernel. It's har=
d to put them as components under just one product. User can decide the pro=
duct and add note in bug title that the bug is for LSB or LTP.
If we want to make it easier to report bugs for such test suites, how about=
 adding a Standard Test Suite product, which includes LSB, LTP, POSIX and O=
thers as components.

> We will need to add Product Categories for other Yocto Projects that
> do not have bugzilla yet.
>=20
> Finally we need to update the Bugzilla Interface to be Yocto Project,
> changing naming as appropriate.
>=20
> Please take a few minutes to review this and give some feedback.
>=20
>=20
> Thanks
>=20
>      Sau!
> Saul Wold
> Yocto Component Wrangler @ Intel
> Yocto Project / Poky Build System
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto

Best Regards,
Jiajun



