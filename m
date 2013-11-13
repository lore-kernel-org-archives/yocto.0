Return-Path: <alexnick87@gmail.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9651E01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:37:12 -0800 (PST)
Received: by mail-qc0-f180.google.com with SMTP id e9so319488qcy.25
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=XQ51iIiixDQABM45nra0X4GFvqS5ed5HAddwrHkbSMY=;
	b=VONCogD+ocql/frJxuuz62NEdKuQgmfrJVOCM+mxepK+dZdUGo1c92XrZ4hijlC6+X
	sDUr987mIGlPh5O/03JHLx2WiFladUDs0QRzvHFFc/TljPbhmLKAFOFOmQkMAAeVqLg7
	FIyD1qdwuXcoe57YrnrSilGffkRQn3oVmX6jke6vX7CsuZjx/J4XLMgEE/o1rcRMym40
	Fte6NrgbpoLOD5X5Z2DmAjmKfXWFLnKbhlkbC1VrnC7qzj+JddZCRGRb0GiECPlCljO7
	0WzGh+DvjegDNJjOxNwP/rKaC9wuxxySNwnnBtAyQ3SHx5OiV38kbRAasWyVzy41reOk
	UFVg==
X-Received: by 10.224.73.200 with SMTP id r8mr68259972qaj.72.1384357031768;
	Wed, 13 Nov 2013 07:37:11 -0800 (PST)
Received: from otp-aniculit-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id jw9sm73614743qeb.2.2013.11.13.07.37.10
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 13 Nov 2013 07:37:11 -0800 (PST)
From: Alexandru Niculita <alexnick87@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 17:37:02 +0200
Message-Id: <1384357022-32125-1-git-send-email-alexnick87@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-raspberrypi][PATCH 1/1] bcm2835: Update to version 1.32
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
X-List-Received-Date: Wed, 13 Nov 2013 15:37:13 -0000

Change-Id: I68721f30c9551b392d2851a96d9819524a088faf
Signed-off-by: Alexandru Niculita <alexnick87@gmail.com>
---
 recipes-bcm/bcm2835/bcm2835_1.32.bb |   42 ++++++++++++++++++++++++++++++++++
 recipes-bcm/bcm2835/bcm2835_1.9.bb  |   43 -----------------------------------
 2 files changed, 42 insertions(+), 43 deletions(-)
 create mode 100644 recipes-bcm/bcm2835/bcm2835_1.32.bb
 delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.9.bb

diff --git a/recipes-bcm/bcm2835/bcm2835_1.32.bb b/recipes-bcm/bcm2835/bcm2835_1.32.bb
new file mode 100644
index 0000000..2dc5b22
--- /dev/null
+++ b/recipes-bcm/bcm2835/bcm2835_1.32.bb
@@ -0,0 +1,42 @@
+DESCRIPTION = "Package that provides access to GPIO and other IO\
+functions on the Broadcom BCM 2835 chip, allowing access to the\
+GPIO pins on the 26 pin IDE plug on the RPi board"
+SECTION = "base"
+HOMEPAGE = "http://www.open.com.au/mikem/bcm2835"
+AUTHOR = "Mike McCauley (mikem@open.com.au)"
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "085239569554de5ee6649fe8bb123379"
+SRC_URI[sha256sum] = "97e8aece4ff45b1779212473aa3b1d3f43cc9a8427afa3be718f690949e0ec20"
+
+
+PACKAGES += "${PN}-tests"
+
+FILES_${PN} = ""
+FILES_${PN}-tests = "${libdir}/${BPN}"
+FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
+
+inherit autotools
+
+do_compile_append() {
+    #Now compiling the examples provided by the package
+    for file in examples/*
+    do
+        ${CC} ${file}/${file##*/}.c -o ${file}/${file##*/} -Bstatic -L${S}/src -lbcm2835 -I${S}/src
+    done
+}
+
+do_install_append() {
+    install -d ${D}/${libdir}/${BPN}
+    for file in examples/*
+    do
+        install -m 0755 ${file}/${file##*/} ${D}/${libdir}/${BPN}
+    done
+}
diff --git a/recipes-bcm/bcm2835/bcm2835_1.9.bb b/recipes-bcm/bcm2835/bcm2835_1.9.bb
deleted file mode 100644
index d6858f4..0000000
--- a/recipes-bcm/bcm2835/bcm2835_1.9.bb
+++ /dev/null
@@ -1,43 +0,0 @@
-DESCRIPTION = "Package that provides access to GPIO and other IO\
-functions on the Broadcom BCM 2835 chip, allowing access to the\
-GPIO pins on the 26 pin IDE plug on the RPi board"
-SECTION = "base"
-HOMEPAGE = "http://www.open.com.au/mikem/bcm2835"
-AUTHOR = "Mike McCauley (mikem@open.com.au)"
-
-LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
-
-PR = "r0"
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-1.9.tar.gz"
-
-SRC_URI[md5sum] = "c102938afe9f0cfa930a0255c422f792"
-SRC_URI[sha256sum] = "0dc6ee5a261e76b103a04534c1b8ebc20dce8921dec2452785100812f978c883"
-
-
-PACKAGES += "${PN}-tests"
-
-FILES_${PN} = ""
-FILES_${PN}-tests = "${libdir}/${BPN}"
-FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
-
-inherit autotools
-
-do_compile_append() {
-    #Now compiling the examples provided by the package
-    for file in examples/*
-    do
-        ${CC} ${file}/${file##*/}.c -o ${file}/${file##*/} -Bstatic -L${S}/src -lbcm2835 -I${S}/src
-    done
-}
-
-do_install_append() {
-    install -d ${D}/${libdir}/${BPN}
-    for file in examples/*
-    do
-        install -m 0755 ${file}/${file##*/} ${D}/${libdir}/${BPN}
-    done
-}
-- 
1.7.9.5


