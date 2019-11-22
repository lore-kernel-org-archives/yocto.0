Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3319.1574405329598627660
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2019 22:48:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D17BE00D16; Thu, 21 Nov 2019 22:48:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71465E00BA1
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 22:48:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAM6mfJw015122
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Nov 2019 22:48:41 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 21 Nov
 2019 22:48:40 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
CC: <Yair.Itzhaki@docusign.com>
Subject: [meta-selinux][warrior][PATCH 1/2] Revert "mesa: switch to meson build"
Date: Fri, 22 Nov 2019 14:48:35 +0800
Message-ID: <20191122064836.9993-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Content-Type: text/plain

This reverts commit 184857a52ecc9b7088021d7362c7d85e1c3551d6.

The mesa hasn't switched to meson build in this branch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-graphics/mesa/mesa_%.bbappend  | 2 +-
 recipes-graphics/mesa/mesa_selinux.inc | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)
 create mode 100644 recipes-graphics/mesa/mesa_selinux.inc

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index 02c4918..b0b03ec 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,2 +1,2 @@
-inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'meson-selinux', '', d)}
+require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
 
diff --git a/recipes-graphics/mesa/mesa_selinux.inc b/recipes-graphics/mesa/mesa_selinux.inc
new file mode 100644
index 0000000..0004f71
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_selinux.inc
@@ -0,0 +1,6 @@
+inherit enable-selinux
+
+# But wait!  There's more!  mesa builds a host program named builtin_compiler
+# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
+#
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
-- 
2.17.1

