Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAD19E00CB0; Tue, 12 Sep 2017 19:43:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98D29E00CAF
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8D2hBV0009333
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Sep 2017 19:43:11 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:10 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:53 -0700
Message-ID: <3348e25d523e9b4540f022d21aaedfa44ee3473a.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 11/20] selinux-sandbox: add package 2.7 (20170804)
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
X-List-Received-Date: Wed, 13 Sep 2017 02:43:20 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Move policycoreutils/sandbox to sandbox:

* Move and rebase patch:
  - policycoreutils-sandbox-de-bashify.patch

* Cleanup policycoreutils.inc

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc       | 17 -------------
 recipes-security/selinux/selinux-sandbox.inc       | 28 ++++++++++++++++++++++
 .../sandbox-de-bashify.patch}                      | 13 +++++-----
 recipes-security/selinux/selinux-sandbox_2.7.bb    |  7 ++++++
 4 files changed, 42 insertions(+), 23 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-sandbox.inc
 rename recipes-security/selinux/{policycoreutils/policycoreutils-sandbox-de-bashify.patch => selinux-sandbox/sandbox-de-bashify.patch} (79%)
 create mode 100644 recipes-security/selinux/selinux-sandbox_2.7.bb

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index e8f6e5f..9e45e0c 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -9,7 +9,6 @@ LICENSE = "GPLv2+"
 
 SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)} \
             file://policycoreutils-fixfiles-de-bashify.patch \
-            file://policycoreutils-sandbox-de-bashify.patch \
            "
 
 PAM_SRC_URI = "file://pam.d/newrole \
@@ -64,15 +63,6 @@ RDEPENDS_${BPN}-python += "\
 	libsemanage-python \
 "
 RDEPENDS_${BPN}-runinit += "libselinux"
-RDEPENDS_${BPN}-sandbox += "\
-	python-math \
-	python-shell \
-	python-subprocess \
-	python-textutils \
-	python-unixadmin \
-	libselinux-python \
-	${BPN}-python \
-"
 RDEPENDS_${BPN}-secon += "libselinux"
 RDEPENDS_${BPN}-semanage = "\
 	python-core \
@@ -128,7 +118,6 @@ PACKAGES =+ "\
 	${PN}-newrole \
 	${PN}-python \
 	${PN}-runinit \
-	${PN}-sandbox \
 	${PN}-secon \
 	${PN}-semanage \
 	${PN}-semodule \
@@ -171,12 +160,6 @@ FILES_${PN}-runinit += "\
 	${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${sysconfdir}/pam.d/run_init', '', d)} \
 "
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/.debug/* ${prefix}/libexec/selinux/hll/.debug"
-FILES_${PN}-sandbox += "\
-	${datadir}/sandbox/* \
-	${bindir}/sandbox \
-	${sbindir}/seunshare \
-	${sysconfdir}/sysconfig/sandbox \
-"
 FILES_${PN}-secon += "${bindir}/secon"
 FILES_${PN}-semanage = "\
 	${sbindir}/semanage \
diff --git a/recipes-security/selinux/selinux-sandbox.inc b/recipes-security/selinux/selinux-sandbox.inc
new file mode 100644
index 0000000..8616dd7
--- /dev/null
+++ b/recipes-security/selinux/selinux-sandbox.inc
@@ -0,0 +1,28 @@
+SUMMARY = "Run cmd under an SELinux sandbox"
+DESCRIPTION = "\
+Run application within a tightly confined SELinux domain. The default \
+sandbox domain only allows applications the ability to read and write \
+stdin, stdout and any other file descriptors handed to it."
+
+SECTION = "base"
+LICENSE = "GPLv2+"
+
+SRC_URI += "file://sandbox-de-bashify.patch \
+"
+
+DEPENDS += "libcap-ng libselinux"
+
+RDEPENDS_${PN} += "\
+        python-math \
+        python-shell \
+        python-subprocess \
+        python-textutils \
+        python-unixadmin \
+        libselinux-python \
+        selinux-python \
+"
+
+FILES_${PN} += "\
+        ${datadir}/sandbox/sandboxX.sh \
+        ${datadir}/sandbox/start \
+"
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-sandbox-de-bashify.patch b/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
similarity index 79%
rename from recipes-security/selinux/policycoreutils/policycoreutils-sandbox-de-bashify.patch
rename to recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
index c078ef6..18cef4b 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-sandbox-de-bashify.patch
+++ b/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
@@ -9,25 +9,26 @@ sandboxX script, so point them at /bin/sh instead.
 Upstream-Status: Pending
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
  sandbox/sandbox.init | 2 +-
  sandbox/sandboxX.sh  | 2 +-
  2 files changed, 2 insertions(+), 2 deletions(-)
 
-diff --git a/sandbox/sandbox.init b/sandbox/sandbox.init
+diff --git a/sandbox.init b/sandbox.init
 index b3979bf..1893dc8 100644
---- a/sandbox/sandbox.init
-+++ b/sandbox/sandbox.init
+--- a/sandbox.init
++++ b/sandbox.init
 @@ -1,4 +1,4 @@
 -#!/bin/bash
 +#!/bin/sh
  ## BEGIN INIT INFO
  # Provides: sandbox
  # Default-Start: 3 4 5
-diff --git a/sandbox/sandboxX.sh b/sandbox/sandboxX.sh
+diff --git a/sandboxX.sh b/sandboxX.sh
 index eaa500d..8755d75 100644
---- a/sandbox/sandboxX.sh
-+++ b/sandbox/sandboxX.sh
+--- a/sandboxX.sh
++++ b/sandboxX.sh
 @@ -1,4 +1,4 @@
 -#!/bin/bash
 +#!/bin/sh
diff --git a/recipes-security/selinux/selinux-sandbox_2.7.bb b/recipes-security/selinux/selinux-sandbox_2.7.bb
new file mode 100644
index 0000000..1307ce7
--- /dev/null
+++ b/recipes-security/selinux/selinux-sandbox_2.7.bb
@@ -0,0 +1,7 @@
+include selinux_20170804.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "7360e9dc7b1757b7f82face655982bfa"
+SRC_URI[sha256sum] = "9490620380ab6d428a92869002a51ada0343ca35fa2a6905595745902a64c541"
-- 
2.13.0


