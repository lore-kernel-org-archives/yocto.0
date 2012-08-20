Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA6C9E0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 15:13:46 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Aug 2012 15:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="206860668"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2012 15:13:46 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 20 Aug 2012 15:13:46 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.138]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.86]) with mapi id
	14.01.0355.002; Mon, 20 Aug 2012 15:13:45 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [PATCH 1/3] meta-cedartrail: update SRCREV for Cedartrail
	machine branch
Thread-Index: AQHNfyC6ITKOi1U3GEawDZ70EhfmEJdjQ2Vg
Date: Mon, 20 Aug 2012 22:13:45 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C490033135EA@ORSMSX103.amr.corp.intel.com>
References: <cover.1345497883.git.rahul.saxena@intel.com>
	<022960688d1a4e279d6e9223e787e453f9ec8b0b.1345497883.git.rahul.saxena@intel.com>
	<5032B588.60803@linux.intel.com>
In-Reply-To: <5032B588.60803@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/3] meta-cedartrail: update SRCREV for Cedartrail machine branch
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
X-List-Received-Date: Mon, 20 Aug 2012 22:13:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am just bringing it up to a most recent update from Bruce. Nothing pushed=
 from my side to cedartrail branch.

Thanks
Rahul

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Monday, August 20, 2012 3:09 PM
To: Saxena, Rahul
Cc: yocto@yoctoproject.org; Zanussi, Tom
Subject: Re: [PATCH 1/3] meta-cedartrail: update SRCREV for Cedartrail mach=
ine branch



On 08/20/2012 02:52 PM, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
>=20
> update SRCREV_machine_pn-linux-yocto_cedartrail

These typically include a reason for the update. Are you just bringing it u=
p to the most recent update from Bruce or is this to include some update th=
at you pushed to the cedartrail branch?

--
Darren

>=20
> Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git=20
> a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend=20
> b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 7a0a2a3..48deb45 100644
> --- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -15,9 +15,9 @@ KMACHINE_cedartrail-nopvr  =3D "cedartrail"
>  KBRANCH_cedartrail-nopvr  =3D "yocto/standard/cedartrail"
>  KERNEL_FEATURES_append_cedartrail-nopvr +=3D " cfg/smp.scc"
> =20
> -SRCREV_machine_pn-linux-yocto_cedartrail ?=3D "81fd8c307997aff37916828dc=
8b4ef72f5d35a94"
> +SRCREV_machine_pn-linux-yocto_cedartrail ?=3D "3b5b629560f2a36426c19f4f1=
8e3633aa93c955e"
>  SRCREV_meta_pn-linux-yocto_cedartrail ?=3D "46e8fc2bbbe73514e8d99101adaa=
a373f760ffa7"
>  SRCREV_pvr_pn-linux-yocto_cedartrail ?=3D "997f5644664b31ebefd6e16c451c4=
a3729eb378a"
> =20
> -SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?=3D "81fd8c307997aff3791=
6828dc8b4ef72f5d35a94"
> +SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?=3D "3b5b629560f2a36426c=
19f4f18e3633aa93c955e"
>  SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?=3D "a4ac64fe873f08ef718e28=
49b88914725dc99c1c"
>=20

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

