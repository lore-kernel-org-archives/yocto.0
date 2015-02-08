Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBF88E0098E; Sun,  8 Feb 2015 03:58:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97487E0097F
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 03:58:53 -0800 (PST)
Received: by mail-lb0-f171.google.com with SMTP id b6so2602226lbj.2
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 03:58:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=uGAlyvKiCj0aKIgBAYayxcIVqIFIYI+hr4jlZ6No3SA=;
	b=Vt8h4pOIwtj4BHIfN+WF7ENYFll416+V0ijrQLz7uphw7Vvq9bJLEi6QEJt53JKgnd
	Lj1qmgNlrJAg3CTzOqsu/lLizNEGJ14unweeMkHwBvuQo8Oa5+w285bKQ74uAdjr/LMv
	yFxhtcs/7i4IFNdGpWbwFsBBG7dLe3U34scqx7f/ujc2/fxcYcRXCNHgzxNZ2MOEZAkl
	ODHzj+PlBMiXDfM+oJkc/CSeW6sEuDDuU2uSkwFmT3LECR5tzgsYtotIR9OlFzZqGJzi
	9HOLPWMpLaMWypEw6P7Aan9+CvdX+fmJ+qdwoUXcT0DhevOdlf/yclWR/MOhaeMgPta2
	O1YQ==
X-Gm-Message-State: ALoCoQmF5laTIsLGAmNGSiptqCMxYpEqts/O2oQjpvuE3oJyHwbcMm5shrZXxPvjbediEEGqXbMs
X-Received: by 10.112.180.135 with SMTP id do7mr11399788lbc.23.1423396732431; 
	Sun, 08 Feb 2015 03:58:52 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id f5sm1444085laf.9.2015.02.08.03.58.51
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Feb 2015 03:58:51 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun,  8 Feb 2015 13:58:35 +0200
Message-Id: <1423396716-22626-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
References: <1423396716-22626-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 4/5] bcm2835: Update to v1.38
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
X-List-Received-Date: Sun, 08 Feb 2015 11:58:54 -0000

Change-Id: Iebac94415602454dd4e2808c8e02d0083f804029
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/bcm2835/bcm2835_1.36.bb | 40 -------------------------------------
 recipes-bcm/bcm2835/bcm2835_1.38.bb | 40 +++++++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 40 deletions(-)
 delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.36.bb
 create mode 100644 recipes-bcm/bcm2835/bcm2835_1.38.bb

diff --git a/recipes-bcm/bcm2835/bcm2835_1.36.bb b/recipes-bcm/bcm2835/bcm2835_1.36.bb
deleted file mode 100644
index 6997565..0000000
--- a/recipes-bcm/bcm2835/bcm2835_1.36.bb
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
-SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "3299ddaef60f80b7f85de3318f08dee7"
-SRC_URI[sha256sum] = "b4dfcdb453d44ba9ff55634ce7e0ddca21b96355ab61e40b4c3afb9406d4b8d2"
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
diff --git a/recipes-bcm/bcm2835/bcm2835_1.38.bb b/recipes-bcm/bcm2835/bcm2835_1.38.bb
new file mode 100644
index 0000000..71395af
--- /dev/null
+++ b/recipes-bcm/bcm2835/bcm2835_1.38.bb
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
+SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "22d431f7402b9c7f93baef348a459cb1"
+SRC_URI[sha256sum] = "90c993559ea273ae2e0587f6b815f7c80f19f47ee7f8aa7799b883f975196dbe"
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
2.1.0


