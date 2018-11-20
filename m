Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BBCFE00566; Tue, 20 Nov 2018 09:00:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE146E00566
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 08:56:58 -0800 (PST)
Received: by mail-io1-f67.google.com with SMTP id n9so1876177ioh.7
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 08:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=pkkj9SK+b7g8oFfn64L2ulldF51uJ/NFjxIrCAywDCM=;
	b=KvUgrg11GUzf07OxkJC6N9jdKZTpxR33xnTb+D+VTA6kLpHdboaWgxasxQCYqlGwm+
	zXB6HmMVt3H7XdBhJFVtd9Vl3OqcGhB9eqCYedyJ3ZB+T/954l2vllV/LZVt7T3Ix0/3
	Dp7lUDONje257sIEV7zWnTSQHiWAU+d/Ijk+BI9wSnOemUV721JLD+L1NTtGmoHSjDwf
	fOnvkkVNrsq2L5a82d2uGcUVifoEGob1pIaZwu10XBheTMD1T0a3TGQHe59rUBV1kGoq
	ipPBUyKdw3ciXDCoAojZYapYdA9rnY44C8Hdd+ru3js1LQBPMUz+7D9fP71n2hznrjQn
	DfrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=pkkj9SK+b7g8oFfn64L2ulldF51uJ/NFjxIrCAywDCM=;
	b=qikgd7wBauDDir1GBvJrGMGeooJ1RO0OWPYAFFknT++OfUgfYRHlxPeSqGwAZQ8Fm1
	sQNy+gyM04syo54o6Do/1rxa0Axm0S34N3y6GlntYQbT0/1jQUxdHrE10Tce11euCv6W
	JCIas4beDMeuO6kVXKN/yvLmoNdj9pGAC+T1kheMqJuhPmfnoemdYbMQpyl+F5U/QP0I
	B7ahRdZ5h5VcGO4j8xwhYWm8ipiuimg1G2iyeMittEApGYEhgHGxplUTW9673vMA/2hT
	IVWAFOUTAmM7lL1cOPKqgoE3ozupwjqMUA32icTMImWiuPekA3oQHe98xxGhuAMmQsfa
	CQ1g==
X-Gm-Message-State: AA+aEWb3nHd6XV6q4CYTBDNBFeNzko/oifB3aF2gTwXYRn+SIJTXCp+t
	Rf7U0CqzpsiJ9ipDzGs9NNI6ARmMCcg=
X-Google-Smtp-Source: AFSGD/XFPoqQswPyJ0on8rhb1S+Upskh4cJHWFszcL7YegVhThm0agJE+Uo8U+T74vnnrGggH8CAcg==
X-Received: by 2002:a6b:f201:: with SMTP id q1-v6mr2091796ioh.19.1542733017644;
	Tue, 20 Nov 2018 08:56:57 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	h12-v6sm9816291iog.15.2018.11.20.08.56.55
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 20 Nov 2018 08:56:56 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Nov 2018 10:56:52 -0600
Message-Id: <20181120165652.26616-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [meta-mingw][PATCH] mingw-w64-{headers, runtime, winpthreads}: Upgrade 5.0.3 -> 6.0.0
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
X-List-Received-Date: Tue, 20 Nov 2018 17:00:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Upgrades the MinGW support recipes to the latest version

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 ...pl.h-do-not-define-_xgetbv-for-GCC-8.patch | 43 -------------------
 .../mingw-w64/mingw-w64-headers/epsilon.patch | 16 -------
 recipes-devtools/mingw-w64/mingw-w64.inc      | 14 ++++++
 ...b => nativesdk-mingw-w64-headers_6.0.0.bb} | 11 +----
 ...b => nativesdk-mingw-w64-runtime_6.0.0.bb} |  8 +---
 ... nativesdk-mingw-w64-winpthreads_6.0.0.bb} |  8 +---
 6 files changed, 17 insertions(+), 83 deletions(-)
 delete mode 100644 recipes-devtools/mingw-w64/mingw-w64-headers/0001-intrin-impl.h-do-not-define-_xgetbv-for-GCC-8.patch
 delete mode 100644 recipes-devtools/mingw-w64/mingw-w64-headers/epsilon.patch
 create mode 100644 recipes-devtools/mingw-w64/mingw-w64.inc
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_5.0.3.bb => nativesdk-mingw-w64-headers_6.0.0.bb} (53%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_5.0.3.bb => nativesdk-mingw-w64-runtime_6.0.0.bb} (70%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_5.0.3.bb => nativesdk-mingw-w64-winpthreads_6.0.0.bb} (64%)

diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers/0001-intrin-impl.h-do-not-define-_xgetbv-for-GCC-8.patch b/recipes-devtools/mingw-w64/mingw-w64-headers/0001-intrin-impl.h-do-not-define-_xgetbv-for-GCC-8.patch
deleted file mode 100644
index 366afdc..0000000
--- a/recipes-devtools/mingw-w64/mingw-w64-headers/0001-intrin-impl.h-do-not-define-_xgetbv-for-GCC-8.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-Upstream-Status: Backport
-Signed-off-by: Ross Burton <ross.burton@intel.com>
-
-From 63d69029386701955e8fa10ac14be8d2316faf6f Mon Sep 17 00:00:00 2001
-From: Mateusz <mateuszb@poczta.onet.pl>
-Date: Mon, 22 Jan 2018 20:58:48 +0100
-Subject: [PATCH] intrin-impl.h: do not define _xgetbv for GCC 8
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-GCC 8 from r248028 has defined function _xgetbv and we should
-avoid double definition of this function.
-
-Signed-off-by: Mateusz Brzostek <mateuszb@poczta.onet.pl>
-Signed-off-by: Martin Storsjö <martin@martin.st>
----
- mingw-w64-headers/include/psdk_inc/intrin-impl.h | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/mingw-w64-headers/include/psdk_inc/intrin-impl.h b/mingw-w64-headers/include/psdk_inc/intrin-impl.h
-index 7da3238b..4990b0ae 100644
---- a/mingw-w64-headers/include/psdk_inc/intrin-impl.h
-+++ b/mingw-w64-headers/include/psdk_inc/intrin-impl.h
-@@ -1405,6 +1405,7 @@ __buildmov(__movsd, unsigned __LONG32, "d")
- #define __INTRINSIC_DEFINED___movsd
- #endif /* __INTRINSIC_PROLOG */
- 
-+#if !defined(__GNUC__) || __GNUC__ < 8 /* GCC 8 has already defined _xgetbv */
- /* NOTE: This should be in immintrin.h */
- #if __INTRINSIC_PROLOG(_xgetbv)
- unsigned __int64 _xgetbv(unsigned int);
-@@ -1426,6 +1427,7 @@ unsigned __int64 _xgetbv(unsigned int index)
- }
- #define __INTRINSIC_DEFINED__xgetbv
- #endif /* __INTRINSIC_PROLOG */
-+#endif /* __GNUC__ < 8 */
- 
- #endif /* defined(__x86_64__) || defined(_AMD64_) || defined(__i386__) || defined(_X86_) */
- 
--- 
-2.11.0
-
diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers/epsilon.patch b/recipes-devtools/mingw-w64/mingw-w64-headers/epsilon.patch
deleted file mode 100644
index 10213ee..0000000
--- a/recipes-devtools/mingw-w64/mingw-w64-headers/epsilon.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-mpfr 3.1.2 references these symbols and fails if they're not defined.
-
-Index: mingw-w64-headers/crt/float.h
-===================================================================
---- mingw-w64-headers/crt.orig/float.h	2012-07-17 11:03:12.000000000 +0000
-+++ mingw-w64-headers/crt/float.h	2013-08-13 08:23:20.000000000 +0000
-@@ -111,6 +111,9 @@
- 	#define FLT_ROUNDS 1
-     
- 	#define _FLOAT_H___
-+
-+	#define DBL_EPSILON __DBL_EPSILON__
-+	#define FLT_EPSILON __FLT_EPSILON__
- #endif
- #endif
- #endif
diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
new file mode 100644
index 0000000..8c68bcc
--- /dev/null
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -0,0 +1,14 @@
+LICENSE = "ZPL-2.1"
+LIC_FILES_CHKSUM = "file://${WORKDIR}/mingw-w64-v${PV}/COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
+
+COMPATIBLE_HOST = ".*-mingw.*"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "cf5673f6d689bb5e02863e6284cc3d03"
+SRC_URI[sha256sum] = "805e11101e26d7897fce7d49cbb140d7bac15f3e085a91e0001e80b2adaf48f0"
+
+UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
+UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
+
+
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_6.0.0.bb
similarity index 53%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_6.0.0.bb
index 009e5af..58073d6 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_5.0.3.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_6.0.0.bb
@@ -1,15 +1,6 @@
 DESCRIPTION = "Header files from the MingGW-w64 project"
-LICENSE = "ZPL-2.1"
-LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
 
-COMPATIBLE_HOST = ".*-mingw.*"
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2 \
-           file://epsilon.patch \
-           file://0001-intrin-impl.h-do-not-define-_xgetbv-for-GCC-8.patch;striplevel=2"
-
-SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
-SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
+require mingw-w64.inc
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-headers"
 B = "${WORKDIR}/build-${TARGET_SYS}"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_6.0.0.bb
similarity index 70%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_6.0.0.bb
index 0302334..fc83ca8 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_5.0.3.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_6.0.0.bb
@@ -1,12 +1,6 @@
 DESCRIPTION = "Runtime libraries from MinGW-w64 project"
-LICENSE = "ZPL-2.1"
-LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
 
-COMPATIBLE_HOST = ".*-mingw.*"
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
-SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
-SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
+require mingw-w64.inc
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
 B = "${WORKDIR}/build-${TARGET_SYS}"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_6.0.0.bb
similarity index 64%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_6.0.0.bb
index 1308760..b278ad7 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_5.0.3.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_6.0.0.bb
@@ -1,12 +1,6 @@
 DESCRIPTION = "Winpthreads runtime libraries from MinGW-w64 project"
-LICENSE = "ZPL-2.1"
-LIC_FILES_CHKSUM = "file://../../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
 
-COMPATIBLE_HOST = ".*-mingw.*"
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
-SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
-SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
+require mingw-w64.inc
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
 B = "${WORKDIR}/build-${TARGET_SYS}"
-- 
2.19.1


