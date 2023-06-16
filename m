Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7441EB64D9
	for <webhook@archiver.kernel.org>; Fri, 16 Jun 2023 02:35:25 +0000 (UTC)
Received: from esa8.hc1455-7.c3s2.iphmx.com (esa8.hc1455-7.c3s2.iphmx.com [139.138.61.253])
 by mx.groups.io with SMTP id smtpd.web11.35971.1686882924000931840
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 19:35:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: fujitsu.com, ip: 139.138.61.253, mailfrom: wangmy@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="108824218"
X-IronPort-AV: E=Sophos;i="6.00,246,1681138800"; 
   d="scan'208";a="108824218"
Received: from unknown (HELO oym-r2.gw.nic.fujitsu.com) ([210.162.30.90])
  by esa8.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2023 11:35:21 +0900
Received: from oym-m3.gw.nic.fujitsu.com (oym-nat-oym-m3.gw.nic.fujitsu.com [192.168.87.60])
	by oym-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id 4451AF0760
	for <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 11:35:19 +0900 (JST)
Received: from aks-ab2.gw.nic.fujitsu.com (aks-ab2.gw.nic.fujitsu.com [192.51.207.12])
	by oym-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 6E95CD9AA4
	for <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 11:35:18 +0900 (JST)
Received: from ubuntu20.g08.fujitsu.local (unknown [10.167.225.227])
	by aks-ab2.gw.nic.fujitsu.com (Postfix) with ESMTP id 50CFE8829C;
	Fri, 16 Jun 2023 11:35:17 +0900 (JST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-java][PATCH] Fix build error as following:
Date: Fri, 16 Jun 2023 10:35:14 +0800
Message-Id: <20230616023514.53716-1-wangmy@fujitsu.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1408-9.0.0.1002-27694.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1408-9.0.1002-27694.004
X-TMASE-Result: 10--1.491500-10.000000
X-TMASE-MatchedRID: XZZXNV16gdtjAEhhEuKD9jllFsU0CXSPRzUPAqhCjtjAuQ0xDMaXkH4q
	tYI9sRE/5o/rYvVL+idftuJwrFEhTbeQq6mF2S4/rSFs54Y4wbX6C0ePs7A07blX3Pe+qTcqXmz
	GVfnblMw9rcB7icccbidlqnQbq0zWbIg3ZrJmekwwaZGgX4y7J+QVk7nX1bELkJxv2MHKQYeeol
	Bb9vOIwUmm9qhLcf1ysiVHQI/7266+6QVxiAZsda5sicnpScShiWAbBu8T+Gs=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jun 2023 02:35:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60322

From: Lei Maohui <leimaohui@fujitsu.com>

| g++: error: unrecognized command-line option ‘-fcanon-prefix-map’; did you mean ‘-fmacro-prefix-map=’?
| g++: error: unrecognized command-line option ‘-fcanon-prefix-map’; did you mean ‘-fmacro-prefix-map=’?
| g++: error: unrecognized command-line option ‘-fcanon-prefix-map’; did you mean ‘-fmacro-prefix-map=’?
| g++: error: unrecognized command-line option ‘-fcanon-prefix-map’; did you mean ‘-fmacro-prefix-map=’?
| g++: error: unrecognized command-line option ‘-fcanon-prefix-map’; did you mean ‘-fmacro-prefix-map=’?

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 recipes-core/openjdk/openjdk-8-common.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index 16e3816..5cb8fc4 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -26,6 +26,9 @@ SRC_URI = "\
     ${PATCHES_URI} \
 "
 
+export TARGET_CFLAGS
+export TARGET_CXXFLAGS
+
 do_configure:prepend () {
     export TOPDIR=${S}
     sed -i 's#\$TOPDIR#${S}#g' ${S}/common/autoconf/configure.ac
-- 
2.34.1


