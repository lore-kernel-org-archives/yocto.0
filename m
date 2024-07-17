Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67232C3DA59
	for <webhook@archiver.kernel.org>; Wed, 17 Jul 2024 01:40:41 +0000 (UTC)
Received: from esa10.hc1455-7.c3s2.iphmx.com (esa10.hc1455-7.c3s2.iphmx.com [139.138.36.225])
 by mx.groups.io with SMTP id smtpd.web10.5877.1721180438402691984
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jul 2024 18:40:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=RHSRsM2h;
 spf=pass (domain: fujitsu.com, ip: 139.138.36.225, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1721180438; x=1752716438;
  h=from:to:cc:subject:date:message-id;
  bh=gEcuLRFYffC7S0IgstgbhTACOp3KBRSsENVC8q9Zaes=;
  b=RHSRsM2hlaNZesBi6QhUiuRVR0kjzQz1lqX0PqGyq4YyCacvO6SJ793T
   FDJg7rpfOuGwgw3Pha0D2ktgEbxfqPyPmpHTGMUvvcRGS+qNJ69yajBM8
   nl2Vj0rVweN2o9Re0SauMEiAo2GVqvrlSLXVWHBby4Yw1EWQiUcyClx7n
   hlH1q6H1SGeXV4h1gNeIGgZVcUtJ025AIERJyYLiD9NeojOYFBE9mge8i
   cuWP40lDsPkMtSfyZgVI0nXsvnZz+z9TOxMxnl3u4HSEOeG/911mcikVj
   H4WqDoGU3tdJE+ykNIDXpQrND/DasG7PTGMdGjpm9JLcVOtCyeuCYtrOZ
   w==;
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="154858469"
X-IronPort-AV: E=Sophos;i="6.09,213,1716217200"; 
   d="scan'208";a="154858469"
Received: from unknown (HELO oym-r2.gw.nic.fujitsu.com) ([210.162.30.90])
  by esa10.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jul 2024 10:40:35 +0900
Received: from oym-m2.gw.nic.fujitsu.com (oym-nat-oym-m2.gw.nic.fujitsu.com [192.168.87.59])
	by oym-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id 6AD68D9223
	for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 10:40:33 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id A7080BF4A9
	for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 10:40:27 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 0A6342007CDD7
	for <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 10:40:27 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 89F151A000A;
	Wed, 17 Jul 2024 09:40:26 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-cgl] [PATCH] resource-agents: fix Upstream-Status
Date: Wed, 17 Jul 2024 09:40:07 +0800
Message-Id: <1721180407-14937-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28534.003
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28534.003
X-TMASE-Result: 10-2.068900-10.000000
X-TMASE-MatchedRID: nM1g40D14vvEQS2ecfkpF+/uue7xcpjD8boZEVitthhXGTbsQqHbkiia
	SqRpkfBttOhu6Z0cMoa12HagvbwDjqcUQ7z3S96i8t4fUUGeErQUi4Ehat0545wUo7HqAU16o8W
	MkQWv6iXBcIE78YqRWo6HM5rqDwqtyTAZKret7XMYrk8OJ1T1rzxJ31jni7c+oU+zS4qfFbYJhR
	avBnNhhF+fO2W0vUPBGAylEfJGut05GgzEDr0HL7uG81IsSlpWHSbhGbmGylXFJK7yLnZRGZdO3
	Q67ImL8gi4RUz90EQwG2MApbv6odw==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jul 2024 01:40:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63518

From: Wang Mingyu <wangmy@fujitsu.com>

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../resource-agents/01-disable-doc-build.patch                  | 2 ++
 .../resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch     | 2 ++
 .../resource-agents/03-fix-header-defs-lookup.patch             | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
index f136ec8..9429eb4 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/01-disable-doc-build.patch
@@ -3,6 +3,8 @@ From: Bian Naimeng <biannm@cn.fujitsu.com>
 Date: Tue, 30 Jun 2015 16:42:48 +0800
 Subject: [PATCH] disable doc build
 
+Upstream-Status: Pending
+
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
 ---
  Makefile.am | 2 +-
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
index ca36bc6..75ac8e7 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/02-set-OCF_ROOT_DIR-to-libdir-ocf.patch
@@ -3,6 +3,8 @@ From: Bian Naimeng <biannm@cn.fujitsu.com>
 Date: Tue, 30 Jun 2015 16:42:48 +0800
 Subject: [PATCH] Set OCF_ROOT_DIR to ${libdir}/ocf
 
+Upstream-Status: Pending
+
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
 
 ---
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
index fb578cb..32454fb 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/03-fix-header-defs-lookup.patch
@@ -3,6 +3,8 @@ From: Bian Naimeng <biannm@cn.fujitsu.com>
 Date: Tue, 1 Apr 2014 16:20:39 +0200
 Subject: [PATCH] fix header defs lookup
 
+Upstream-Status: Pending
+
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
 
 ---
-- 
2.34.1


