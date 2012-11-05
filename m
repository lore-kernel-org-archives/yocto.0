Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE3DE0052C
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2012 07:54:43 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Nov 2012 07:54:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,715,1344236400"; d="scan'208";a="213634562"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 05 Nov 2012 07:54:42 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 5 Nov 2012 07:54:41 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.28]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.228]) with mapi id
	14.01.0355.002; Mon, 5 Nov 2012 07:54:41 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri
	version (typo'd)
Thread-Index: AQHNu1GsTMY+B/nfXU+y0AQElAWvm5fbZOWw
Date: Mon, 5 Nov 2012 15:54:40 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE23E16A1B7@ORSMSX105.amr.corp.intel.com>
References: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
In-Reply-To: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version (typo'd)
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
X-List-Received-Date: Mon, 05 Nov 2012 15:54:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Is this patch for danny?

-Kishore.

>-----Original Message-----
>From: Ross Burton [mailto:ross.burton@intel.com]
>Sent: Monday, November 05, 2012 4:31 AM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org
>Subject: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version
>(typo'd)
>
>Signed-off-by: Ross Burton <ross.burton@intel.com>
>---
> meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-
>cedartrail/conf/machine/cedartrail.conf
>index aa2a46a..a5fa0f0 100644
>--- a/meta-cedartrail/conf/machine/cedartrail.conf
>+++ b/meta-cedartrail/conf/machine/cedartrail.conf
>@@ -17,7 +17,7 @@ XSERVER ?=3D "${XSERVER_IA32_BASE} \
>            "
> PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
> PREFERRED_VERSION_xserver-xorg ?=3D "1.9.3"
>-PREFERRED_VERSION_mesa-dri ?=3D "8.04"
>+PREFERRED_VERSION_mesa-dri ?=3D "8.0.4"
> PREFERRED_VERSION_xf86-input-evdev ?=3D "2.6.0"
>
> SYSLINUX_OPTS =3D "serial 0 115200"
>--
>1.7.10


