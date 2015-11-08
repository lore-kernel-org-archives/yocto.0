Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 143E8E00978; Sun,  8 Nov 2015 11:01:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A873BE00978
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 11:01:02 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZvVAH-000128-IY; Sun, 08 Nov 2015 18:58:14 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com
Date: Sun,  8 Nov 2015 19:00:37 +0000
Message-Id: <1447009240-14783-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447009240-14783-1-git-send-email-flihp@twobit.us>
References: <1447009240-14783-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 1/4] selinux-config: Separate init script into new recipe.
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
X-List-Received-Date: Sun, 08 Nov 2015 19:01:05 -0000

Add runtime dependencies for init script.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../packagegroups/packagegroup-core-selinux.bb     |  1 +
 .../packagegroups/packagegroup-selinux-minimal.bb  |  1 +
 .../selinux/selinux-config/selinux-init.sh         | 71 ----------------------
 recipes-security/selinux/selinux-config_0.1.bb     | 14 +----
 .../selinux/selinux-init/selinux-init.sh           | 71 ++++++++++++++++++++++
 recipes-security/selinux/selinux-init_0.1.bb       | 37 +++++++++++
 6 files changed, 111 insertions(+), 84 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-config/selinux-init.sh
 create mode 100644 recipes-security/selinux/selinux-init/selinux-init.sh
 create mode 100644 recipes-security/selinux/selinux-init_0.1.bb

diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
index 40b35d1..472bf55 100644
--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
@@ -23,6 +23,7 @@ RDEPENDS_${PN} = " \
 	setools \
 	setools-console \
 	selinux-config \
+	selinux-init \
 	refpolicy-standard \
 	refpolicy-mls \
 	coreutils \
diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index 2ff16f8..42fb82d 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -22,5 +22,6 @@ RDEPENDS_${PN} = "\
 	policycoreutils-sestatus \
 	policycoreutils-setfiles \
 	selinux-config \
+	selinux-init \
 	refpolicy-mls \
 "
diff --git a/recipes-security/selinux/selinux-config/selinux-init.sh b/recipes-security/selinux/selinux-config/selinux-init.sh
deleted file mode 100644
index f9f0914..0000000
--- a/recipes-security/selinux/selinux-config/selinux-init.sh
+++ /dev/null
@@ -1,71 +0,0 @@
-#!/bin/sh
-
-/usr/sbin/selinuxenabled 2>/dev/null || exit 0
-
-CHCON=/usr/bin/chcon
-MATCHPATHCON=/usr/sbin/matchpathcon
-FIXFILES=/sbin/fixfiles
-RESTORECON=/sbin/restorecon
-SECON=/usr/bin/secon
-SETENFORCE=/usr/sbin/setenforce
-
-for i in ${CHCON} ${MATCHPATHCON} ${FIXFILES} ${RESTORECON} ${SECON} ${SETENFORCE}; do
-	test -x $i && continue
-	echo "$i is missing in the system."
-	echo "Please add \"selinux=0\" in the kernel command line to disable SELinux."
-	exit 1
-done
-
-check_rootfs()
-{
-	${CHCON} `${MATCHPATHCON} -n /` / >/dev/null 2>&1 && return 0
-	echo ""
-	echo "* SELinux requires the root '/' filesystem support extended"
-	echo "  filesystem attributes (XATTRs).  It does not appear that this"
-	echo "  filesystem has extended attribute support or it is not enabled."
-	echo ""
-	echo "  - To continue using SELinux you will need to enable extended"
-	echo "    attribute support on the root device."
-	echo ""
-	echo "  - To disable SELinux, please add \"selinux=0\" in the kernel"
-	echo "    command line."
-	echo ""
-	echo "* Halting the system now."
-	/sbin/shutdown -f -h now
-}
-
-# Because /dev/console is not relabeled by kernel, many commands
-# would can not use it, including restorecon.
-${CHCON} -t `${MATCHPATHCON} -n /dev/null | cut -d: -f3` /dev/null
-${CHCON} -t `${MATCHPATHCON} -n /dev/console | cut -d: -f3` /dev/console
-
-
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
-# If first booting, the security context type of init would be
-# "kernel_t", and the whole file system should be relabeled.
-if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
-	echo "Checking SELinux security contexts:"
-	check_rootfs
-	echo " * First booting, filesystem will be relabeled..."
-	test -x /etc/init.d/auditd && /etc/init.d/auditd start
-	${SETENFORCE} 0
-	${RESTORECON} -RF /
-	${RESTORECON} -F /
-	echo " * Relabel done, rebooting the system."
-	/sbin/reboot
-fi
-
-# Now, we should relabel /dev for most services.
-${RESTORECON} -RF /dev
-
-exit 0
diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
index f77b490..37fe4b7 100644
--- a/recipes-security/selinux/selinux-config_0.1.bb
+++ b/recipes-security/selinux/selinux-config_0.1.bb
@@ -13,23 +13,11 @@ PR = "r4"
 
 S = "${WORKDIR}"
 
-SRC_URI = "file://selinux-init.sh"
-
-inherit update-rc.d
-
-INITSCRIPT_NAME = "0selinux-init"
-INITSCRIPT_PARAMS = "start 00 S ."
-
-CONFFILES_${PN} += "${sysconfdir}/selinux/config \
-	${sysconfdir}/init.d/0selinux-init \
-	"
+CONFFILES_${PN} += "${sysconfdir}/selinux/config"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 
 do_install () {
-	install -d ${D}${sysconfdir}/init.d/
-	install -m 0755 ${WORKDIR}/selinux-init.sh ${D}${sysconfdir}/init.d/0selinux-init
-
 	echo "\
 # This file controls the state of SELinux on the system.
 # SELINUX= can take one of these three values:
diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh b/recipes-security/selinux/selinux-init/selinux-init.sh
new file mode 100644
index 0000000..f9f0914
--- /dev/null
+++ b/recipes-security/selinux/selinux-init/selinux-init.sh
@@ -0,0 +1,71 @@
+#!/bin/sh
+
+/usr/sbin/selinuxenabled 2>/dev/null || exit 0
+
+CHCON=/usr/bin/chcon
+MATCHPATHCON=/usr/sbin/matchpathcon
+FIXFILES=/sbin/fixfiles
+RESTORECON=/sbin/restorecon
+SECON=/usr/bin/secon
+SETENFORCE=/usr/sbin/setenforce
+
+for i in ${CHCON} ${MATCHPATHCON} ${FIXFILES} ${RESTORECON} ${SECON} ${SETENFORCE}; do
+	test -x $i && continue
+	echo "$i is missing in the system."
+	echo "Please add \"selinux=0\" in the kernel command line to disable SELinux."
+	exit 1
+done
+
+check_rootfs()
+{
+	${CHCON} `${MATCHPATHCON} -n /` / >/dev/null 2>&1 && return 0
+	echo ""
+	echo "* SELinux requires the root '/' filesystem support extended"
+	echo "  filesystem attributes (XATTRs).  It does not appear that this"
+	echo "  filesystem has extended attribute support or it is not enabled."
+	echo ""
+	echo "  - To continue using SELinux you will need to enable extended"
+	echo "    attribute support on the root device."
+	echo ""
+	echo "  - To disable SELinux, please add \"selinux=0\" in the kernel"
+	echo "    command line."
+	echo ""
+	echo "* Halting the system now."
+	/sbin/shutdown -f -h now
+}
+
+# Because /dev/console is not relabeled by kernel, many commands
+# would can not use it, including restorecon.
+${CHCON} -t `${MATCHPATHCON} -n /dev/null | cut -d: -f3` /dev/null
+${CHCON} -t `${MATCHPATHCON} -n /dev/console | cut -d: -f3` /dev/console
+
+
+# If /.autorelabel placed, the whole file system should be relabeled
+if [ -f /.autorelabel ]; then
+	echo "Checking SELinux security contexts:"
+	check_rootfs
+	echo " * /.autorelabel placed, filesystem will be relabeled..."
+	${FIXFILES} -F -f relabel
+	/bin/rm -f /.autorelabel
+	echo " * Relabel done, rebooting the system."
+	/sbin/reboot
+fi
+
+# If first booting, the security context type of init would be
+# "kernel_t", and the whole file system should be relabeled.
+if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
+	echo "Checking SELinux security contexts:"
+	check_rootfs
+	echo " * First booting, filesystem will be relabeled..."
+	test -x /etc/init.d/auditd && /etc/init.d/auditd start
+	${SETENFORCE} 0
+	${RESTORECON} -RF /
+	${RESTORECON} -F /
+	echo " * Relabel done, rebooting the system."
+	/sbin/reboot
+fi
+
+# Now, we should relabel /dev for most services.
+${RESTORECON} -RF /dev
+
+exit 0
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux/selinux-init_0.1.bb
new file mode 100644
index 0000000..d8e4944
--- /dev/null
+++ b/recipes-security/selinux/selinux-init_0.1.bb
@@ -0,0 +1,37 @@
+SUMMARY = "SELinux init script"
+DESCRIPTION = "\
+SELinux start up stuff for Yocto. \
+"
+
+SECTION = "base"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+${PN}_RDEPENDS = " \
+    coreutils \
+    libselinux-bin \
+    policycoreutils-secon \
+    policycoreutils-setfiles \
+"
+
+S = "${WORKDIR}"
+
+SRC_URI = "file://selinux-init.sh"
+
+inherit update-rc.d
+
+INITSCRIPT_NAME = "0selinux-init"
+INITSCRIPT_PARAMS = "start 00 S ."
+
+CONFFILES_${PN} += "${sysconfdir}/init.d/0selinux-init"
+
+PACKAGE_ARCH = "${MACHINE_ARCH}"
+
+do_install () {
+	install -d ${D}${sysconfdir}/init.d/
+	install -m 0755 ${WORKDIR}/selinux-init.sh ${D}${sysconfdir}/init.d/0selinux-init
+}
+
+sysroot_stage_all_append () {
+	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
+}
-- 
2.1.4


