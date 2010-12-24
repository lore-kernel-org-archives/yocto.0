Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 079C44C80050
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 19:32:40 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 17:32:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,221,1291622400"; d="scan'208";a="871470069"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2010 17:32:09 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 09:31:25 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 09:31:25 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 24 Dec 2010 09:31:23 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
Date: Fri, 24 Dec 2010 09:31:22 +0800
Thread-Topic: [yocto] Recent build issues.
Thread-Index: AcujALZvftRYDN6tRFesSCuzOnrmtQACPZRA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A319A54F0@shsmsx501.ccr.corp.intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E8@orsmsx504.amr.corp.intel.com>
	<1293150141.17519.560.camel@rex>
In-Reply-To: <1293150141.17519.560.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recent build issues.
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
X-List-Received-Date: Fri, 24 Dec 2010 01:32:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> On Thu, 2010-12-23 at 14:08 -0800, Flanagan, Elizabeth wrote:
>> Next,  the following bugs have been making it difficult to track down
>> build failures:
>>=20
>> Sanity Test Boot test returns invalid results.
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D611
>=20
> Fixes for #611, #612 and some other issues I found are merged into master=
.
> Sanity tests are now working locally for me at least.
>=20
>> Sanity tests do not always kill QEMU once timeout is reached
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D595
>=20

I tried to reproduce the bug before, but never seen such issue on my local =
machine. Meanwhile, when I was checking the log on autobuilder, I found QEM=
U was actually killed. I will add some check code and report error when qem=
u is not killed.

> This is not fixed yet and we need to sort that as its hurting the autobui=
lder.
>=20
>> There are also sanity test failures in a few images:
>>=20
>> qemuarm poky-image-sato
>> qemuarm poky-image-minimal
>> qemumips poky-image-sato
>>=20
>> mips seems to have run poky-image-minimal ok, but with Bug #611, I
>> can't be sure that is the case and I doubt it's actually the case.
>> My inclination is that there is an issue with arm and mips builds
>> that should be looked at.
>=20
> Also, qemux86 was broken until a fix I pushed a few minutes ago
> (kernel was missing IDE support and wouldn't boot in qemu).
>=20
> It looks like the new version of opkg we've upgraded to fixing certain
> meta-toolchain corruption issues has some other new characteristics
> such as refusing to install overlapping files. This is good but its
> exposed bugs (and why isn't rpm showing this?).
>=20
> There is currently an issue with that when building meta-toolchain and
> poky-image-lsb that I know of. Patches to fix these bugs welcome (and
> bugs need filing).
>=20
>> - PPC is broken.
>>=20
>> PPC is having serious issues that seem to revolve around
>> linux-yocto-2.6.37. Bruce I believe is working on this. Can anyone
>> give an update around where this stands?
>=20
> Bruce pushed a patch to disable -Os usage. If this isn't showing up in
> the next round of autobuilds, we'll have to figure out why it isn't getti=
ng applied.
>=20
> Cheers,
>=20
> Richard
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Best Regards,
Jiajun



