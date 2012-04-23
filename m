Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CB7BE00596
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2012 11:31:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Apr 2012 11:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="144959374"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by fmsmga001.fm.intel.com with ESMTP; 23 Apr 2012 11:31:19 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 23 Apr 2012 11:31:19 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.6]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.220]) with mapi id
	14.01.0355.002; Mon, 23 Apr 2012 11:31:18 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [yocto] [PATCH 2/9] [meta-intel] Cedartrail: Update SRCREVS
	and add EFI Support.
Thread-Index: AQHNIXk6AEujmLPD9E2WKwq+6vqN1JaoukTQ
Date: Mon, 23 Apr 2012 18:31:18 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AC74BFA@ORSMSX106.amr.corp.intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
	<99d5459a7e3a7bd5ca105c5fac3c1f8f24bd8e33.1334083666.git.kishore.k.bodke@intel.com>
	<4F9595B2.3070101@intel.com>
In-Reply-To: <4F9595B2.3070101@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/9] [meta-intel] Cedartrail: Update SRCREVS and add EFI Support.
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
X-List-Received-Date: Mon, 23 Apr 2012 18:31:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


>>  KERNEL_FEATURES_append_cedartrail +=3D " cfg/smp.scc"
>> +KERNEL_FEATURES_append_cedartrail +=3D " cfg/drm-cdvpvr.scc"
>> +KERNEL_FEATURES_append_cedartrail +=3D " bsp/cedartrail/cedartrail-pvr-
>merge.scc"
>> +KERNEL_FEATURES_append_cedartrail +=3D " cfg/efi-ext.scc"
>
>
>I suggest moving all of this into the cedartrail.scc file in the
>linux-yocto meta branch. These are all core bits required for the BSP,
>they don't need to be easily changed from recipe-space.
>
>The exception would be the pvr bits. You can make a single
>cedartrail.scc that supports both configs (with and without pvr) and
>only modify the pvr one here in recipe space - the rest belongs in
>linux-yocto/meta

Hi Darren,

All the above are specific to pvr only.  (cfg/drm-cdvpvr.scc , bsp/cedartra=
il/cedartrail-pvr-merge.scc, and cfg/efi-ext.scc)
These are not needed for without pvr versions of the BSP.
I think if I move them to Cedartrail.scc, these will get pulled in for no-p=
vr version of the build and may cause the build to fail.

Thanks
Kishore.


>
>
>> +COMPATIBLE_MACHINE_cedartrail-nopvr =3D "cedartrail"
>> +KMACHINE_cedartrail-nopvr  =3D "cedartrail"
>> +KERNEL_FEATURES_append_cedartrail-nopvr +=3D " cfg/smp.scc"
>
>Same here.
>
>--
>Darren
>
>--
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Linux Kernel

