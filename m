Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CF14E00BAA; Thu,  7 Jun 2018 06:53:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBF51E00998
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 06:53:39 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id 31-v6so6193877plc.4
	for <yocto@yoctoproject.org>; Thu, 07 Jun 2018 06:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=QxkGEhe5KtVEeWkn0vMdUq+c2EwJpFPCesV4tPm5xTY=;
	b=f9/Eb0+Jli7LngvaFCZ0J22VgFysjFABvQnlhUlMLK62ex8a/hrzBg0+HoWUo7hqhz
	5Z5dRJayC0n8qCZE1ud4az8usY0HZkvbQhc9bXGpckERN9S0ac85aTmIrN+hQ+CibViz
	4LeKk5HRti26Vcikxhjc6NZvyTxSXq4vzBJf5rQ9NZxjTtB4s/AfAlVuURTeGrBhjDG9
	ygIn+Sh9FZKSb58peoB/+wuDWtYfaVM5zOi9XtnYeiv+mVKgX2bG42DMmjGnSvKnUuK5
	MzhNANkfs51tBvDva2+uJdHY8sJ3NYKGOjosoIhi0Ef6d3R5wX9l0QWEmUvw2zfmTG15
	9Gbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=QxkGEhe5KtVEeWkn0vMdUq+c2EwJpFPCesV4tPm5xTY=;
	b=T+poxok9g5aJCnnPGCXtAjsoj4hDwDZ2gK04xNSUR8MVRWoOjXMwR6HVSNKsgWIje9
	KKByvsNctvrR2pZP1JZ194pfd5WHwPQMyGtY3PrfAzZmu3/WbhvtolK/7mFrv12entT4
	cetcn60FY8uiBXsFscB5lNuK03c47fV9JUbuG1S3zAudsVzuCIqvT5NFYOkW5USaVvGp
	6QCKVVUUN2Z4lBEKqvCT2GRFLBqcv4AAO3b4LlQVjgMCYDoKzI+CzBBNyKO/M9l0W00a
	oqHA7BlcJlNBP2VKrhy7PB3ypwPUz/tIzQn/KFodmx6Ai0kfdCiYuOxstQYGYNitBU33
	pxqA==
X-Gm-Message-State: APt69E1KaGhFP6QwbKVZV/TSp2OVulX3lNLyk0s0TMNnxOVwnBfx0c6v
	SE3YizYMu5BbjXzsh9LzgBo=
X-Google-Smtp-Source: ADUXVKL33+yT4MjcRYytpwhy7NUbDGlx/dCU34laUCy0unQwR8K9VrilMitNuxhj3tpx5nmJ1ACo+Q==
X-Received: by 2002:a17:902:714e:: with SMTP id
	u14-v6mr2105861plm.289.1528379619262; 
	Thu, 07 Jun 2018 06:53:39 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:877f:9499::c68])
	by smtp.gmail.com with ESMTPSA id
	b3-v6sm95640858pff.132.2018.06.07.06.53.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Jun 2018 06:53:38 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: juro.bystricky@intel.com,
	yocto@yoctoproject.org
Date: Thu,  7 Jun 2018 06:53:37 -0700
Message-Id: <20180607135337.28347-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-mingw][PATCH] mingw-w64-runtime: Fix build with gcc8
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
X-List-Received-Date: Thu, 07 Jun 2018 13:53:41 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../mingw-w64/mingw-w64-headers/gcc8.patch    | 30 +++++++++++++++++++
 .../mingw-w64/mingw-w64-headers_5.0.3.bb      |  5 ++--
 .../mingw-w64/mingw-w64-runtime_5.0.3.bb      |  2 ++
 3 files changed, 35 insertions(+), 2 deletions(-)
 create mode 100644 recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch

diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch b/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
new file mode 100644
index 0000000..2b0eba3
--- /dev/null
+++ b/recipes-devtools/mingw-w64/mingw-w64-headers/gcc8.patch
@@ -0,0 +1,30 @@
+>From revision 248028 in GCC 8 there is defined function _xgetbv:
+https://gcc.gnu.org/viewcvs/gcc/trunk/gcc/config/i386/xsaveintrin.h?r1=248028&r2=248027&pathrev=248028
+
+It conflicting with mingw-w64 definition from mingw-w64-headers/include/psdk_inc/intrin-impl.h
+
+workaround for mingw-w64:
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+Upstream-Status: Pending [https://sourceforge.net/p/mingw-w64/mailman/message/35866694/]
+
+Index: mingw-w64-headers/include/psdk_inc/intrin-impl.h
+===================================================================
+--- mingw-w64-headers.orig/include/psdk_inc/intrin-impl.h
++++ mingw-w64-headers/include/psdk_inc/intrin-impl.h
+@@ -1406,6 +1406,7 @@ __buildmov(__movsd, unsigned __LONG32, "
+ #endif /* __INTRINSIC_PROLOG */
+ 
+ /* NOTE: This should be in immintrin.h */
++#if __GNUC__ < 8 /* GCC 8 already has _xgetbv defined */
+ #if __INTRINSIC_PROLOG(_xgetbv)
+ unsigned __int64 _xgetbv(unsigned int);
+ __INTRINSICS_USEINLINE
+@@ -1426,6 +1427,7 @@ unsigned __int64 _xgetbv(unsigned int in
+ }
+ #define __INTRINSIC_DEFINED__xgetbv
+ #endif /* __INTRINSIC_PROLOG */
++#endif /* __GNUC__ < 8 */
+ 
+ #endif /* defined(__x86_64__) || defined(_AMD64_) || defined(__i386__) || defined(_X86_) */
+ 
diff --git a/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb b/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
index 31fa66f..58d7552 100644
--- a/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
+++ b/recipes-devtools/mingw-w64/mingw-w64-headers_5.0.3.bb
@@ -5,8 +5,9 @@ LIC_FILES_CHKSUM = "file://../COPYING;md5=bb936f0e04d8f1e19ad545100cee9654"
 COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2 \
-           file://epsilon.patch"
-
+           file://epsilon.patch \
+           file://gcc8.patch \
+          "
 SRC_URI[md5sum] = "5524c20312560cc8683b7d8ee292cb8c"
 SRC_URI[sha256sum] = "2a601db99ef579b9be69c775218ad956a24a09d7dabc9ff6c5bd60da9ccc9cb4"
 
diff --git a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
index 928a464..0884778 100644
--- a/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
+++ b/recipes-devtools/mingw-w64/mingw-w64-runtime_5.0.3.bb
@@ -43,3 +43,5 @@ do_configure() {
 FILES_${PN} += "${exec_prefix}/libsrc"
 
 BBCLASSEXTEND = "nativesdk"
+
+SECURITY_CFLAGS_remove_mingw32 = "-fstack-protector-strong"
-- 
2.17.1


