Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0E0FE00CF4; Mon, 15 Jul 2019 07:31:43 -0700 (PDT)
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
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83068E00C87
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 07:31:42 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id k8so8396632plt.3
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 07:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=wn3c6PC09L7nMS2lnH+459pzUzYiELQZlZaetMmu7ZU=;
	b=MlnhL4LK8uRkiklFcR6nXXaVha2U1We6mMiEgAyUdHvAOHe8wLid0O7SaQlQdphs7B
	DJltQyFc0GmhkXq4L0PyH7jBI8IcE230mVMUoNL0fq4e7NwZIfiOLJ+1vwsT0hLPuKtu
	DVZHQIPbshcvxZ5vbNlGUaraMZrQ0jyaa+fI/SKejbcB7jXMTjBWIbshYs2n1l0/i/gs
	c4xVBC4YeKGds8AgtkyxFPpU5Kp8TdCdHIQpp3rvSXTZ4Mz9gSeDCSflVuTLi4U2Rjn/
	Gwv3xnfGnckg5eLurZGWPnZP10HaIt6cr3ALO4KzFmRFOEOH5wPaFSLmG2eSV2fWZPrf
	Pw2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=wn3c6PC09L7nMS2lnH+459pzUzYiELQZlZaetMmu7ZU=;
	b=EWuAj6fcN6RD79nWMt5Al7YvPW3y6KfjVGjW9e2WxW9YSB2DRB6NfEWfDWqcM+s2wO
	sSm+VaqHQizXhsfeTTV1NmdfesBASIIf5IuLar7s/Fsw/vK8FbbFIybSaDJuBGm0alTT
	WLTenltWvQD36bFejqsDstJq+MCQ43Sm8OLGWlhzBPdZ2/3VvhH1OCOXg7+ipliHmC2M
	v5p5hGXfNyHrMdD1xHIHSx6yxex5sBh8+JU1wX+w8sl9uvRA1+UY0CseDUSY6dSVKToT
	RCppk4T24f3xm7IP5qEFefzTpFbHNrR7yVxWB0/iXk71Y4OTKq6wl8lLo+H70+HKdMwx
	JnFw==
X-Gm-Message-State: APjAAAURA7YRTauUc9s6++ApQRZGFF1zaSgxfIyeKRjIAKSVQj8+V5Nx
	UYXOk2B+6EYzE+St8OWAksl1p/ci
X-Google-Smtp-Source: APXvYqyedqMMRjKDHT+JJvXxC265f0TQu+BDaFZ9VXuqjeBUAMLnqmU97j0ycE+Y5eobmk0m0Nw0oA==
X-Received: by 2002:a17:902:6b86:: with SMTP id
	p6mr29449005plk.14.1563201101789; 
	Mon, 15 Jul 2019 07:31:41 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	v13sm20173458pfn.109.2019.07.15.07.31.40 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 Jul 2019 07:31:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 15 Jul 2019 07:31:39 -0700
Message-Id: <20190715143139.24765-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] keyutils: remove from meta-security
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
X-List-Received-Date: Mon, 15 Jul 2019 14:31:43 -0000

now in meta-oe

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/fix_library_install_path.patch      | 28 ----------
 ...ror-report-by-adding-default-message.patch | 42 ---------------
 .../keyutils-test-fix-output-format.patch     | 41 --------------
 recipes-security/keyutils/files/run-ptest     |  3 --
 recipes-security/keyutils/keyutils_1.6.bb     | 53 -------------------
 5 files changed, 167 deletions(-)
 delete mode 100644 recipes-security/keyutils/files/fix_library_install_path.patch
 delete mode 100644 recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch
 delete mode 100644 recipes-security/keyutils/files/keyutils-test-fix-output-format.patch
 delete mode 100755 recipes-security/keyutils/files/run-ptest
 delete mode 100644 recipes-security/keyutils/keyutils_1.6.bb

diff --git a/recipes-security/keyutils/files/fix_library_install_path.patch b/recipes-security/keyutils/files/fix_library_install_path.patch
deleted file mode 100644
index 938fe2e..0000000
--- a/recipes-security/keyutils/files/fix_library_install_path.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From b0355cc205543ffd33752874295139d57c4fbc3e Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Tue, 26 Sep 2017 07:59:51 +0000
-Subject: [PATCH] Subject: [PATCH] keyutils: use relative path for link
-
-The absolute path of the symlink will be invalid
-when populated in sysroot, so use relative path instead.
-
-Upstream-Status: Pending
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-{rebased for 1.6]
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: keyutils-1.6/Makefile
-===================================================================
---- keyutils-1.6.orig/Makefile
-+++ keyutils-1.6/Makefile
-@@ -184,7 +184,7 @@ ifeq ($(NO_SOLIB),0)
- 	$(INSTALL) -D $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(LIBNAME)
- 	$(LNS) $(LIBNAME) $(DESTDIR)$(LIBDIR)/$(SONAME)
- 	mkdir -p $(DESTDIR)$(USRLIBDIR)
--	$(LNS) $(LIBDIR)/$(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
-+	$(LNS) $(SONAME) $(DESTDIR)$(USRLIBDIR)/$(DEVELLIB)
- 	sed \
- 	-e 's,@VERSION\@,$(VERSION),g' \
- 	-e 's,@prefix\@,$(PREFIX),g' \
diff --git a/recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch b/recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch
deleted file mode 100644
index acd91c0..0000000
--- a/recipes-security/keyutils/files/keyutils-fix-error-report-by-adding-default-message.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-fix keyutils test error report
-
-Upstream-Status: Pending
-
-"Permission denied" may be the reason of EKEYEXPIRED and EKEYREVOKED.
-"Required key not available" may be the reason of EKEYREVOKED.
-EXPIRED and REVOKED are 2 status of kernel security keys features.
-But the userspace keyutils lib will output the error message, which may
-have several reasons.
-
-Signed-off-by: Han Chao <chan@windriver.com>
-
-diff --git a/tests/toolbox.inc.sh b/tests/toolbox.inc.sh
-index bbca00a..739e9d0 100644
---- a/tests/toolbox.inc.sh
-+++ b/tests/toolbox.inc.sh
-@@ -227,11 +227,12 @@ function expect_error ()
- 	    ;;
- 	EKEYEXPIRED)
- 	    my_err="Key has expired"
--	    alt_err="Unknown error 127"
-+	    alt_err="Permission denied"
- 	    ;;
- 	EKEYREVOKED)
- 	    my_err="Key has been revoked"
--	    alt_err="Unknown error 128"
-+	    alt_err="Permission denied"
-+	    alt2_err="Required key not available"
- 	    ;;
- 	EKEYREJECTED)
- 	    my_err="Key has been rejected"
-@@ -249,6 +250,9 @@ function expect_error ()
-     elif [ "x$alt_err" != "x" ] && expr "$my_errmsg" : ".*: $alt_err" >&/dev/null
-     then
- 	:
-+    elif [ "x$alt2_err" != "x" ] && expr "$my_errmsg" : ".*: $alt2_err" >&/dev/null
-+    then
-+	:
-     elif [ "x$old_err" != "x" ] && expr "$my_errmsg" : ".*: $old_err" >&/dev/null
-     then
- 	:
-
diff --git a/recipes-security/keyutils/files/keyutils-test-fix-output-format.patch b/recipes-security/keyutils/files/keyutils-test-fix-output-format.patch
deleted file mode 100644
index a4ffd50..0000000
--- a/recipes-security/keyutils/files/keyutils-test-fix-output-format.patch
+++ /dev/null
@@ -1,41 +0,0 @@
-From 49b6321368e4bd3cd233d045cd09004ddd7968b2 Mon Sep 17 00:00:00 2001
-From: Jackie Huang <jackie.huang@windriver.com>
-Date: Mon, 15 May 2017 14:52:00 +0800
-Subject: [PATCH] keyutils: fix output format
-
-keyutils ptest output format is incorrect, according to yocto
-Development Manual
-(http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#testing-packages-with-ptest)
-5.10.6. Testing Packages With ptestThe test generates output in the format used by Automake:
-<result>: <testname>
-where the result can be PASS, FAIL, or SKIP, and the testname can be any
-identifying string.
-So we should change the test result format to match yocto ptest rules.
-
-Upstream-Status: Inappropriate [OE ptest specific]
-
-Signed-off-by: Li Wang <li.wang@windriver.com>
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
----
- tests/runtest.sh | 5 +++++
- 1 file changed, 5 insertions(+)
-
-diff --git a/tests/runtest.sh b/tests/runtest.sh
-index b6eaa7c..84263fb 100644
---- a/tests/runtest.sh
-+++ b/tests/runtest.sh
-@@ -21,6 +21,11 @@ for i in ${TESTS}; do
-     echo "### RUNNING TEST $i"
-     if [[ $AUTOMATED != 0 ]] ; then
-         bash ./runtest.sh
-+        if [ $? != 0 ]; then
-+            echo "FAIL: $i"
-+        else
-+            echo "PASS: $i"
-+        fi
-     else
-         bash ./runtest.sh || exit 1
-     fi
--- 
-2.11.0
-
diff --git a/recipes-security/keyutils/files/run-ptest b/recipes-security/keyutils/files/run-ptest
deleted file mode 100755
index 305707f..0000000
--- a/recipes-security/keyutils/files/run-ptest
+++ /dev/null
@@ -1,3 +0,0 @@
-#!/bin/sh
-export AUTOMATED=1
-make -C tests run
diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
deleted file mode 100644
index 4d3a96f..0000000
--- a/recipes-security/keyutils/keyutils_1.6.bb
+++ /dev/null
@@ -1,53 +0,0 @@
-SUMMARY = "Linux Key Management Utilities"
-DESCRIPTION = "\
-    Utilities to control the kernel key management facility and to provide \
-    a mechanism by which the kernel call back to userspace to get a key \
-    instantiated. \
-    "
-HOMEPAGE = "http://people.redhat.com/dhowells/keyutils"
-SECTION = "base"
-
-LICENSE = "LGPLv2.1+ & GPLv2.0+"
-
-LIC_FILES_CHKSUM = "file://LICENCE.GPL;md5=5f6e72824f5da505c1f4a7197f004b45 \
-                    file://LICENCE.LGPL;md5=7d1cacaa3ea752b72ea5e525df54a21f"
-
-inherit siteinfo autotools-brokensep ptest
-
-SRC_URI = "http://people.redhat.com/dhowells/keyutils/${BP}.tar.bz2 \
-           file://keyutils-test-fix-output-format.patch \
-           file://keyutils-fix-error-report-by-adding-default-message.patch \
-           file://run-ptest \
-           file://fix_library_install_path.patch \
-           "
-
-SRC_URI[md5sum] = "191987b0ab46bb5b50efd70a6e6ce808"
-SRC_URI[sha256sum] = "d3aef20cec0005c0fa6b4be40079885567473185b1a57b629b030e67942c7115"
-
-EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -Wall' \
-    NO_ARLIB=1 \
-    BINDIR=${base_bindir} \
-    SBINDIR=${base_sbindir} \
-    LIBDIR=${libdir} \
-    USRLIBDIR=${libdir} \
-    INCLUDEDIR=${includedir} \
-    BUILDFOR=${SITEINFO_BITS}-bit \
-    NO_GLIBC_KEYERR=1 \
-    "
-
-do_install () {
-    install -d ${D}/${libdir}/pkgconfig
-    oe_runmake DESTDIR=${D} install
-}
-
-do_install_ptest () {
-    cp -r ${S}/tests ${D}${PTEST_PATH}/
-    sed -i -e 's/OSDIST=Unknown/OSDIST=${DISTRO}/' ${D}${PTEST_PATH}/tests/prepare.inc.sh
-}
-
-
-RDEPENDS_${PN}-ptest += "lsb"
-RDEPENDS_${PN}-ptest_append_libc-glibc = " glibc-utils"
-RDEPENDS_${PN}-ptest_append_libc-musl = " musl-utils"
-
-BBCLASSEXTEND = "native nativesdk"
-- 
2.17.1


