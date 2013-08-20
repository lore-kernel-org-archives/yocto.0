Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B4A0E0158F
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:57 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id h10so345491eaj.11
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=u1gpYVto/xSqjOdtRztB8A6qYt0nwSeGcEVvxDCARI4=;
	b=nEe9FD97HL+oVUFCom8qAF2pMd3cbIwmQqKuML4D+zYZgfhW/be12QC55KQwg5dKBG
	/x516koaBHVm841Ok4zqfGItVJzj3leq0YPYFDorrwXNrP6u4pNLIvISLX8lcA5EAnyz
	yEMc/R6UnjgxD+VlJwirUVRw6LM5jGfAwlWp8hIpUL8gDfObagDUaL4xBy9Fc7SQvxIn
	1kUzE8NSJpbJRIxqaXgtY8H1DAm+GDOXDvyW2CWDEoMYR8L9Hxo+E6+GVD08muh3qMRW
	34lW8JITQce59x+7Nr094Kk3cK3TSCHCfIzlKXGGhyavBX3ctM5+hQhNgKHZ5C5OtcK7
	3UXQ==
X-Gm-Message-State: ALoCoQn0TXAUeYPtr6nNF4BxdvDvT/wZA7gpckV98sSpuGGlW5ayqPu8K1qOjV7AWYlxnF7QOyS0
X-Received: by 10.14.174.195 with SMTP id x43mr3503065eel.47.1377018176357;
	Tue, 20 Aug 2013 10:02:56 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:55 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:35 +0300
Message-Id: <1377018158-2983-8-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 08/11] bcm2835: Update to v1.9
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:57 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/bcm2835/bcm2835_1.8.bb |   42 -----------------------------------
 recipes-bcm/bcm2835/bcm2835_1.9.bb |   43 ++++++++++++++++++++++++++++++++++++
 2 files changed, 43 insertions(+), 42 deletions(-)
 delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.8.bb
 create mode 100644 recipes-bcm/bcm2835/bcm2835_1.9.bb

diff --git a/recipes-bcm/bcm2835/bcm2835_1.8.bb b/recipes-bcm/bcm2835/bcm2835_1.8.bb
deleted file mode 100644
index 40f9be5..0000000
--- a/recipes-bcm/bcm2835/bcm2835_1.8.bb
+++ /dev/null
@@ -1,42 +0,0 @@
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
-SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-1.8.tar.gz"
-
-SRC_URI[md5sum] = "cca8500049d4ebf9087de4bd1601d185"
-SRC_URI[sha256sum] = "64be77b10aaf48ecb2a9022e13057f3b564093916875c0fc56373b4142dd5cae"
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
diff --git a/recipes-bcm/bcm2835/bcm2835_1.9.bb b/recipes-bcm/bcm2835/bcm2835_1.9.bb
new file mode 100644
index 0000000..d6858f4
--- /dev/null
+++ b/recipes-bcm/bcm2835/bcm2835_1.9.bb
@@ -0,0 +1,43 @@
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
+PR = "r0"
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-1.9.tar.gz"
+
+SRC_URI[md5sum] = "c102938afe9f0cfa930a0255c422f792"
+SRC_URI[sha256sum] = "0dc6ee5a261e76b103a04534c1b8ebc20dce8921dec2452785100812f978c883"
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
-- 
1.7.9.5


