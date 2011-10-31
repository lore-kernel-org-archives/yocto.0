Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0E24E00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 10:03:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Oct 2011 10:03:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,433,1315206000"; d="scan'208";a="79753699"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2011 10:03:49 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 31 Oct 2011 10:03:48 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Mon, 31 Oct 2011 10:03:49 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 31 Oct 2011 10:03:47 -0700
Thread-Topic: [yocto] [PATCH 2/2] meta-romley: change references to sugarbay
	in	linux-yocto-rt_3.0.bbappend
Thread-Index: AcyVefqdFaZ15ZTcRg+59QDScYFpzACdQJWQ
Message-ID: <4BD43A85686FC34D819098DB1C3999D9018F709021@orsmsx502.amr.corp.intel.com>
References: <cover.1319810084.git.tom.zanussi@intel.com>
	<03a680b265874eda3d07704a048c247c007f35dd.1319810084.git.tom.zanussi@intel.com>
In-Reply-To: <03a680b265874eda3d07704a048c247c007f35dd.1319810084.git.tom.zanussi@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 2/2] meta-romley: change references to sugarbay in	linux-yocto-rt_3.0.bbappend
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
X-List-Received-Date: Mon, 31 Oct 2011 17:03:49 -0000
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
Subject: [yocto] [PATCH 2/2] meta-romley: change references to sugarbay in =
linux-yocto-rt_3.0.bbappend

From: Tom Zanussi <tom.zanussi@intel.com>

There are still references to sugarbay in linux-yocto-rt_3.0.bbappend;
this changes them to romley.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b=
/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
index d630dc4..1551ccf 100644
--- a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
+++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
@@ -3,6 +3,6 @@ COMPATIBLE_MACHINE_romley =3D "romley"
 KMACHINE_romley  =3D "romley"
=20
 # Update the following to use a different BSP branch or meta SRCREV
-#KBRANCH_sugarbay  =3D "yocto/standard/preempt-rt/base"
-#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?=3D XXXX
-#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?=3D XXXX
+#KBRANCH_romley  =3D "yocto/standard/preempt-rt/base"
+#SRCREV_machine_pn-linux-yocto-rt_romley ?=3D XXXX
+#SRCREV_meta_pn-linux-yocto-rt_romley ?=3D XXXX
--=20
1.7.0.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

