Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3D52E00B3F; Thu,  8 May 2014 10:35:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f47.google.com (unknown [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DC9DE00B30
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:35:22 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id c13so1958289eek.20
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=3q4gDWIlblyCmXgKecROiiMp3fIeFrZQQ/FsZw3TTfY=;
	b=iMu4Go4auc/nB4CbLHa6GwDD/1UvDwtsPIV+2mRF/QTgX/pz4wYEATK7TgxDYRaGlA
	GoRc8r4TYGnPTRNM6uPnnGa0M6juMm5raPa07yvHwfidcgRiQujyMB391HYG1+UWQh9p
	qhjO+WCN8cBwmK6Pfs43vL5O4vyA3kBAy27aESBjS7aIk1UqsNqcv5iEqVPKGhRQqas9
	0a5gwjIfVz2WzxnhPZwg52Vrf65oWPgSvl9h8LIpj2flYCt7VeG8we6kDQDOiMXORfCP
	AT8CcezGPjAqmxzT8yNi1bWHorRyVYBTBFual0VT8aALghLdQkU6Yxm9U6AaGRZuf5LM
	wOLg==
X-Gm-Message-State: ALoCoQkDMbBy/Hvj2HLAJa2B5SlADlRKu8EFGv/PJ2D0qDeTV6i/ok+Ou+tb/oaD1WOfzPVD8+oB
X-Received: by 10.14.224.196 with SMTP id x44mr7181885eep.111.1399570023810;
	Thu, 08 May 2014 10:27:03 -0700 (PDT)
Received: from localhost.localdomain (5-13-208-17.residential.rdsnet.ro.
	[5.13.208.17])
	by mx.google.com with ESMTPSA id s46sm5593126ees.3.2014.05.08.10.27.02
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 May 2014 10:27:03 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu,  8 May 2014 20:26:53 +0300
Message-Id: <1399570014-28808-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.5.3
Subject: [meta-raspberrypi][PATCH 1/2] bcm2835: Fix recipe when using separate build directory
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
X-List-Received-Date: Thu, 08 May 2014 17:35:27 -0000

Change-Id: I18f41c1cd3a0b1158e96e6d2d4455268700d3496
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/bcm2835/bcm2835_1.36.bb | 25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/recipes-bcm/bcm2835/bcm2835_1.36.bb b/recipes-bcm/bcm2835/bcm2835_1.36.bb
index b5d9992..6997565 100644
--- a/recipes-bcm/bcm2835/bcm2835_1.36.bb
+++ b/recipes-bcm/bcm2835/bcm2835_1.36.bb
@@ -8,7 +8,6 @@ AUTHOR = "Mike McCauley (mikem@open.com.au)"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
-
 COMPATIBLE_MACHINE = "raspberrypi"
 
 SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
@@ -16,26 +15,26 @@ SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
 SRC_URI[md5sum] = "3299ddaef60f80b7f85de3318f08dee7"
 SRC_URI[sha256sum] = "b4dfcdb453d44ba9ff55634ce7e0ddca21b96355ab61e40b4c3afb9406d4b8d2"
 
-PACKAGES += "${PN}-tests"
-
-FILES_${PN} = ""
-FILES_${PN}-tests = "${libdir}/${BPN}"
-FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
-
 inherit autotools
 
 do_compile_append() {
-    #Now compiling the examples provided by the package
-    for file in examples/*
-    do
-        ${CC} ${file}/${file##*/}.c -o ${file}/${file##*/} -Bstatic -L${S}/src -lbcm2835 -I${S}/src
+    # Now compiling the examples provided by the package
+    mkdir -p ${B}/examples
+    for file in `ls ${S}/examples`; do
+        ${CC} ${S}/examples/${file}/${file}.c -o ${B}/examples/${file} -Bstatic -L${B}/src -lbcm2835 -I${S}/src
     done
 }
 
 do_install_append() {
     install -d ${D}/${libdir}/${BPN}
-    for file in examples/*
+    for file in ${B}/examples/*
     do
-        install -m 0755 ${file}/${file##*/} ${D}/${libdir}/${BPN}
+        install -m 0755 ${file} ${D}/${libdir}/${BPN}
     done
 }
+
+PACKAGES += "${PN}-tests"
+
+FILES_${PN} = ""
+FILES_${PN}-tests = "${libdir}/${BPN}"
+FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
-- 
1.8.5.3


