Return-Path: <rahul.saxena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71691E0027E
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 14:05:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Oct 2012 14:05:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,682,1344236400"; d="scan'208";a="234807825"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 30 Oct 2012 14:05:08 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 30 Oct 2012 14:05:08 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.10.237]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.60]) with mapi id
	14.01.0355.002; Tue, 30 Oct 2012 14:05:08 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Bodke, Kishore K"
	<kishore.k.bodke@intel.com>
Thread-Topic: [yocto] [PATCH] meta-cedartrail: bump mesa-dri preferred
	version to 8.04
Thread-Index: AQHNtuI9tntiDrDspUG4AY0KItxXnQ==
Date: Tue, 30 Oct 2012 21:05:07 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003CE8B03@ORSMSX107.amr.corp.intel.com>
References: <1351613233-2977-1-git-send-email-ross.burton@intel.com>
In-Reply-To: <1351613233-2977-1-git-send-email-ross.burton@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-cedartrail: bump mesa-dri preferred version to 8.04
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
X-List-Received-Date: Tue, 30 Oct 2012 21:05:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Burton, Ross
Sent: Tuesday, October 30, 2012 9:07 AM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org
Subject: [yocto] [PATCH] meta-cedartrail: bump mesa-dri preferred version t=
o 8.04

There isn't a 7.11 anywhere for it to build, so use 8.04.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail=
/conf/machine/cedartrail.conf
index 7efe584..aa2a46a 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -17,7 +17,7 @@ XSERVER ?=3D "${XSERVER_IA32_BASE} \
            "
 PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
 PREFERRED_VERSION_xserver-xorg ?=3D "1.9.3"
-PREFERRED_VERSION_mesa-dri ?=3D "7.11"
+PREFERRED_VERSION_mesa-dri ?=3D "8.04"
 PREFERRED_VERSION_xf86-input-evdev ?=3D "2.6.0"
=20
 SYSLINUX_OPTS =3D "serial 0 115200"

Acked-by: Rahul Saxena <rahul.saxena@intel.com>
--=20
1.7.10

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

