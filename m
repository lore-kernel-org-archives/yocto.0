Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3473EE00C61; Fri,  1 Jun 2018 02:42:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 062B7E007D4
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 02:42:32 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w519gU5g009908
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 1 Jun 2018 02:42:30 -0700 (PDT)
Received: from pek-lpg-core1-vm1.wrs.com (128.224.156.106) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Fri, 1 Jun 2018 02:42:17 -0700
From: Dengke Du <dengke.du@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 1 Jun 2018 17:51:45 +0800
Message-ID: <1527846705-1849-1-git-send-email-dengke.du@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-intel][PATCH] mce-test: add it
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
X-List-Received-Date: Fri, 01 Jun 2018 09:42:34 -0000
Content-Type: text/plain

Signed-off-by: Dengke Du <dengke.du@windriver.com>
---
 .../mce-test/files/makefile-remove-ldflags.patch   | 23 +++++++++++
 recipes-kernel/mce-test/mce-test_git.bb            | 48 ++++++++++++++++++++++
 2 files changed, 71 insertions(+)
 create mode 100644 recipes-kernel/mce-test/files/makefile-remove-ldflags.patch
 create mode 100644 recipes-kernel/mce-test/mce-test_git.bb

diff --git a/recipes-kernel/mce-test/files/makefile-remove-ldflags.patch b/recipes-kernel/mce-test/files/makefile-remove-ldflags.patch
new file mode 100644
index 0000000..0ffedd2
--- /dev/null
+++ b/recipes-kernel/mce-test/files/makefile-remove-ldflags.patch
@@ -0,0 +1,23 @@
+Remove the default CFLAGS and LDFLAGS in Makefile. Ensure the extra linker flags can be passed.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+
+diff --git a/cases/stress/hwpoison/Makefile b/cases/stress/hwpoison/Makefile
+index da1cbd8..dec5b14 100644
+--- a/cases/stress/hwpoison/Makefile
++++ b/cases/stress/hwpoison/Makefile
+@@ -1,8 +1,8 @@
+-CFLAGS := -g -Wall
+-LDFLAGS := -g
++#CFLAGS := -g -Wall
++#LDFLAGS := -g
+ 
+-export CFLAGS
+-export LDFLAGS
++#export CFLAGS
++#export LDFLAGS
+ 
+ all:
+ 	mkdir -p bin
diff --git a/recipes-kernel/mce-test/mce-test_git.bb b/recipes-kernel/mce-test/mce-test_git.bb
new file mode 100644
index 0000000..5c86d07
--- /dev/null
+++ b/recipes-kernel/mce-test/mce-test_git.bb
@@ -0,0 +1,48 @@
+#
+# Copyright (C) 2012 Wind River Systems, Inc.
+#
+SUMMARY = "MCE test suite"
+
+DESCRIPTION = "The MCE test suite is a collection of tools and test scripts for \
+testing the Linux RAS related features, including CPU/Memory error \
+containment and recovery, ACPI/APEI support etc."
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
+
+PR = "r2"
+
+SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/gong.chen/mce-test.git;protocol=git \
+           file://makefile-remove-ldflags.patch \
+          "
+# Use the commit date of SRCREV in PV.
+#
+SRCREV = "b3fdfaa7a025b68f30913c9cc7a8fe4ae9c7ed7f"
+PE = "1"
+PV = "20131218+git${SRCPV}"
+
+RDEPENDS_${PN} = "mcelog mce-inject dialog bash"
+
+COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
+
+S ="${WORKDIR}/git"
+
+inherit autotools-brokensep
+
+do_install_append(){
+   install -d ${D}/opt/mce-test
+   cp -rf ${S}/* ${D}/opt/mce-test/
+}
+
+FILES_${PN} += "/opt"
+FILES_${PN}-dbg += "/opt/mce-test/cases/function/hwpoison/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/cases/function/erst-inject/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/cases/function/pfa/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/cases/function/core_recovery/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/cases/stress/hwpoison/bin/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/cases/stress/hwpoison/tools/page-poisoning/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/cases/stress/hwpoison/tools/fs-metadata/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/bin/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/tools/ltp-pan/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/tools/simple_process/.debug"
+FILES_${PN}-dbg += "/opt/mce-test/tools/page-types/.debug"
-- 
2.7.4


