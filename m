Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC077E0027F
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2012 09:54:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Aug 2012 09:54:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,785,1336374000"; d="scan'208";a="209969414"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 17 Aug 2012 09:54:10 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.40) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 17 Aug 2012 09:54:09 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.178]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.94]) with mapi id
	14.01.0355.002; Fri, 17 Aug 2012 09:54:09 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/1] meta-cedartrail: fixed PREFERRED_VERSION_linux-yocto
Thread-Index: AQHNfJCCPsK0jZ5NMkqEUoV31S4elZdeOCPw
Date: Fri, 17 Aug 2012 16:54:09 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD5DDE8@ORSMSX105.amr.corp.intel.com>
References: <cover.1345218399.git.mihaix.lindner@linux.intel.com>
	<43dcdb1922fe530749e6050df3a77bc95ba49620.1345218399.git.mihaix.lindner@linux.intel.com>
In-Reply-To: <43dcdb1922fe530749e6050df3a77bc95ba49620.1345218399.git.mihaix.lindner@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] meta-cedartrail: fixed PREFERRED_VERSION_linux-yocto
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
X-List-Received-Date: Fri, 17 Aug 2012 16:54:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Mihai Lindner [mailto:mihaix.lindner@linux.intel.com]
>Sent: Friday, August 17, 2012 8:54 AM
>To: yocto@yoctoproject.org; Bodke, Kishore K
>Subject: [PATCH 1/1] meta-cedartrail: fixed PREFERRED_VERSION_linux-yocto
>
>Missing PREFERRED_VERSION_linux-yocto generated NOTEs when building.
>"""
>NOTE: preferred version 3.4% of linux-yocto not available (for item
>virtual/kernel)
>"""

Acked-by: Kishore Bodke <kishore.k.bodke@intel.com>

>
>[YOCTO #2962]
>
>Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
>---
> meta-cedartrail/conf/machine/cedartrail.conf |    1 +
> 1 files changed, 1 insertions(+), 0 deletions(-)
>
>diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-
>cedartrail/conf/machine/cedartrail.conf
>index dbd7d95..d6e7a57 100644
>--- a/meta-cedartrail/conf/machine/cedartrail.conf
>+++ b/meta-cedartrail/conf/machine/cedartrail.conf
>@@ -13,6 +13,7 @@ XSERVER ?=3D "${XSERVER_IA32_BASE} \
>            ${XSERVER_IA32_EXT} \
>            cdv-pvr-driver \
>            "
>+PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
> PREFERRED_VERSION_xserver-xorg ?=3D "1.9.3"
> PREFERRED_VERSION_mesa-dri ?=3D "7.11"
> PREFERRED_VERSION_xf86-input-evdev ?=3D "2.6.0"
>--
>1.7.8.6


