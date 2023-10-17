Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 798D9CDB465
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 00:31:44 +0000 (UTC)
Received: from esa12.hc1455-7.c3s2.iphmx.com (esa12.hc1455-7.c3s2.iphmx.com [139.138.37.100])
 by mx.groups.io with SMTP id smtpd.web11.196720.1697502699469949125
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 17:31:39 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: fujitsu.com, ip: 139.138.37.100, mailfrom: wangmy@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="115774455"
X-IronPort-AV: E=Sophos;i="6.03,230,1694703600"; 
   d="scan'208";a="115774455"
Received: from unknown (HELO yto-r3.gw.nic.fujitsu.com) ([218.44.52.219])
  by esa12.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2023 09:31:36 +0900
Received: from yto-m2.gw.nic.fujitsu.com (yto-nat-yto-m2.gw.nic.fujitsu.com [192.168.83.65])
	by yto-r3.gw.nic.fujitsu.com (Postfix) with ESMTP id A3450D502F
	for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 09:31:34 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by yto-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id DB8BFD5E9A
	for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 09:31:33 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.52])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id D6126200501A2;
	Tue, 17 Oct 2023 09:31:32 +0900 (JST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: jpuhlman@mvista.com,
	Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-cgl] [PATCH] resource-agents: Fix error when do_patch
Date: Tue, 17 Oct 2023 08:31:24 +0800
Message-Id: <1697502684-3323-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-27940.003
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-27940.003
X-TMASE-Result: 10-2.145900-10.000000
X-TMASE-MatchedRID: EriUbUlPOKMvKBNTYKG+pTo39wOA02Lh9luJE23VaKgli8Y5a0svL/jg
	QrtXdZZtOelg+pLqPPGlRuDl56PXcFpCIuRr0RxKEXjPIvKd74DYjw1QqLfrRq0GJL2EV5pMIeF
	k6Jfz8ffi8zVgXoAltuJ5hXsnxp7jC24oEZ6SpSmcfuxsiY4QFCuLHbAHAxHT9UDEXQOHSdYIbn
	jIew1UBtrtECQ4QUvKiPx1gn7539+F9Eh6hUnzQnAn+HPGaHaC5f7rjIhsYmPhlNHHJ2imuOx9n
	1XpDqsJmC9SiJioatWbjnu8jwgbwH9jicWwFYB0PpCuffGH9zI=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 00:31:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61354

From: Wang Mingyu <wangmy@fujitsu.com>

To fix conflict when do_patch:
ERROR: resource-agents-4.5.0-r0 do_patch: QA Issue: Fuzz detected:

Applying patch autoconf-2.73.patch
patching file configure.ac
Hunk #1 succeeded at 883 with fuzz 2.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../resource-agents/autoconf-2.73.patch           | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
index af188d2..dd3e1d1 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/autoconf-2.73.patch
@@ -15,16 +15,17 @@ Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
  1 file changed, 1 deletion(-)
 
 diff --git a/configure.ac b/configure.ac
-index d682ad780..84444a525 100644
+index d682ad7..84444a5 100644
 --- a/configure.ac
 +++ b/configure.ac
 @@ -883,7 +883,6 @@ else
-		-Wno-strict-aliasing
-		-Wpointer-arith
-		-Wstrict-prototypes
+ 		-Wno-strict-aliasing
+ 		-Wpointer-arith 
+ 		-Wstrict-prototypes
 -		-Wunsigned-char
-		-Wwrite-strings"
-
+ 		-Wwrite-strings"
+ 
  # Additional warnings it might be nice to enable one day
---
+-- 
 2.34.1
+
-- 
2.34.1


