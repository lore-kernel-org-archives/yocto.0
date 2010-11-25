Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1A2E4C80FAD
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 21:11:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 19:11:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; d="scan'208";a="680865659"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2010 19:11:22 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 25 Nov 2010 11:11:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 25 Nov 2010 11:11:12 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "Mei, Lei" <lei.mei@intel.com>, "Kamble, Nitin A"
	<nitin.a.kamble@intel.com>
Date: Thu, 25 Nov 2010 11:11:10 +0800
Thread-Topic: [yocto] The patch_2.5.9.bb download another version source file
Thread-Index: AcuMTYB8csdJ207xQJG1eEhYRP5X9AAAFI9w
Message-ID: <33AB447FBD802F4E932063B962385B3530492E50@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F223023B0F7@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <749B9D3DBF0F054390025D9EAFF47F223023B0F7@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The patch_2.5.9.bb download another version source file
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
X-List-Received-Date: Thu, 25 Nov 2010 03:11:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Meilei and I take a further look, the reason is that "meta/recipes-devtools=
/patch/patch_2.5.9.bb" has hardcoded SRC_URI =3D "${GNU_MIRROR}/patch/patch=
-2.5.4.tar.gz", so the SRC version (2.5.4) does not matched with recipe fil=
e version (2.5.9).=20

Not sure if it is on purpose or a typo, so send it out for Nitin to verify.

Regards
Ke

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Mei, Lei
> Sent: Thursday, November 25, 2010 11:05 AM
> To: Kamble, Nitin A
> Cc: yocto@yoctoproject.org
> Subject: [yocto] The patch_2.5.9.bb download another version source file
>=20
> Hi Nitin,
> 	I am adding the license file MD5sum information to recipe, but I
> find the recipe "patch_2.5.9.bb" downloaded the source file from "patch-
> 2.5.4.tar.gz", this will result in the COPYING file MD5sum is not match w=
ith
> the bitbake calculate. I find you are the maintainer ,so can you tell me =
the
> reason?
>=20
> Thanks
> Lei
>=20
>=20
> ---
> Mei, Lei
> Email: lei.mei@intel.com
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

