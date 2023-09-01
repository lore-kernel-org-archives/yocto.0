Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22DD4CA0FE2
	for <webhook@archiver.kernel.org>; Fri,  1 Sep 2023 01:20:33 +0000 (UTC)
Received: from esa4.hc1455-7.c3s2.iphmx.com (esa4.hc1455-7.c3s2.iphmx.com [68.232.139.117])
 by mx.groups.io with SMTP id smtpd.web10.10937.1693531228611387538
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Aug 2023 18:20:29 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: fujitsu.com, ip: 68.232.139.117, mailfrom: leimaohui@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="130340918"
X-IronPort-AV: E=Sophos;i="6.02,218,1688396400"; 
   d="scan'208";a="130340918"
Received: from unknown (HELO oym-r4.gw.nic.fujitsu.com) ([210.162.30.92])
  by esa4.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2023 10:20:25 +0900
Received: from oym-m4.gw.nic.fujitsu.com (oym-nat-oym-m4.gw.nic.fujitsu.com [192.168.87.61])
	by oym-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id BE1FFDE56B
	for <yocto@lists.yoctoproject.org>; Fri,  1 Sep 2023 10:20:23 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id E50B6D6448
	for <yocto@lists.yoctoproject.org>; Fri,  1 Sep 2023 10:20:22 +0900 (JST)
Received: from ubuntu20.g08.fujitsu.local (unknown [10.167.225.227])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 775ED20078960;
	Fri,  1 Sep 2023 10:20:22 +0900 (JST)
From: leimaohui@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-security][PATCH] ccs-tools: Fix do_package QA Issue.
Date: Fri,  1 Sep 2023 09:20:21 +0800
Message-Id: <20230901012021.45320-1-leimaohui@fujitsu.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-27848.003
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-27848.003
X-TMASE-Result: 10--4.967900-10.000000
X-TMASE-MatchedRID: KB9A41wP/VyFxmnVS90dVbnHu4BcYSmtCKQyo+jPjidC7OA6rtatFSqU
	3RD+dVC4/7aV7OHQRwbmn3xyPJAJoh2P280ZiGmRngIgpj8eDcBpkajQR5gb3savT21DsLD/UEh
	Wy9W70AEnRE+fI6etkmtF0A47yn2fn7PS/U5n87mMrarerM84zpv2cOxSVPN3RYZWffrMbZvIp+
	U2hY2cYHm7eDU8elNk6xbgarGL9NDNX/IcArgKPsBgvHuudtHysNDybdOqCWh6WkJecb4mO8MYF
	nUbyvVJ/YPqDH/SjOk=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Sep 2023 01:20:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60922

From: Lei Maohui <leimaohui@fujitsu.com>

After usrmerge had been enabled, paxctl has the fowllowing error:
ERROR: ccs-tools-1.8.9-r0 do_package: QA Issue: ccs-tools: Files/directories were installed but not shipped in any package:
  /sbin/ccs-init

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 recipes-mac/ccs-tools/ccs-tools_1.8.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
index ff800ce..8185e51 100644
--- a/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
+++ b/recipes-mac/ccs-tools/ccs-tools_1.8.9.bb
@@ -23,7 +23,7 @@ do_make(){
 }
 
 do_install(){
-    oe_runmake INSTALLDIR=${D}  USRLIBDIR=${libdir} install
+    oe_runmake INSTALLDIR=${D}  USRLIBDIR=${libdir} SBINDIR=${sbindir} install
 }
 
 PACKAGE="${PN} ${PN}-dbg ${PN}-doc"
-- 
2.34.1


