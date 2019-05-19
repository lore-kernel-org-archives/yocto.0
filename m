Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2D74E00CD2; Sun, 19 May 2019 09:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4486E00798
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 09:57:25 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id v80so6040193pfa.3
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 09:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=jFLtZmtxid9Ng+uT+7pLvP7aMsQ2YXxk+bBevtHLa4o=;
	b=JAT6mEqc4srSDqI1OdM9UJPReNwkcu6b3AeLJtwv0q5JxhADZB0MbAwqOqyeIvKNxy
	upmLM0kqraDZNmG3Vktx9oaPkUyLHCJNJ20mLBnhEs3naGjBmzBRFHx6t5eQvTPZmJcO
	esY/6F2RnCO+E5qQLP9o5MYvJcYfrhGTtuT+NA0TJOIrTKIkMVQ+wyhEDTfNbAwLkzUV
	26leaDdA5/+akBPI5m376ok8ZNjQKnce2vl9WkiGDN1FbZhuqfcAyO3MoQH4+kk0KaCa
	QXWGxEouaDORZaBqw1xn++PE5ahjXLbGvR1EylvkCsr+CJ31CUMzMAiPIBPga9837JAT
	6KZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=jFLtZmtxid9Ng+uT+7pLvP7aMsQ2YXxk+bBevtHLa4o=;
	b=dIncQLn9g4KXFKi75EMq22o16EpVa7oBP0Zn2QpEkqmd6nm/lIYL3d5NFXU3ENQY/I
	a1KeVpueHBLwFCJ6vI1S/tBbQLzGxPoZ1SXkh4n9UNWwY/znYmlHCtw0Fb6fB1R2UmJD
	eDLhXCdLDArSt4tm5tmzH8n76rqlns2H5FO8npeq7jH3j764stvDtUvI1W+Az2iOGXYj
	IkQnS0Hj0i6JXvltR6Qlt02ZYQ13oz9uc+3y4K1cnzYXOQv0HudEfHgiadUL0bEgeSGO
	wXKAjY2752TL1YqI92yvipUPOSYYh/AbpAn3l1ZpVSqIilwpU21A1UBvSQuACK9+BLNK
	vw4w==
X-Gm-Message-State: APjAAAWB71LI31hkR2K6UXFeddCdKAyGz29Gg7xysmUmlihJA7R2lPJT
	cHfqpSrHCq+sZPjeCMgVv3z2F+Jf
X-Google-Smtp-Source: APXvYqw5yIjLpbCsA+Y8TNDwRy1a/Dhv7sPBaihwtvq3bkFsVaTGRLvqL3BTU6twjZo3OmP0mNNo5g==
X-Received: by 2002:a62:81c1:: with SMTP id
	t184mr74504394pfd.221.1558285044793; 
	Sun, 19 May 2019 09:57:24 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f186sm19827917pfb.5.2019.05.19.09.57.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 May 2019 09:57:24 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 19 May 2019 09:57:22 -0700
Message-Id: <20190519165722.10363-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][v2][PATCH] keyutils: fix library install path
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
X-List-Received-Date: Sun, 19 May 2019 16:57:26 -0000

[v2]
fix multilib support
Als add native support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/fix_library_install_path.patch      | 28 +++++++++++++++++++
 recipes-security/keyutils/keyutils_1.6.bb     | 14 ++++++----
 2 files changed, 36 insertions(+), 6 deletions(-)
 create mode 100644 recipes-security/keyutils/files/fix_library_install_path.patch

diff --git a/recipes-security/keyutils/files/fix_library_install_path.patch b/recipes-security/keyutils/files/fix_library_install_path.patch
new file mode 100644
index 0000000..938fe2e
--- /dev/null
+++ b/recipes-security/keyutils/files/fix_library_install_path.patch
@@ -0,0 +1,28 @@
+From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Tue, 26 Sep 2017 07:59:51 +0000
+Subject: [PATCH] Subject: [PATCH] keyutils: use relative path for link
+
+The absolute path of the symlink will be invalid
+when populated in sysroot, so use relative path instead.
+
+Upstream-Status: Pending
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+{rebased for 1.6]
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: keyutils-1.6/Makefile
+===================================================================
+--- keyutils-1.6.orig/Makefile
++++ keyutils-1.6/Makefile
+@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)
+ 	$(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(LIBNAME)
+ 	$(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)
+ 	mkdir -p $(DESTDIR)$(USRLIBDIR)
+-	$(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
++	$(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
+ 	sed \
+ 	-e 's,@VERSION\@,$(VERSION),g' \
+ 	-e 's,@prefix\@,$(PREFIX),g' \
diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
index c961fa2..4d3a96f 100644
--- a/recipes-security/keyutils/keyutils_1.6.bb
+++ b/recipes-security/keyutils/keyutils_1.6.bb
@@ -12,13 +12,13 @@ LICENSE = "LGPLv2.1+ & GPLv2.0+"
 LIC_FILES_CHKSUM = "file://LICENCE.GPL;md5=5f6e72824f5da505c1f4a7197f004b45 \
                     file://LICENCE.LGPL;md5=7d1cacaa3ea752b72ea5e525df54a21f"
 
-
-inherit siteinfo ptest
+inherit siteinfo autotools-brokensep ptest
 
 SRC_URI = "http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2 \
            file://keyutils-test-fix-output-format.patch \
            file://keyutils-fix-error-report-by-adding-default-message.patch \
            file://run-ptest \
+           file://fix_library_install_path.patch \
            "
 
 SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"
@@ -28,14 +28,15 @@ EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -Wall' \
     NO_ARLIB=1 \
     BINDIR=${base_bindir} \
     SBINDIR=${base_sbindir} \
-    LIBDIR=${base_libdir} \
-    USRLIBDIR=${base_libdir} \
+    LIBDIR=${libdir} \
+    USRLIBDIR=${libdir} \
+    INCLUDEDIR=${includedir} \
     BUILDFOR=${SITEINFO_BITS}-bit \
     NO_GLIBC_KEYERR=1 \
     "
 
 do_install () {
-    install -d ${D}/${nonarch_base_libdir}/pkgconfig
+    install -d ${D}/${libdir}/pkgconfig
     oe_runmake DESTDIR=${D} install
 }
 
@@ -44,8 +45,9 @@ do_install_ptest () {
     sed -i -e 's/OSDIST=Unknown/OSDIST=${DISTRO}/' ${D}${PTEST_PATH}/tests/prepare.inc.sh
 }
 
-FILES_${PN}-dev += "${nonarch_base_libdir}/pkgconfig/libkeyutils.pc"
 
 RDEPENDS_${PN}-ptest += "lsb"
 RDEPENDS_${PN}-ptest_append_libc-glibc = " glibc-utils"
 RDEPENDS_${PN}-ptest_append_libc-musl = " musl-utils"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
2.17.1


