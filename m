Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDB6DE00854; Fri, 13 Mar 2015 08:37:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9766E003FA
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 08:37:36 -0700 (PDT)
Received: by pdev10 with SMTP id v10so29761871pde.0
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 08:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=DZxhPas9q0J2m4Dq/Uvlzlxdmz/MnEQ9HRT7DpvkmDo=;
	b=qpTncudXf5yFZfhTvbTUHI5jpuwMcUO2y1JiCCoBPIhZ3ytASfx7yFWw2c+sQ7Hu9i
	EihxvJV9XLNXtmftQ3vV48ZTmtu1l/LJ35BoeyEWxlRgemWhY9g2uGsz5It2b11nWr3Z
	kUqvLKQvr78inuRd2ZUZbGmaVJUNzzhdZ/ALKL97iecDirhfQj9dBQnMHCTfhzFJs4sB
	+oxXk6/svELyunTMKp+4oXv/RMo3muUg9pwT1RyV3xez8Pajbois8hhHq/tq6YQ9nvFF
	2kZ64FDDZLP3nTBiRGXzcN5wgiXNdyDodAbfi+qOqHchxtPkZk1s7URAC/XeUSUYd/t+
	5FqA==
X-Received: by 10.70.96.98 with SMTP id dr2mr18589235pdb.96.1426261055372;
	Fri, 13 Mar 2015 08:37:35 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id qp3sm4126151pdb.11.2015.03.13.08.37.33
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 Mar 2015 08:37:34 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Mar 2015 08:37:21 -0700
Message-Id: <1426261041-9954-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426261041-9954-1-git-send-email-akuster808@gmail.com>
References: <1426261041-9954-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH] libseccomp: update to version 2.2.0
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
X-List-Received-Date: Fri, 13 Mar 2015 15:37:39 -0000

License is not LGPL
sources come from github now
dropped patches since alt solutions included now.

Changes in the 2.2.0 release include:

* Migrated the build system to autotools
* Added support for the aarch64 architecture
* Added support for the mips, mips64, and mips64n32 architectures
* Added support for the new seccomp() syscall and thread sync
* Added Python bindings
* Updated the internal syscall tables to Linux v3.19

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp_2.1.1.bb | 37 -------------------------
 recipes-security/libseccomp/libseccomp_2.2.0.bb | 23 +++++++++++++++
 2 files changed, 23 insertions(+), 37 deletions(-)
 delete mode 100644 recipes-security/libseccomp/libseccomp_2.1.1.bb
 create mode 100644 recipes-security/libseccomp/libseccomp_2.2.0.bb

diff --git a/recipes-security/libseccomp/libseccomp_2.1.1.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
deleted file mode 100644
index 2d93479..0000000
--- a/recipes-security/libseccomp/libseccomp_2.1.1.bb
+++ /dev/null
@@ -1,37 +0,0 @@
-SUMMARY = "interface to seccomp filtering mechanism"
-DESCRIPTION = "The libseccomp library provides and easy to use, platform independent,interface to the Linux Kernel's syscall filtering mechanism: seccomp."
-SECTION = "security"
-LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-
-SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${BP}.tar.gz \
-           file://compiler.patch \
-           file://0001-tests-create-install-tests-target.patch \
-           file://0002-tests-install-python-tests-if-appropriate.patch \
-           file://0003-tests-introduce-alternate-test-report-format.patch \
-"
-
-SRC_URI[md5sum] = "1f41207b29e66a7e5e375dd48a64de85"
-SRC_URI[sha256sum] = "8812c11e407c383f5ad6afb84a88e5a0224477bcfe8ff03f0c548e5abaac841c"
-
-do_configure() {
-   ${S}/configure --prefix=${prefix} --libdir=${libdir}
-}
-
-do_compile_append() {
-    oe_runmake  DESTDIR=${D} tests
-}
-
-do_install() {
-    oe_runmake DESTDIR=${D} install
-    oe_runmake  DESTDIR=${D} install-tests
-}
-
-# MIPS, aarch64, and PowerPC are not supported in this version.
-COMPATIBLE_HOST = '(x86_64|i.86|arm).*-linux'
-
-PACKAGES += "${PN}-tests "
-FILES_${PN}-tests = "${libdir}/${BPN}/tests/*"
-FILES_${PN}-dbg += "${libdir}/${BPN}/tests/.debug/*"
-
-RDEPENDS_${PN} = "bash"
diff --git a/recipes-security/libseccomp/libseccomp_2.2.0.bb b/recipes-security/libseccomp/libseccomp_2.2.0.bb
new file mode 100644
index 0000000..fb29e6c
--- /dev/null
+++ b/recipes-security/libseccomp/libseccomp_2.2.0.bb
@@ -0,0 +1,23 @@
+SUMMARY = "interface to seccomp filtering mechanism"
+DESCRIPTION = "The libseccomp library provides and easy to use, platform independent,interface to the Linux Kernel's syscall filtering mechanism: seccomp."
+SECTION = "security"
+LICENSE = "LGPL-2.1"
+LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
+
+SRCREV = "bd10aab13c7248cc0df57512617e33d6743d33a6"
+
+PV = "2.2.0+git${SRCPV}"
+
+SRC_URI = "git://github.com/seccomp/libseccomp.git;protocol=http"
+
+S = "${WORKDIR}/git"
+
+inherit autotools-brokensep pkgconfig
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
+
+# PowerPC is not supported in this version.
+COMPATIBLE_HOST = '(x86_64|i.86|arm|arm64|mips|mips64).*-linux'
+
+RDEPENDS_${PN} = "bash"
-- 
1.9.1


