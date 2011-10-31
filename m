Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2B70E00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 10:01:09 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 31 Oct 2011 10:01:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,432,1315206000"; d="scan'208";a="31817153"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Oct 2011 10:01:08 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Mon, 31 Oct 2011 10:01:09 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 31 Oct 2011 10:01:06 -0700
Thread-Topic: [yocto] [PATCH 1/2] meta-romley: Fix BSP description in
	romley.conf
Thread-Index: AcyVegZVkckvOVrGQIu8k0VO3+k66ACdHk2Q
Message-ID: <4BD43A85686FC34D819098DB1C3999D9018F70901D@orsmsx502.amr.corp.intel.com>
References: <cover.1319810084.git.tom.zanussi@intel.com>
	<3cf02697e2c7cf03c9f38b4c7d2192c1aceddc56.1319810084.git.tom.zanussi@intel.com>
In-Reply-To: <3cf02697e2c7cf03c9f38b4c7d2192c1aceddc56.1319810084.git.tom.zanussi@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] meta-romley: Fix BSP description in romley.conf
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
X-List-Received-Date: Mon, 31 Oct 2011 17:01:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Acked-by: Kishore Bodke  <Kishore.k.bodke@intel.com>

Thanks
Kishore.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of tom.zanussi@intel.com
Sent: Friday, October 28, 2011 7:00 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 1/2] meta-romley: Fix BSP description in romley.con=
f

From: Tom Zanussi <tom.zanussi@intel.com>

The description still had a reference to Sugar Bay; this changes it to
Romley.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-romley/conf/machine/romley.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machin=
e/romley.conf
index 38bd17a..2dcb5db 100644
--- a/meta-romley/conf/machine/romley.conf
+++ b/meta-romley/conf/machine/romley.conf
@@ -1,7 +1,7 @@
 #@TYPE: Machine
 #@NAME: romley
=20
-#@DESCRIPTION: Machine configuration for Sugar Bay systems
+#@DESCRIPTION: Machine configuration for Romley systems
 # i.e. Sandy Bridge + Patsburg Chipset
=20
 require conf/machine/include/tune-x86_64.inc
--=20
1.7.0.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

