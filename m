Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE070E00931; Mon, 29 Jul 2019 03:47:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44FF6E00798
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 03:47:51 -0700 (PDT)
Received: by mail-lf1-f67.google.com with SMTP id b29so34466569lfq.1
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 03:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=EPMICMWaNS+ZVun68zjztTNM6Zkw7sUmlzz6F7rCFLI=;
	b=JvBGk43UHesFTC/SAHg3papq00jmXsvGgxi7v/TwYu5Gk5H8kBGXSifjHkC6g43qO6
	Y56d0TWFG8NaOVx22h9SSiHPJA/zFMnHLUk5YOS6QeVuSv54sL+ZO1HF/k4KRDdqb9EV
	Y+MXRFmqzUKJMFduMSg5N4FABkIe91o0TSRtPq0N7WJLPK6IUlG/68JMi0N8tF+K+AfF
	J7ixo8eqKQyY4AU5IzKGUCaw85dVb9RAhaKFeYb1GEtf9zzs8uLd6oMKMnnYwOn+1zZG
	sT8TmAbttL5Hn6DFAEvwGbpW/J7tArMP9JxfsDyd3xHeOcPejom02oxBRLz8WJxhm2oQ
	2Feg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=EPMICMWaNS+ZVun68zjztTNM6Zkw7sUmlzz6F7rCFLI=;
	b=MI9e2GcsQ9RMOxB5dWJ3APOuKb6Rgm2+wUzZXHhrqK5UY9JtDZ62bjnCI00ta+Nj4C
	lA3pW0laEgx7nZrr9vzwzjaBg1P0FK1AjLrIDZ1pVyHTmO+qAUrc9QC74hQYuroNZnOI
	VbCZ+NEqM4XWox6yW47M17ij7FaPE2wqMYDPi0DNWjkY3+DHfoVRbvWNec5eOiF3p7M7
	86fKAfaHaxtRS+pSWAdWAPogUfxdEwepIbXXrmAQtwhrfNsxL1ovO9lDb3icUFyP+CGt
	t5QT1UBsjPyDw7gC+nnq2XGbU7gMNy8/fswJwf9d/USptCrUGgkqpo1mvZr86stdu6m0
	5J1A==
X-Gm-Message-State: APjAAAU0LGoIXYu55opQN5+vCZ5581kyPDfjAvoJNHrYuc1Hdi0Iz32e
	FuKVXBXM8DYjHVCsTuLpOXaqUvRdZqE=
X-Google-Smtp-Source: APXvYqxfcr4Lv+zmSurftUBdiUG1FgP5efo6v6yo3yKNTVUgz49TMIJZqDovk3c3mB+/A7RFIfENqw==
X-Received: by 2002:a05:6512:51c:: with SMTP id
	o28mr53054870lfb.67.1564397269642; 
	Mon, 29 Jul 2019 03:47:49 -0700 (PDT)
Received: from localhost.localdomain ([94.25.228.211])
	by smtp.gmail.com with ESMTPSA id
	w1sm14635077ljm.81.2019.07.29.03.47.48 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 29 Jul 2019 03:47:48 -0700 (PDT)
From: dbaryshkov@gmail.com
To: yocto@yoctoproject.org
Date: Mon, 29 Jul 2019 13:47:47 +0300
Message-Id: <20190729104747.22414-1-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-security] keyutils: migrate to meta-oe
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
X-List-Received-Date: Mon, 29 Jul 2019 10:47:52 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

keyutils are now part of meta-oe, so remove them from meta-security.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
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
index 938fe2eb57a4..000000000000
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
index acd91c01c483..000000000000
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
index a4ffd50ce54c..000000000000
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
index 305707f65d78..000000000000
--- a/recipes-security/keyutils/files/run-ptest
+++ /dev/null
@@ -1,3 +0,0 @@
-#!/bin/sh
-export AUTOMATED=1
-make -C tests run
diff --git a/recipes-security/keyutils/keyutils_1.6.bb b/recipes-security/keyutils/keyutils_1.6.bb
deleted file mode 100644
index 4d3a96f29bcc..000000000000
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
2.20.1


