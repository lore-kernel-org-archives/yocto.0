Return-Path: <david.c.stewart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A83D7E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 13:17:13 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Dec 2011 13:17:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="94509775"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2011 13:17:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 9 Dec 2011 13:17:12 -0800
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Fri, 9 Dec 2011 13:17:13 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>, "Zanussi, Tom" <tom.zanussi@intel.com>, Saul Wold
	<sgw@linux.intel.com>
Date: Fri, 9 Dec 2011 13:17:11 -0800
Thread-Topic: [yocto] [PATCH] n450: drop ROOTLESS_X as it breaks X
Thread-Index: Acy2tHP0Z/rJ2wTZQw+lmoWkRybnswAA2XOg
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B261BD3A06A@orsmsx501.amr.corp.intel.com>
References: <4EE274E8.4000605@linux.intel.com>
In-Reply-To: <4EE274E8.4000605@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH] n450: drop ROOTLESS_X as it breaks X
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
X-List-Received-Date: Fri, 09 Dec 2011 21:17:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Are we going to diagnose why rootless X  is broken and fix it?

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Darren Hart
>Sent: Friday, December 09, 2011 12:52 PM
>To: Yocto Project; Zanussi, Tom; Saul Wold
>Subject: [yocto] [PATCH] n450: drop ROOTLESS_X as it breaks X
>
>Fixes [YOCTO #1797]
>
>Building with ROOTLESS_X results in X failing start with
>the following error:
>
>i915 0000:00:02.0: VGA-1: EDID block 0 invalid.
>(EE) AIGLX error: dlopen of /usr/lib/dri/i915_dri.so failed
>(/usr/lib/dri/i915_dri)
>(EE) AIGLX: reverting to software rendering
>(EE) AIGLX error: dlopen of /usr/lib/dri/swrast_dri.so failed
>(/usr/lib/dri/swrast)
>(EE) GLX: could not load software renderer
>
>The n450 BSP is the only BSP in meta-intel using ROOTLESS_X. Dropping
>it restores functionality and brings it inline with the rest of the BSPs.
>
>Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>---
> meta-n450/conf/machine/n450.conf |    2 --
> 1 files changed, 0 insertions(+), 2 deletions(-)
>
>diff --git a/meta-n450/conf/machine/n450.conf
>b/meta-n450/conf/machine/n450.conf
>index 7210da8..3e6a541 100644
>--- a/meta-n450/conf/machine/n450.conf
>+++ b/meta-n450/conf/machine/n450.conf
>@@ -16,5 +16,3 @@ SERIAL_CONSOLE =3D "115200 ttyS0"
> APPEND +=3D "console=3DttyS0,115200 console=3Dtty0"
>
> MACHINE_EXTRA_RRECOMMENDS +=3D "n450-audio"
>-
>-ROOTLESS_X =3D "1"
>--
>1.7.5.4
>--
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Linux Kernel
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

