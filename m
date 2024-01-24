Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E27A3C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 03:32:25 +0000 (UTC)
Received: from esa12.hc1455-7.c3s2.iphmx.com (esa12.hc1455-7.c3s2.iphmx.com [139.138.37.100])
 by mx.groups.io with SMTP id smtpd.web10.14711.1706067140633529332
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 19:32:21 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: fujitsu.com, ip: 139.138.37.100, mailfrom: wangmy@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="126391863"
X-IronPort-AV: E=Sophos;i="6.05,215,1701097200"; 
   d="scan'208";a="126391863"
Received: from unknown (HELO oym-r4.gw.nic.fujitsu.com) ([210.162.30.92])
  by esa12.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jan 2024 12:32:18 +0900
Received: from oym-m2.gw.nic.fujitsu.com (oym-nat-oym-m2.gw.nic.fujitsu.com [192.168.87.59])
	by oym-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id F298AD9D8F
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 12:32:15 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id 2E8EDBF4AF
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 12:32:15 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id C4FB820081329
	for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 12:32:14 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.187])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 2EBEE1A006A;
	Wed, 24 Jan 2024 11:32:14 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: jpuhlman@mvista.com,
	Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-cgl] [PATCH] resource-agents: Fix buildpaths warning.
Date: Wed, 24 Jan 2024 11:32:01 +0800
Message-Id: <1706067121-3182-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28138.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28138.004
X-TMASE-Result: 10-5.091600-10.000000
X-TMASE-MatchedRID: mSaJHD8p5SyDGAVzcU+EbTz6L+U/pejxYDNn6z+XlJbfUZT83lbkEHKn
	6DBj/gsEHpUu8HaArppde2TGwgDbho20xpayFHBZfzgVmnL/olXYjw1QqLfrRltRKarSV80bo8W
	MkQWv6iV3LAytsQR4e1cppCzPq+1UsjvNV98mpPNwdFrtuPjyPGfDOcqNPRN3RpvD+COWV1mZ1R
	+z7MblMOXCdvESbsdpHM0Cw+VqLlveOo3WIpGg7xAh6h1sJ0Ggm+y9HB2J3ww=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 03:32:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62252

From: Wang Mingyu <wangmy@fujitsu.com>

WARNING: resource-agents-4.5.0-r0 do_package_qa: QA Issue: File /usr/lib/ocf/lib/heartbeat/ocf-binaries in package resource-agents contains reference to TMPDIR [buildpaths]

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index 357669a..a1b6624 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -63,6 +63,7 @@ EXTRA_OECONF += "--disable-fatal-warnings \
 do_install:append() {
     rm -rf ${D}${localstatedir}/run
     rm -rf ${D}${localstatedir}
+    sed -i 's,${TMPDIR},${bindir},g' ${D}${libdir}/ocf/lib/heartbeat/ocf-binaries
 }
 
 # tickle_tcp is published under GPLv3, we just split it into ${PN}-extra,
-- 
2.34.1


