Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94216E01421
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 16:59:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Jun 2012 16:58:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="155507453"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 12 Jun 2012 16:58:43 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 12 Jun 2012 16:58:43 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.113]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.88]) with mapi id
	14.01.0355.002; Tue, 12 Jun 2012 16:58:42 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Lock, Joshua" <joshua.lock@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH x32 Edison 0/2] Fixes for meta-x32 edison branch
Thread-Index: AQHNQ33S7YKdF03GWEewMTH6HG8D+pb3Z2Lg
Date: Tue, 12 Jun 2012 23:58:43 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C0311446D@ORSMSX106.amr.corp.intel.com>
References: <cover.1338942853.git.josh@linux.intel.com>
In-Reply-To: <cover.1338942853.git.josh@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH x32 Edison 0/2] Fixes for meta-x32 edison branch
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
X-List-Received-Date: Tue, 12 Jun 2012 23:59:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Joshua Lock [mailto:joshua.lock@intel.com]
> Sent: Tuesday, June 05, 2012 5:46 PM
> To: yocto@yoctoproject.org
> Cc: Joshua Lock; Kamble, Nitin A
> Subject: [PATCH x32 Edison 0/2] Fixes for meta-x32 edison branch
>=20
> The following patches are required to use the edison branch of meta-x32
> with the current edison branch of Poky.
>=20
> The first change is required because the edison branch updated its openss=
l
> version some time ago for security fixes.
>=20
> The gmp change is required so that gmp-native can be used by ppl.
>=20
> Regards,
> Joshua
>=20
> CC: Nitin Kamble <nitin.a.kamble@intel.com>
>=20
> The following changes since commit
> 78a8f65718b7ad7c93103a82026575687271cf5d:
>=20
>   gmp: also built libgmpxx for gmp-native (2011-10-14 10:30:03 -0700)
>=20
> are available in the git repository at:
>   git://github.com/incandescant/meta-x32.git josh/edison
>   https://github.com/incandescant/meta-x32
>=20
> Joshua Lock (2):
>   openssl: update bbappend to match version in poky edison
>   gmp: Fix EXTRA_OECONF for native target
>=20


Merged these 2 commits in to Edison branch of the meta-x32 layer.

Nitin

>  gmp/gmp_5.0.2.bbappend                             |    2 +-
>  ...ssl_0.9.8r.bbappend =3D> openssl_0.9.8s.bbappend} |    0
>  2 files changed, 1 insertions(+), 1 deletions(-)  rename
> openssl/{openssl_0.9.8r.bbappend =3D> openssl_0.9.8s.bbappend} (100%)
>=20
> --
> 1.7.7.6


