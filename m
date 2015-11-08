Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56839E00B36; Sun,  8 Nov 2015 11:01:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F164CE00B21
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 11:01:06 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZvVAM-000128-R8; Sun, 08 Nov 2015 18:58:18 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com
Date: Sun,  8 Nov 2015 19:00:38 +0000
Message-Id: <1447009240-14783-3-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447009240-14783-1-git-send-email-flihp@twobit.us>
References: <1447009240-14783-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 2/4] selinux-init: Move script logic into include.
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
X-List-Received-Date: Sun, 08 Nov 2015 19:01:08 -0000

This will be useful when we have other init scripts.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/selinux-init_0.1.bb | 24 +++---------------------
 recipes-security/selinux/selinux-initsh.inc  | 25 +++++++++++++++++++++++++
 2 files changed, 28 insertions(+), 21 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-initsh.inc

diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux/selinux-init_0.1.bb
index d8e4944..cde142d 100644
--- a/recipes-security/selinux/selinux-init_0.1.bb
+++ b/recipes-security/selinux/selinux-init_0.1.bb
@@ -3,7 +3,6 @@ DESCRIPTION = "\
 SELinux start up stuff for Yocto. \
 "
 
-SECTION = "base"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
@@ -14,24 +13,7 @@ ${PN}_RDEPENDS = " \
     policycoreutils-setfiles \
 "
 
-S = "${WORKDIR}"
+SRC_URI = "file://${BPN}.sh"
+SELINUX_SCRIPT_DST = "0${BPN}"
 
-SRC_URI = "file://selinux-init.sh"
-
-inherit update-rc.d
-
-INITSCRIPT_NAME = "0selinux-init"
-INITSCRIPT_PARAMS = "start 00 S ."
-
-CONFFILES_${PN} += "${sysconfdir}/init.d/0selinux-init"
-
-PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-do_install () {
-	install -d ${D}${sysconfdir}/init.d/
-	install -m 0755 ${WORKDIR}/selinux-init.sh ${D}${sysconfdir}/init.d/0selinux-init
-}
-
-sysroot_stage_all_append () {
-	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
-}
+require selinux-initsh.inc
diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux/selinux-initsh.inc
new file mode 100644
index 0000000..f7348bb
--- /dev/null
+++ b/recipes-security/selinux/selinux-initsh.inc
@@ -0,0 +1,25 @@
+S ?= "${WORKDIR}"
+SECTION ?= "base"
+
+# Default is for script name to be the same as the recipe name.
+# Script must have .sh suffix.
+SELINUX_SCRIPT_SRC ?= "${BPN}"
+SELINUX_SCRIPT_DST ?= "${SELINUX_SCRIPT_SRC}"
+
+INITSCRIPT_NAME ?= "${SELINUX_SCRIPT_DST}"
+INITSCRIPT_PARAMS ?= "start 00 S ."
+
+CONFFILES_${PN} += "${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}"
+
+PACKAGE_ARCH ?= "${MACHINE_ARCH}"
+
+inherit update-rc.d
+
+do_install () {
+	install -d ${D}${sysconfdir}/init.d/
+	install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
+}
+
+sysroot_stage_all_append () {
+	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
+}
-- 
2.1.4


