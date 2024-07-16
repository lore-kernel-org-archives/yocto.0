Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30877C3DA59
	for <webhook@archiver.kernel.org>; Tue, 16 Jul 2024 03:47:26 +0000 (UTC)
Received: from esa9.hc1455-7.c3s2.iphmx.com (esa9.hc1455-7.c3s2.iphmx.com [139.138.36.223])
 by mx.groups.io with SMTP id smtpd.web11.2936.1721101635646575252
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 20:47:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=ng1qmbfL;
 spf=pass (domain: fujitsu.com, ip: 139.138.36.223, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1721101635; x=1752637635;
  h=from:to:cc:subject:date:message-id;
  bh=RDJ50OvQLBl/tyiDvPImgBSZEwX5AH4gXIYmD4lCi88=;
  b=ng1qmbfL+2CSJvscIAZAuDF9RcVcUwzqxPWzmhQa+tUmsm+lDj3zPBFp
   KJRER9jEg2edV2zK1Bja8HU1QV6WXIBdAFrBAf3KiRitTET2qYedjHqQo
   vnw7/Nku2CVXh7Cq4IJGrwkF5z6ug9qG0WBaNjsnDSMCaN4vYYdILV4Ot
   gzYxfwwNQ9FW36Q7/1jZBzgd6pfXGGwQMvhLJK3hOVMVPv0r99JVFe835
   lbrHJX4yfi4r0LEP1WId9n1w3GXZoxfC1WTlibHETpJ60RdR88iRFOrV+
   9BS+tvCL8eLWXV/k82hbimPbcM+azj+GFjBrRiQdG+dYUAlkh235rGh4r
   A==;
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="155576552"
X-IronPort-AV: E=Sophos;i="6.09,211,1716217200"; 
   d="scan'208";a="155576552"
Received: from unknown (HELO oym-r1.gw.nic.fujitsu.com) ([210.162.30.89])
  by esa9.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2024 12:47:12 +0900
Received: from oym-m3.gw.nic.fujitsu.com (oym-nat-oym-m3.gw.nic.fujitsu.com [192.168.87.60])
	by oym-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id F064CDEE75
	for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 12:47:10 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 34CBAD7723
	for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 12:47:10 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 95A812007CAB6
	for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 12:47:09 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 1AB291A000A;
	Tue, 16 Jul 2024 11:47:08 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-cgl] [PATCH 1/2] cluster-glue: fix Upstream-Status
Date: Tue, 16 Jul 2024 11:46:50 +0800
Message-Id: <1721101611-7311-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28532.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28532.004
X-TMASE-Result: 10-1.366200-10.000000
X-TMASE-MatchedRID: z2X1ouPdlzrEQS2ecfkpFyrLqyE6Ur/j1QQ6Jx/fflZaer+1iaJkEOgo
	SvaKsl/kHpUu8HaArprGKIf6hBf7VeM08db7ghTylVHM/F6YkvRr9+Kgn2XgeLTxVectWz+oMuT
	wbaqEJZM2AjpFVWIQRIAy6p60ZV62v2ThXg3lx4DdB/CxWTRRu+rAZ8KTspSzNoVgHrFcvYugVH
	TSwDz7vmcazBYP4QUcy5v9fHwRZdNcYGNGueG2SzLUEpf6Wky30o5sBlrPkDfp6UKijdWizdoH+
	DkzKuxTiB6mlDKe1V7S/yytHeCN9GXv4CQeNUk7G6qTOwq/n71+3BndfXUhXQ==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 03:47:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63505

From: Wang Mingyu <wangmy@fujitsu.com>

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch     | 2 +-
 .../cluster-glue/0001-ribcl.py.in-Warning-Fix.patch             | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch
index dd762b8..9a760b0 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-don-t-compile-doc-and-Error-Fix.patch
@@ -12,7 +12,7 @@ Subject: [PATCH] don't compile doc and Error Fix
 |       http://docbook.sourceforge.net/release/xsl/current/manpages/docbook.xsl ha_logd.xml
 | make[2]: *** [hb_report.8] Error 127
 
-Upstream-Status: pending
+Upstream-Status: Pending
 
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
 ---
diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch
index 31010d4..b7e9578 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue/0001-ribcl.py.in-Warning-Fix.patch
@@ -12,7 +12,7 @@ Allow the build to specify a path for the python instead of reusing
 the PYTHON variable which can lead to inconsistencies if we are cross
 compiling.
 
-Upstream-Status: pending
+Upstream-Status: Pending
 
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
 ---
-- 
2.34.1


