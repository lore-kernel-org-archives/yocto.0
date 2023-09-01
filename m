Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B997CA0FE1
	for <webhook@archiver.kernel.org>; Fri,  1 Sep 2023 01:20:23 +0000 (UTC)
Received: from esa6.hc1455-7.c3s2.iphmx.com (esa6.hc1455-7.c3s2.iphmx.com [68.232.139.139])
 by mx.groups.io with SMTP id smtpd.web10.10933.1693531219022629371
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Aug 2023 18:20:19 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: fujitsu.com, ip: 68.232.139.139, mailfrom: leimaohui@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="131567425"
X-IronPort-AV: E=Sophos;i="6.02,218,1688396400"; 
   d="scan'208";a="131567425"
Received: from unknown (HELO yto-r4.gw.nic.fujitsu.com) ([218.44.52.220])
  by esa6.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Sep 2023 10:20:16 +0900
Received: from yto-m3.gw.nic.fujitsu.com (yto-nat-yto-m3.gw.nic.fujitsu.com [192.168.83.66])
	by yto-r4.gw.nic.fujitsu.com (Postfix) with ESMTP id D24D2CD6C4
	for <yocto@lists.yoctoproject.org>; Fri,  1 Sep 2023 10:20:13 +0900 (JST)
Received: from aks-ab1.gw.nic.fujitsu.com (aks-ab1.gw.nic.fujitsu.com [192.51.207.11])
	by yto-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 1E06F20A48
	for <yocto@lists.yoctoproject.org>; Fri,  1 Sep 2023 10:20:13 +0900 (JST)
Received: from ubuntu20.g08.fujitsu.local (unknown [10.167.225.227])
	by aks-ab1.gw.nic.fujitsu.com (Postfix) with ESMTP id 3D14A2FC62A7;
	Fri,  1 Sep 2023 10:20:12 +0900 (JST)
From: leimaohui@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-security][PATCH] paxctl: Fix do_package QA Issue.
Date: Fri,  1 Sep 2023 09:20:10 +0800
Message-Id: <20230901012010.45269-1-leimaohui@fujitsu.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1408-9.0.0.1002-27848.003
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1408-9.0.1002-27848.003
X-TMASE-Result: 10--11.094200-10.000000
X-TMASE-MatchedRID: ivZl9ql0f9CFxmnVS90dVbnHu4BcYSmtCKQyo+jPjic7frB/dYje8Ypb
	wG9fIuITSi/fasbKxOB/iseCANV011nAOGOnLpRWKsurITpSv+PBOVz0Jwcxl1gLks93sG9tB1e
	gkZdCJXdsXqCizdUSQ9o7nBvaGi9BXEG1LCXlWK6628cXbnOhT8z6uuoymA7HOTfgsq2649rSn0
	NplHOg3f8pW19mJIOmi1YHD3U/MkGtYv/FAmebjp4CIKY/Hg3Am4n49vyf9XEvM/mydp5vVCq2r
	l3dzGQ1vdxx3Tb8EfI/cvrF577t8naTfqTTILtdCHwtlvOkixTVQ9VRBhJuRQ==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Sep 2023 01:20:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60921

From: Lei Maohui <leimaohui@fujitsu.com>

After usrmerge had been enabled, paxctl has the fowllowing error:
ERROR: paxctl-0.9-r0 do_package: QA Issue: paxctl: Files/directories were installed but not shipped in any package:
  /sbin/paxctl

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 ...ckage-error-if-DESTDIR-is-set-to-usr.patch | 26 +++++++++++++++++++
 recipes-security/paxctl/paxctl_0.9.bb         |  4 ++-
 2 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/paxctl/paxctl/0001-To-fix-package-error-if-DESTDIR-is-set-to-usr.patch

diff --git a/recipes-security/paxctl/paxctl/0001-To-fix-package-error-if-DESTDIR-is-set-to-usr.patch b/recipes-security/paxctl/paxctl/0001-To-fix-package-error-if-DESTDIR-is-set-to-usr.patch
new file mode 100644
index 0000000..451cb7f
--- /dev/null
+++ b/recipes-security/paxctl/paxctl/0001-To-fix-package-error-if-DESTDIR-is-set-to-usr.patch
@@ -0,0 +1,26 @@
+From 824c5d7b96aeef1b4e182f657ac002bed6e14cd5 Mon Sep 17 00:00:00 2001
+From: Lei Maohui <leimaohui@fujitsu.com>
+Date: Thu, 31 Aug 2023 08:20:56 +0000
+Subject: [PATCH] To fix package error if DESTDIR is set to /usr.
+
+Upstream-Status: Inappropriate
+Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
+---
+ Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile b/Makefile
+index 0d7bc0c..46fd664 100644
+--- a/Makefile
++++ b/Makefile
+@@ -19,7 +19,7 @@ $(PROG).o: $(PROG).c $(PROG).h $(PROG)-elf.c
+
+ install: $(PROG)
+ #	$(MKDIR) $(DESTDIR)/sbin $(DESTDIR)$(MANDIR)
+-	$(INSTALL) -D --owner 0 --group 0 --mode a=rx $(PROG) $(DESTDIR)/sbin/$(PROG)
++	$(INSTALL) -D --owner 0 --group 0 --mode a=rx $(PROG) $(DESTDIR)/usr/sbin/$(PROG)
+	$(INSTALL) -D --owner 0 --group 0 --mode a=r $(PROG).1 $(DESTDIR)/$(MANDIR)/$(PROG).1
+
+ clean:
+--
+2.34.1
diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
index 5c9aff1..3d2f2a3 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -8,7 +8,9 @@ LIC_FILES_CHKSUM = "file://paxctl.c;beginline=1;endline=5;md5=0ddd065c61020dda79
                     file://paxctl-elf.c;beginline=1;endline=5;md5=99f453ce7f6d1687ee808982e2924813 \
 		   "
 
-SRC_URI = "http://pax.grsecurity.net/${BP}.tar.gz"
+SRC_URI = "http://pax.grsecurity.net/${BP}.tar.gz \
+           file://0001-To-fix-package-error-if-DESTDIR-is-set-to-usr.patch \
+"
 
 SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
 SRC_URI[sha256sum] = "a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
-- 
2.25.1


