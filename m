Return-Path: <andrei@gherzan.ro>
Received: from mail-qe0-f51.google.com (mail-qe0-f51.google.com
	[209.85.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A76DDE01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:38 -0800 (PST)
Received: by mail-qe0-f51.google.com with SMTP id t7so387413qeb.24
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 08:19:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=LO0ew2ag2Wsv8efHtZmYBKdSuvX76KHCtVtIC+UWUjo=;
	b=FJqH/dthOMH3FdafDrGznPV5Sufi5K3amXzLxisDIrKTiRSTaFT7edtdGZWj84SpMM
	nm4SqgfKZPMtklgOm7ooEpn4xlwNE9RAZ6G2tbv9F3OQ8e6mynKD0C7iOBJINDR9xL8M
	xq/qSzDUz6l6v1jTL/MaytcUxdxtwFJ6X51LdaA+95k5BHsyaecv+o1bww9dixeVBUtt
	Z6oCADkg0hBMvBSabwka0jfJ/2WvtBVctwdUtRX/sTiOg2Wi0AQU7mqxsGDVUru8CWvf
	47pB9nYP2wIEBRQuHsSmIeOnvHfO/gO8PYiP35QG65hEbjv0NGxl7Pjn1Vm3bKzMaNGO
	k8aQ==
X-Gm-Message-State: ALoCoQnX51VqPBEFodj5ADzGUGuXcgaFq/yOXaiqm2AqfGEjDJFJKkZJyRkVpZ2gUCL0wTlbDymE
X-Received: by 10.49.59.193 with SMTP id b1mr4123628qer.36.1384359577434;
	Wed, 13 Nov 2013 08:19:37 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id p17sm77086894qak.4.2013.11.13.08.19.35
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Nov 2013 08:19:36 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 13 Nov 2013 18:19:21 +0200
Message-Id: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH V2 1/6] bcm2835: Update to version 1.32
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
X-List-Received-Date: Wed, 13 Nov 2013 16:19:40 -0000

From: Alexandru Niculita <alexnick87@gmail.com>

Change-Id: I68721f30c9551b392d2851a96d9819524a088faf
Signed-off-by: Alexandru Niculita <alexnick87@gmail.com>
---
 recipes-bcm/bcm2835/bcm2835_1.32.bb | 42 ++++++++++++++++++++++++++++++++++++
 recipes-bcm/bcm2835/bcm2835_1.9.bb  | 43 -------------------------------------
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
1.8.1.4


