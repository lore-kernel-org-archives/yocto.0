Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5353BE00DA7; Wed, 20 Jul 2016 15:01:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85C1EE00DAB
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 15:01:43 -0700 (PDT)
Received: from localhost.localdomain (unknown [8.36.234.10])
	by msfrf2633.sfr.fr (SMTP Server) with ESMTP id EE1441C000C21;
	Thu, 21 Jul 2016 00:01:42 +0200 (CEST)
Received: from localhost.localdomain (unknown [8.36.234.10])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2633.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 00:01:42 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 06:00:38 +0800
Message-Id: <1469052039-7746-4-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
References: <1469052039-7746-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v6 3/4] linux-raspberrypi-base.bbclass: support for .dtbo files for dtb overlays
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jul 2016 22:01:44 -0000

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")
Change which variant needs to be supported based on the kernel version

CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_kernelversion_file() to fail!
To avoid this problem, get_dts() and split_overlays() MUST be called with the kernel version parameter set, when called from IMAGE_CMD_rpi-sdimg!

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 classes/linux-raspberrypi-base.bbclass | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 40beef1..930fc44 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -1,7 +1,8 @@
 inherit linux-kernel-base
 
-
 def get_dts(d, ver):
+    import re
+
     staging_dir = d.getVar("STAGING_KERNEL_BUILDDIR", True)
     dts = d.getVar("KERNEL_DEVICETREE", True)
 
@@ -20,20 +21,24 @@ def get_dts(d, ver):
 
     # Always turn off device tree support for kernel's < 3.18
     try:
-        if int(min_ver[0]) <= 3:
-            if int(min_ver[1]) < 18:
-                dts = ""
+        if int(min_ver[0]) >= 4:
+            if (int(min_ver[1]) < 4) or (int(min_ver[1]) == 4 and int(min_ver[2]) < 6):
+                dts = ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in dts.split()])
+        elif int(min_ver[1]) < 18:
+            dts = ""
     except IndexError:
         min_ver = None
 
     return dts
 
 
-def split_overlays(d, out):
-    dts = get_dts(d, None)
+def split_overlays(d, ver, out):
+    dts = get_dts(d, ver)
     if out:
         overlays = oe.utils.str_filter_out('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter_out('\S+\.dtbo$', overlays, d)
     else:
-        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d)
+        overlays = oe.utils.str_filter('\S+\-overlay\.dtb$', dts, d) + \
+                   " " + oe.utils.str_filter('\S+\.dtbo$', dts, d)
 
     return overlays
-- 
2.7.4


