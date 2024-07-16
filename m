Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3226AC41513
	for <webhook@archiver.kernel.org>; Tue, 16 Jul 2024 03:47:26 +0000 (UTC)
Received: from esa9.hc1455-7.c3s2.iphmx.com (esa9.hc1455-7.c3s2.iphmx.com [139.138.36.223])
 by mx.groups.io with SMTP id smtpd.web11.2936.1721101635646575252
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 20:47:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=rv/OEksj;
 spf=pass (domain: fujitsu.com, ip: 139.138.36.223, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1721101636; x=1752637636;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references;
  bh=BNE9Z4v7tJP+ppT8spVN2TvI2k2Be69VXpCpogc2NRo=;
  b=rv/OEksjclSWrDpR9EHil1N/YJdJh4joDSztT6+UI4LlsCUIN9PXCMwN
   AAW/Gccwf51RFyfXGQ2FyHAMPsFAiCULXVFwxKtyUlzjrAldf0grKi/uS
   uc1ZTwYrd0VPPhqAioPg3SKOCzIFDZeFmvqV+G/7ky/1W9O7dmSBvv3xE
   WvPK16HzaRxJuOU5Rz+wVQ7vj8leWqpbLQCr2LMNBLp5v+F5tSNRhFAlf
   2QGXv0JvEstOR8rMuWC3ZbNpQHqRWIZxgqE7SD1wqjanLMP+qMcmiU68V
   Gp5H8ZRWS887n3a1o423AywDCuk5SChU1MJ01U6fmiKDhD3ynzyEc/Yl3
   A==;
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="155576553"
X-IronPort-AV: E=Sophos;i="6.09,211,1716217200"; 
   d="scan'208";a="155576553"
Received: from unknown (HELO oym-r2.gw.nic.fujitsu.com) ([210.162.30.90])
  by esa9.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2024 12:47:13 +0900
Received: from oym-m4.gw.nic.fujitsu.com (oym-nat-oym-m4.gw.nic.fujitsu.com [192.168.87.61])
	by oym-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id A0AA1D9BEF
	for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 12:47:11 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by oym-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id E657AD4C24
	for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 12:47:10 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id 7193CE5184
	for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 12:47:10 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 1EEB11A000A;
	Tue, 16 Jul 2024 11:47:10 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-cgl] [PATCH 2/2] ocfs2-tools: fix Upstream-Status
Date: Tue, 16 Jul 2024 11:46:51 +0800
Message-Id: <1721101611-7311-2-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1721101611-7311-1-git-send-email-wangmy@fujitsu.com>
References: <1721101611-7311-1-git-send-email-wangmy@fujitsu.com>
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28532.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28532.004
X-TMASE-Result: 10--9.986600-10.000000
X-TMASE-MatchedRID: k5N68qbYN2jEQS2ecfkpFyrLqyE6Ur/j1QQ6Jx/fflbk6Qbi+9i6D188
	KFWF27c+/Ro//2i2qWVCyGE7PA8pRbVQ6XPWwtdy/HTKStsDGMI2ZWOmuJUS2SXSpoIWp4vFOZU
	bAxfIy1IWeucbks6Qtphl+M5E4O1lkfRhdidsajMURSScn+QSXt0H8LFZNFG7bkV4e2xSge6e0Z
	rBNd7PLS2l7G5NTaog4PpzzpEJOvWd+OA3skiH6UsMHBii02BH
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 03:47:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63506

From: Wang Mingyu <wangmy@fujitsu.com>

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch            | 2 +-
 .../0003-vendor-common-o2cb.ocf-add-new-conf-file.patch         | 2 +-
 .../recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch         | 2 ++
 .../ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch          | 2 ++
 4 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
index 7ce8405..b32ed6e 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-Fix-build-with-glibc-2.28.patch
@@ -16,7 +16,7 @@ In file included from o2cb_abi.c:52:
   loff_t d_off; /* Offset of structure in the file */
   ^~~~~~
 
-Upstream-Status: Backport[https://github.com/cheese/ocfs2-tools/commit/fa150e35931123fc630125ebef1901ffb30d421f]
+Upstream-Status: Backport [https://github.com/cheese/ocfs2-tools/commit/fa150e35931123fc630125ebef1901ffb30d421f]
 
 Signed-off-by: Robin Lee <cheeselee@fedoraproject.org>
 Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
index 2df4ed8..9504d0a 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0003-vendor-common-o2cb.ocf-add-new-conf-file.patch
@@ -3,7 +3,7 @@ From: Li xin <lixin.fnst@cn.fujitsu.com>
 Date: Fri, 12 Dec 2014 16:15:28 +0900
 Subject: [PATCH 3/3] vendor/common/o2cb.ocf: add new conf file
 
-Upstream-Status: pending
+Upstream-Status: Pending
 
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
 ---
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
index 7347786..16abb21 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/no-redhat.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- a/vendor/common/o2cb.init.sh
 +++ b/vendor/common/o2cb.init.sh
 @@ -18,7 +18,7 @@
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
index f8ab313..2a79b4a 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/ocfs2-tools-1.8.5-format-fortify.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 diff --git a/tunefs.ocfs2/op_query.c b/tunefs.ocfs2/op_query.c
 index 295c185b..40394d15 100644
 --- a/tunefs.ocfs2/op_query.c
-- 
2.34.1


