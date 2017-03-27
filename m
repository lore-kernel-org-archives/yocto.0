Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D748BE00A16; Mon, 27 Mar 2017 14:52:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67050E0098A
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 14:52:20 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id n5so44904660pgh.0
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 14:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=PjvpE1Hb5CP6ivQVN//2ZSPM3kq8clJ0vJuTNRtdWXw=;
	b=m1g92ZJvBuDqBug7fe7xJwmVQ30dAw7dytKiHdz1Vz14StYSCwQx2hEcxvqzDOFDEB
	FXZsmXLs681ICZ2TZt3MzyqlT5fHQl9TDQ2PfLpVG+5HaBTUjI7i223CqJmr8xvRn8MC
	3oFxdrB4UMADg7YRpaluASvGphATHMKGoh1MfeFJGVprMQ5HjVuEED6xuHEXgRF6P3Ga
	WBf2CgHs1aGPvKeTLpli+kSAXPRIc1Ij+MfTFuAsPS9vCeeT+j6LzUUaImtvI+MHtAHv
	VierLZoclOB/OjPIp3D73U7rz8bn5BmB4DfruunGtKXDgsTUfwcrMmuTDYc+ULcc3VSG
	CnEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=PjvpE1Hb5CP6ivQVN//2ZSPM3kq8clJ0vJuTNRtdWXw=;
	b=pCoNVqDHX/s1+Y5gF1RP2CNS+IsrU6rv31rexzWNDsSmU3n0RgZnCQk0/OQ80Dn6j0
	uJ7nslspX9c1EXxehv6x02N4J015KLqwzVAWfzYSuDSUFjXg1lDxeYcOT0sp1KIa/5WG
	hpjuP7FvWCIOXc/E8aasCgoZyMS2H8pkYYK8ds5WwF4j3PCrMNLv0t1At7PFKv77CAIw
	0pceCPkmZsEkByv/oETIDnxvnCx6A312lmthGMIGyy4GwarcHy40DTmkUCGAybvWMe3x
	cYxM7Bipt+xdcKzVr0Vd/jz/IdfgvXwsAFQ4WyieRNynjHSRKBZ7PKCu+a6cY4V72w9N
	B9Tw==
X-Gm-Message-State: AFeK/H1dXd4FDhoiZ8lVKQVxOtFWT5tRpqAFFhi7zYOCGQ7P9CN/1cigiTsYK/+EN96zng==
X-Received: by 10.84.143.1 with SMTP id 1mr31959251ply.70.1490651540622;
	Mon, 27 Mar 2017 14:52:20 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com (174-24-47-146.clsp.qwest.net.
	[174.24.47.146])
	by smtp.gmail.com with ESMTPSA id g5sm3004176pgn.18.2017.03.27.14.52.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 27 Mar 2017 14:52:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Mon, 27 Mar 2017 14:52:18 -0700
Message-Id: <1490651538-21300-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][v2][PATCH] tpm2.0-tss: update to latest
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
X-List-Received-Date: Mon, 27 Mar 2017 21:52:24 -0000

From: Armin Kuster <akuster@mvista.com>

[v2]:
include new hash

LICENSE file changes do to removal of TCG

minor changes do to configure and makefile updates

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index ca82562..1e57342 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -1,14 +1,15 @@
 SUMMARY = "Software stack for TPM2."
 DESCRIPTION = "tpm2.0-tss like woah."
 LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=17067aa50a585593d421b16cffd805a9"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 SECTION = "tpm"
 
-SRCREV = "8e25d0cbb287d30c93b2b77e99bc761dc67e31a9"
+DEPENDS = "autoconf-archive pkgconfig"
+
+SRCREV = "d1bd1fe175d233c7c5adbe1b9f3d256c41721001"
 SRC_URI = " \
     git://github.com/01org/TPM2.0-TSS.git;protocol=git;branch=master;name=TPM2.0-TSS;destsuffix=TPM2.0-TSS \
-    file://ax_pthread.m4 \
-    file://fix_musl_select_include.patch "
+    file://ax_pthread.m4"
 
 inherit autotools pkgconfig systemd
 
@@ -20,7 +21,7 @@ do_configure_prepend () {
 	# execute the bootstrap script
 	currentdir=$(pwd)
 	cd ${S}
-	./bootstrap --force
+	ACLOCAL="aclocal --system-acdir=${STAGING_DATADIR}/aclocal" ./bootstrap
 	cd $currentdir
 }
 
@@ -59,16 +60,22 @@ PACKAGES = " \
     resourcemgr \
 "
 
-FILES_libtss2 = "${libdir}/libsapi.so.0.0.0"
+FILES_libtss2 = " \
+	${libdir}/libsapi.so.0.0.0 \
+	${libdir}/libmarshal.so.0.0.0 \
+"
 FILES_libtss2-dev = " \
     ${includedir}/sapi \
     ${includedir}/tcti/common.h \
     ${libdir}/libsapi.so* \
+    ${libdir}/libmarshal.so* \
     ${libdir}/pkgconfig/sapi.pc \
 "
 FILES_libtss2-staticdev = " \
     ${libdir}/libsapi.a \
     ${libdir}/libsapi.la \
+    ${libdir}/libmarshal.a \
+    ${libdir}/libmarshal.la \
 "
 FILES_libtctidevice = "${libdir}/libtcti-device.so.0.0.0"
 FILES_libtctidevice-dev = " \
-- 
2.7.4


