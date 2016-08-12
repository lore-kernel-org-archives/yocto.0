Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D7F0E01041; Thu, 11 Aug 2016 18:06:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B50E0103D
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:18 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id h186so581273pfg.2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0I1RLQY/7PbnpQnDWeybKVGg4MTsyUGVqIPHjN2Xpps=;
	b=obEXidnj37c7vyStwnwHKA/c7rcRSqIxNd99LlCnqlMdPWSqd/51cjW0uT6bQRUH0i
	G8zGP3A0aGzdz3cmCaLnyp9Kn+CZEbfFpqFamg5SPQLwJSxsWHVjoJSC4mmsJUQfGcZ3
	xAbegX1UejuU0/V+xQ7EBWlD7dJIAik4mKrBKU67c3hckhyy5Flme0PCEKnviCDXjfKV
	XuKqb+daQZUAeaye0lTtzQxbegjswEVQoQZoMuKhQhc6kWKSivXD/XBjHNivVuusZjgH
	V+7CETw/mBki9ix531WUVnKQjKeubK9RvFmpOco9L/6cJYZMM0FOQPWpkHnejvc/RqXW
	rabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0I1RLQY/7PbnpQnDWeybKVGg4MTsyUGVqIPHjN2Xpps=;
	b=PqtSnSc2rKSndWcAY6ZA03dioT0JFZhWa+B6Oc3KQC3xREGBX8FAIE1WmaaGNi+wZM
	sSYhzg7kCznICV1RzDm49H+5MLnfacVsy8GTYYonzrg4laI634vuV6zMoJ0v+MwaXIDK
	iudC0AcPnOEdYOKS6xxjh8PClHA0Lrdw1+r9mXr9UjJQczSyyGJUgl2e6C9Nu0Sk/tFJ
	00FiwvZZdJd6IxiqdOdk0RXmzka+ECQIhRyTQ+RhPUaXSJM5rrVM/f8eg+gqhcSB4+Hh
	WkQ0G4obRa4jQqCAzYyB7NNc0akciHbFiPTGCRSajSl/9zYUMMPVM0LJK1S+7Mbhxg8O
	WMrw==
X-Gm-Message-State: AEkoousMhTcDv+iHSdWTYoHd8LvEElQ80DHG7nDsEzPKRCZG4SYYMAj8azjrs/4vwIylGg==
X-Received: by 10.98.74.201 with SMTP id c70mr22318660pfj.113.1470963978109;
	Thu, 11 Aug 2016 18:06:18 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:17 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:48 -0700
Message-Id: <20160812010608.31182-3-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 03/23] linux-raspberrypi-base.bbclass: support for .dtbo files for dtb overlays
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:19 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
Add support for both variants of overlays ("-overlay.dtb" and ".dtbo")
Change which variant needs to be supported based on the kernel version

CAUTION: when called from IMAGE_CMD_rpi-sdimg, 'TMPDIR' is not set, causing 'STAGING_KERNEL_BUILDDIR' to not be expanded, causing get_kernelversion_file() to fail!
To avoid this problem, get_dts() and split_overlays() MUST be called with the kernel version parameter set, when called from IMAGE_CMD_rpi-sdimg!

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
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
2.9.2


