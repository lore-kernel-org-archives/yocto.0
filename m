Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CFF3E00B02; Mon, 27 Mar 2017 14:40:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9EBAE00A16
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 14:40:00 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 79so16077014pgf.0
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 14:40:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=7Bpxjbf01VO74RT2KUWglxfp45q+ud1Qr1upoLgRE0A=;
	b=GxhOyXPxCYBEHnFk6cwiLz4qviCixjRpkIj2UzJt/O2mWXlFnriXQWDuTSdB/Ydr3m
	iFExZg9Bgrd7q1FB32EgCsmSf/FNqMOF4dHjJPMUY4heLxJ95IEisE6yBhSTJ6VH7vYc
	sZybrqwRdTPzL7kl36KZyPpZIL2Z8IrLIpZ0eAj5R+HCk9DldplnsHr7ZG2mGS3TJLxo
	1qTQAwux32feVymiNJQYuzehEyZPS0T0VgEBizT/t7gL3nuyk55lncg/Cai3chWzUos/
	Bl/czIowPMAhkTx8gKSZ9OI6ac/Da4uvjdvmTj1aQ8ksOKHy3BgFmJ0TmjgJTngHLNoG
	iyZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=7Bpxjbf01VO74RT2KUWglxfp45q+ud1Qr1upoLgRE0A=;
	b=H+pUguTi0/u42tAVotsEC3sKZLqC8wDUyqaClzZgM+BhKJqd4Y+f85lDV5Lkw/df2G
	S/4ek54Zk4bBSSpLNL+bZcrPgsf22bx8L8ngWchtjXfxgcl2Nl1pLtI49ffw20HpDXXq
	qtS8nNvXtZ0qBd0gfYjb+viLZRWeo9iKW5+khojw9Ms6MMFyi13KmuoDgDYod9HLRn3q
	4c2SQ/ctn3UuaPsm8bKRheDfHC8PgYkjK7FEYQv4+wPuhLlg+bNSZQimWFrGUa5dq+GK
	HOwVvlZWhi2b6o/8JnlREhZ6c0mJZKL3F78Pb4aUuCHd5ENj0ixGabyrl1L4Kq8ZpuDW
	QPTA==
X-Gm-Message-State: AFeK/H2nlI2CuAtO171STqB+9InBdTv7Th0elHqkR4i7oMRRbp566ltwqZUJewJ7xi/zWg==
X-Received: by 10.99.185.1 with SMTP id z1mr26537440pge.165.1490650800095;
	Mon, 27 Mar 2017 14:40:00 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com (174-24-47-146.clsp.qwest.net.
	[174.24.47.146]) by smtp.gmail.com with ESMTPSA id
	u198sm2926709pgb.45.2017.03.27.14.39.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 27 Mar 2017 14:39:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Mon, 27 Mar 2017 14:39:57 -0700
Message-Id: <1490650797-31204-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490650797-31204-1-git-send-email-akuster808@gmail.com>
References: <1490650797-31204-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] tpm2.0-tss: update to latest
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
X-List-Received-Date: Mon, 27 Mar 2017 21:40:02 -0000

From: Armin Kuster <akuster@mvista.com>

LICENSE file changes do to removal of TCG

minor changes do to configure and makefile updates

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index ca82562..df67e12 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -1,14 +1,15 @@
 SUMMARY = "Software stack for TPM2."
 DESCRIPTION = "tpm2.0-tss like woah."
 LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=17067aa50a585593d421b16cffd805a9"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=500b2e742befc3da00684d8a1d5fd9da"
 SECTION = "tpm"
 
+DEPENDS = "autoconf-archive pkgconfig"
+
 SRCREV = "8e25d0cbb287d30c93b2b77e99bc761dc67e31a9"
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


