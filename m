Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38EFDE00CD0; Tue, 12 Sep 2017 19:43:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B643DE00CF1
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 19:43:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v8D2hDS4012534
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 12 Sep 2017 19:43:13 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 12 Sep 2017 19:43:11 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<Joe_MacDonald@mentor.com>
Date: Tue, 12 Sep 2017 19:42:55 -0700
Message-ID: <7d229bbcaf5181a3679993ea52eb8bea0d4e9cba.1505270194.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <cover.1505270194.git.wenzong.fan@windriver.com>
References: <cover.1505270194.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 13/20] semodule-utils: add package 2.7 (20170804)
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

Move policycoreutils/semodule_* to semodule-utils/*:
  - policycoreutils/semodule_deps    -> semodule-utils/semodule_deps
  - policycoreutils/semodule_expand  -> semodule-utils/semodule_expand
  - policycoreutils/semodule_link    -> semodule-utils/semodule_link
  - policycoreutils/semodule_package -> semodule-utils/semodule_package

* Cleanup policycoreutils.inc

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc   | 13 +------------
 recipes-security/selinux/semodule-utils.inc    | 27 ++++++++++++++++++++++++++
 recipes-security/selinux/semodule-utils_2.7.bb |  7 +++++++
 3 files changed, 35 insertions(+), 12 deletions(-)
 create mode 100644 recipes-security/selinux/semodule-utils.inc
 create mode 100644 recipes-security/selinux/semodule-utils_2.7.bb

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 05fd43d..8a9027b 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -75,10 +75,6 @@ PACKAGES =+ "\
 	${PN}-runinit \
 	${PN}-secon \
 	${PN}-semodule \
-	${PN}-semodule-deps \
-	${PN}-semodule-expand \
-	${PN}-semodule-link \
-	${PN}-semodule-package \
 	${PN}-sestatus \
 	${PN}-setfiles \
 	${PN}-setsebool \
@@ -102,13 +98,6 @@ FILES_${PN}-runinit += "\
 FILES_${PN}-dbg += "${prefix}/libexec/selinux/hll/.debug"
 FILES_${PN}-secon += "${bindir}/secon"
 FILES_${PN}-semodule += "${sbindir}/semodule"
-FILES_${PN}-semodule-deps += "${bindir}/semodule_deps"
-FILES_${PN}-semodule-expand += "${bindir}/semodule_expand"
-FILES_${PN}-semodule-link += "${bindir}/semodule_link"
-FILES_${PN}-semodule-package += "\
-	${bindir}/semodule_package \
-	${bindir}/semodule_unpackage \
-"
 FILES_${PN}-hll += "${prefix}/libexec/selinux/hll/*"
 FILES_${PN}-sestatus += "\
 	${sbindir}/sestatus \
@@ -142,7 +131,7 @@ EXTRA_OEMAKE += "INITDIR=${D}/etc/init.d"
 
 BBCLASSEXTEND = "native"
 
-PCU_NATIVE_CMDS = "setfiles semodule_package semodule semodule_link semodule_expand semodule_deps hll"
+PCU_NATIVE_CMDS = "setfiles semodule hll"
 
 do_compile_virtclass-native() {
 	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
diff --git a/recipes-security/selinux/semodule-utils.inc b/recipes-security/selinux/semodule-utils.inc
new file mode 100644
index 0000000..1e92745
--- /dev/null
+++ b/recipes-security/selinux/semodule-utils.inc
@@ -0,0 +1,27 @@
+SUMMARY = "Utilities to manipulate SELinux policy module package"
+DESCRIPTION = "\
+The utilities to create, expand, link and show the dependencies between \
+the SELinux policy module packages."
+
+SECTION = "base"
+LICENSE = "GPLv2+"
+
+DEPENDS += "libsepol"
+
+EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
+
+PACKAGES =+ "\
+        ${PN}-semodule-deps \
+        ${PN}-semodule-expand \
+        ${PN}-semodule-link \
+        ${PN}-semodule-package \
+"
+FILES_${PN}-semodule-deps += "${bindir}/semodule_deps"
+FILES_${PN}-semodule-expand += "${bindir}/semodule_expand"
+FILES_${PN}-semodule-link += "${bindir}/semodule_link"
+FILES_${PN}-semodule-package += "\
+        ${bindir}/semodule_package \
+        ${bindir}/semodule_unpackage \
+"
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-security/selinux/semodule-utils_2.7.bb b/recipes-security/selinux/semodule-utils_2.7.bb
new file mode 100644
index 0000000..fbb88bf
--- /dev/null
+++ b/recipes-security/selinux/semodule-utils_2.7.bb
@@ -0,0 +1,7 @@
+include selinux_20170804.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "678e3a5225f9645d40fd9d13bbaa156f"
+SRC_URI[sha256sum] = "90c98b3362a43b4da2a51a9176820a56f3e615225e23e3395bc566c4490786ba"
-- 
2.13.0


