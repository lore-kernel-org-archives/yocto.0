Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61F72E007EC
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:13 -0800 (PST)
Received: by mail-ea0-f181.google.com with SMTP id m10so2720729eaj.12
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2014 11:16:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=fj2zDLUrrpN8neKRP9SmsBh+XTKg0nlu1bivQ0sOd6Q=;
	b=Gqol+9Ids8Hd2DML8Hr39TopSvkE5So7Nh+CZOHhpsWO/2joYWy2vvvHN2GwE4RScm
	+QAcabfxfXNfTYdDgtTXa6HXnGUXShzsVvq83E43VTyfuUmC8TDehO158ccsVTp9ZUA2
	scQDHDzPErnftdth4ia6ePPJUXqyXOm96nrB8sHFbaB/8PyOhmRdII4/DgXPU4JmZJfq
	6krz+rDrT+FrWasBdWmL8iK5XUUYLkgLCN45zEo0NBKcAMKGAOwsUQYP/tAD/IorRmOs
	jgn5yHbdyob04nsTaXBfmiaaFZEE8kqX8Vu9GKaMvnU2QZOZ3g9qTpvFgktQfCHZzrN4
	Xb1A==
X-Gm-Message-State: ALoCoQmkhjv6nlkcYXJc3sbdKbABNHrPbXCTczWdRGxgO4TEPYkySs/g6co3RNsygHpMPxNDRDGv
X-Received: by 10.14.5.67 with SMTP id 43mr566707eek.93.1390158972313;
	Sun, 19 Jan 2014 11:16:12 -0800 (PST)
Received: from localhost.localdomain ([79.116.111.233])
	by mx.google.com with ESMTPSA id 4sm46036842eed.14.2014.01.19.11.16.10
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Jan 2014 11:16:11 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 19 Jan 2014 21:15:53 +0200
Message-Id: <1390158956-24554-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
References: <1390158956-24554-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 1/4] bcm2835: Update to v1.36
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
X-List-Received-Date: Sun, 19 Jan 2014 19:16:14 -0000

Change-Id: I8b55d7233919b6ebe68b9504eb2504bedb1846e1
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/bcm2835/bcm2835_1.34.bb | 41 -------------------------------------
 recipes-bcm/bcm2835/bcm2835_1.36.bb | 41 +++++++++++++++++++++++++++++++++++++
 2 files changed, 41 insertions(+), 41 deletions(-)
 delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.34.bb
 create mode 100644 recipes-bcm/bcm2835/bcm2835_1.36.bb

diff --git a/recipes-bcm/bcm2835/bcm2835_1.34.bb b/recipes-bcm/bcm2835/bcm2835_1.34.bb
deleted file mode 100644
index 8ff2bdd..0000000
--- a/recipes-bcm/bcm2835/bcm2835_1.34.bb
+++ /dev/null
@@ -1,41 +0,0 @@
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
-
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "35df4a6188e36796a07985f1561fb8a2"
-SRC_URI[sha256sum] = "ea99538ea17ebed38973743d84b1358e8c0fd311e8828c4ef91694f65a1073ff"
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
diff --git a/recipes-bcm/bcm2835/bcm2835_1.36.bb b/recipes-bcm/bcm2835/bcm2835_1.36.bb
new file mode 100644
index 0000000..b5d9992
--- /dev/null
+++ b/recipes-bcm/bcm2835/bcm2835_1.36.bb
@@ -0,0 +1,41 @@
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
+SRC_URI[md5sum] = "3299ddaef60f80b7f85de3318f08dee7"
+SRC_URI[sha256sum] = "b4dfcdb453d44ba9ff55634ce7e0ddca21b96355ab61e40b4c3afb9406d4b8d2"
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
-- 
1.8.1.4


