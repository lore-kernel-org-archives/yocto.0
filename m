Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58134E00ADD; Wed, 21 Oct 2015 14:12:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DF29E00957
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:49 -0700 (PDT)
Received: by wicfv8 with SMTP id fv8so93503880wic.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Sin9xJRUzFxxYap8jg8Y2/JUF5hoaGTSXo25KPEYDjs=;
	b=HIZZlgJfAScw1U8hlBnHvNHeUXBzVd4pKQeqYbAgokoRHlG7N4s725lYoyRiJWDOiu
	965/RNtM2rrYruf+6WVtSPCavTSeV6oCN4DQT3O/jgBRZvM6cL1IMXxckuTPc/6F0fA4
	5zEpHbu3+i0/kuXXvHzvCotsGCepL4UZuCAfGY3drOzMOO4AiLCppYh1gBYZw9B340f2
	m205GySBlta6uLqBK+p5owgE6NMbFtedwd5qrAw0ITyQ0PkAZ+tuJA5grnJ3rh7i/UFG
	uyz2VoYjICEMS5eEWcMHQTJmKECY9g8mUEDDujq03iPRUYaQ0t8rt1XVoP7ZadcUNEOW
	1xGQ==
X-Gm-Message-State: ALoCoQkPlWF7HV/5u8hVF24KY7fDdB/deTQl4qv7C2am6LdSYsTZKIf8p1LgmsRjZxVse5687Bzt
X-Received: by 10.180.37.135 with SMTP id y7mr3880530wij.89.1445461969358;
	Wed, 21 Oct 2015 14:12:49 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:48 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:06 +0200
Message-Id: <1445461931-18349-6-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 06/11] bcm2835: Update to v1.46
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:56 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/bcm2835/bcm2835_1.44.bb | 40 --------------------------------
 recipes-devtools/bcm2835/bcm2835_1.46.bb | 40 ++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 40 deletions(-)
 delete mode 100644 recipes-devtools/bcm2835/bcm2835_1.44.bb
 create mode 100644 recipes-devtools/bcm2835/bcm2835_1.46.bb

diff --git a/recipes-devtools/bcm2835/bcm2835_1.44.bb b/recipes-devtools/bcm2835/bcm2835_1.44.bb
deleted file mode 100644
index a0d349d..0000000
--- a/recipes-devtools/bcm2835/bcm2835_1.44.bb
+++ /dev/null
@@ -1,40 +0,0 @@
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
-COMPATIBLE_MACHINE = "raspberrypi"
-
-SRC_URI = "http://www.airspayce.com/mikem/bcm2835/bcm2835-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "a974af22a2fa2c0b131becd55c4b31c0"
-SRC_URI[sha256sum] = "608b60bf95ff909a027155303090b71643f333116584d4a2c3b8f6edbf49c612"
-
-inherit autotools
-
-do_compile_append() {
-    # Now compiling the examples provided by the package
-    mkdir -p ${B}/examples
-    for file in `ls ${S}/examples`; do
-        ${CC} ${S}/examples/${file}/${file}.c -o ${B}/examples/${file} -Bstatic -L${B}/src -lbcm2835 -I${S}/src
-    done
-}
-
-do_install_append() {
-    install -d ${D}/${libdir}/${BPN}
-    for file in ${B}/examples/*
-    do
-        install -m 0755 ${file} ${D}/${libdir}/${BPN}
-    done
-}
-
-PACKAGES += "${PN}-tests"
-
-FILES_${PN} = ""
-FILES_${PN}-tests = "${libdir}/${BPN}"
-FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
diff --git a/recipes-devtools/bcm2835/bcm2835_1.46.bb b/recipes-devtools/bcm2835/bcm2835_1.46.bb
new file mode 100644
index 0000000..dd37b8f
--- /dev/null
+++ b/recipes-devtools/bcm2835/bcm2835_1.46.bb
@@ -0,0 +1,40 @@
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
+COMPATIBLE_MACHINE = "raspberrypi"
+
+SRC_URI = "http://www.airspayce.com/mikem/bcm2835/bcm2835-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "3a40c01ee7d81fbff80c54fbe1a351b5"
+SRC_URI[sha256sum] = "fc6b0412525e6b7e85aeffec67e2d01a99fb906346620041e6684d59ea5517a7"
+
+inherit autotools
+
+do_compile_append() {
+    # Now compiling the examples provided by the package
+    mkdir -p ${B}/examples
+    for file in `ls ${S}/examples`; do
+        ${CC} ${S}/examples/${file}/${file}.c -o ${B}/examples/${file} -Bstatic -L${B}/src -lbcm2835 -I${S}/src
+    done
+}
+
+do_install_append() {
+    install -d ${D}/${libdir}/${BPN}
+    for file in ${B}/examples/*
+    do
+        install -m 0755 ${file} ${D}/${libdir}/${BPN}
+    done
+}
+
+PACKAGES += "${PN}-tests"
+
+FILES_${PN} = ""
+FILES_${PN}-tests = "${libdir}/${BPN}"
+FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
-- 
2.6.0


