Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B42DFE00B36; Sun,  8 Nov 2015 11:01:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 853C3E00B2B
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 11:01:19 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZvVAV-000128-PA; Sun, 08 Nov 2015 18:58:31 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com
Date: Sun,  8 Nov 2015 19:00:40 +0000
Message-Id: <1447009240-14783-5-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447009240-14783-1-git-send-email-flihp@twobit.us>
References: <1447009240-14783-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 4/4] selinux-init: Break handling of /.autorelabel out into separate script.
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
X-List-Received-Date: Sun, 08 Nov 2015 19:01:21 -0000

Fixup DESCRIPTION in old selinux-init recipe.
Exclude this autorelabel script from the minimal packagegroup.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../packagegroups/packagegroup-core-selinux.bb     |  1 +
 .../selinux-autorelabel/selinux-autorelabel.sh     | 22 ++++++++++++++++++++++
 .../selinux/selinux-autorelabel_0.1.bb             | 17 +++++++++++++++++
 .../selinux/selinux-init/selinux-init.sh           | 14 +-------------
 recipes-security/selinux/selinux-init_0.1.bb       |  3 ++-
 5 files changed, 43 insertions(+), 14 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
 create mode 100644 recipes-security/selinux/selinux-autorelabel_0.1.bb

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index e46cda7..a2480a3 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -23,6 +23,7 @@ RDEPENDS_${PN} = " \
 	setools \
 	setools-console \
 	selinux-config \
+	selinux-autorelabel \
 	selinux-init \
 	selinux-labeldev \
 	refpolicy-standard \
diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
new file mode 100644
index 0000000..154dad1
--- /dev/null
+++ b/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+/usr/sbin/selinuxenabled 2>/dev/null || exit 0
+
+FIXFILES=/sbin/fixfiles
+
+if ! test -x ${FIXFILES}; then
+	echo "${FIXFILES} is missing in the system."
+	echo "Please add \"selinux=0\" in the kernel command line to disable SELinux."
+	exit 1
+fi
+
+# If /.autorelabel placed, the whole file system should be relabeled
+if [ -f /.autorelabel ]; then
+	echo "SELinux: /.autorelabel placed, filesystem will be relabeled..."
+	${FIXFILES} -F -f relabel
+	/bin/rm -f /.autorelabel
+	echo " * Relabel done, rebooting the system."
+	/sbin/reboot
+fi
+
+exit 0
diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-security/selinux/selinux-autorelabel_0.1.bb
new file mode 100644
index 0000000..2664863
--- /dev/null
+++ b/recipes-security/selinux/selinux-autorelabel_0.1.bb
@@ -0,0 +1,17 @@
+SUMMARY = "SELinux autorelabel script"
+DESCRIPTION = "\
+Script to reset SELinux labels on the root file system when /.autorelabel \
+file is present.\
+"
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+${PN}_RDEPENDS = " \
+    policycoreutils-setfiles \
+"
+
+SRC_URI = "file://${BPN}.sh"
+INITSCRIPT_PARAMS = "start 01 S ."
+
+require selinux-initsh.inc
diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh b/recipes-security/selinux/selinux-init/selinux-init.sh
index 32c4de1..ead4f00 100644
--- a/recipes-security/selinux/selinux-init/selinux-init.sh
+++ b/recipes-security/selinux/selinux-init/selinux-init.sh
@@ -4,12 +4,11 @@
 
 CHCON=/usr/bin/chcon
 MATCHPATHCON=/usr/sbin/matchpathcon
-FIXFILES=/sbin/fixfiles
 RESTORECON=/sbin/restorecon
 SECON=/usr/bin/secon
 SETENFORCE=/usr/sbin/setenforce
 
-for i in ${CHCON} ${MATCHPATHCON} ${FIXFILES} ${RESTORECON} ${SECON} ${SETENFORCE}; do
+for i in ${CHCON} ${MATCHPATHCON} ${RESTORECON} ${SECON} ${SETENFORCE}; do
 	test -x $i && continue
 	echo "$i is missing in the system."
 	echo "Please add \"selinux=0\" in the kernel command line to disable SELinux."
@@ -34,17 +33,6 @@ check_rootfs()
 	/sbin/shutdown -f -h now
 }
 
-# If /.autorelabel placed, the whole file system should be relabeled
-if [ -f /.autorelabel ]; then
-	echo "Checking SELinux security contexts:"
-	check_rootfs
-	echo " * /.autorelabel placed, filesystem will be relabeled..."
-	${FIXFILES} -F -f relabel
-	/bin/rm -f /.autorelabel
-	echo " * Relabel done, rebooting the system."
-	/sbin/reboot
-fi
-
 # If first booting, the security context type of init would be
 # "kernel_t", and the whole file system should be relabeled.
 if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux/selinux-init_0.1.bb
index 87f8dad..54932e8 100644
--- a/recipes-security/selinux/selinux-init_0.1.bb
+++ b/recipes-security/selinux/selinux-init_0.1.bb
@@ -1,6 +1,7 @@
 SUMMARY = "SELinux init script"
 DESCRIPTION = "\
-SELinux start up stuff for Yocto. \
+Script to detect and attempt to correct a misconfigured SELinux system at \
+boot time. \
 "
 
 LICENSE = "MIT"
-- 
2.1.4


