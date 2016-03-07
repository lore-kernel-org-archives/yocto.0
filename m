Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72562E00B9C; Mon,  7 Mar 2016 12:54:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [63.239.67.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emvm-gh1-uea09.nsa.gov (emvm-gh1-uea09.nsa.gov [63.239.67.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCEE0E00894
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:54:13 -0800 (PST)
X-TM-IMSS-Message-ID: <5220df3600020aab@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.194]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	5220df3600020aab ; Mon, 7 Mar 2016 15:57:14 -0500
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u27KrMGP003618; Mon, 7 Mar 2016 15:54:02 -0500
From: Stephen Smalley <sds@tycho.nsa.gov>
To: flihp@twobit.us
Date: Mon,  7 Mar 2016 15:52:51 -0500
Message-Id: <1457383972-6283-12-git-send-email-sds@tycho.nsa.gov>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
References: <1457383972-6283-1-git-send-email-sds@tycho.nsa.gov>
X-TM-AS-MML: disable
Cc: yocto@yoctoproject.org
Subject: [PATCH 12/13] libselinux: Only mount /proc if necessary
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
X-List-Received-Date: Mon, 07 Mar 2016 20:54:14 -0000

selinux upstream commit 5a8d8c499b2ef80eaa7b5abe2ec68d7101e613bf

Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
---
 .../libselinux-only-mount-proc-if-necessary.patch  | 54 ++++++++++++++++++++++
 recipes-security/selinux/libselinux_2.5.bb         |  1 +
 2 files changed, 55 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch

diff --git a/recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch b/recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch
new file mode 100644
index 0000000..ab157b6
--- /dev/null
+++ b/recipes-security/selinux/libselinux/libselinux-only-mount-proc-if-necessary.patch
@@ -0,0 +1,54 @@
+From 0d9368ee5af662a99cf123407884ba0e42053c68 Mon Sep 17 00:00:00 2001
+From: Stephen Smalley <sds@tycho.nsa.gov>
+Date: Mon, 29 Feb 2016 10:10:55 -0500
+Subject: [PATCH] libselinux: only mount /proc if necessary
+
+Commit 9df498884665d ("libselinux: Mount procfs before checking
+/proc/filesystems") changed selinuxfs_exists() to always try
+mounting /proc before reading /proc/filesystems.  However, this is
+unnecessary if /proc is already mounted and can produce avc denials
+if the process is not allowed to perform the mount.  Check first
+to see if /proc is already present and only try the mount if it is not.
+
+Signed-off-by: Stephen Smalley <sds@tycho.nsa.gov>
+---
+ src/init.c | 11 +++++++++--
+ 1 file changed, 9 insertions(+), 2 deletions(-)
+
+diff --git a/src/init.c b/src/init.c
+index 3db4de0..3530594 100644
+--- a/src/init.c
++++ b/src/init.c
+@@ -12,6 +12,7 @@
+ #include <stdint.h>
+ #include <limits.h>
+ #include <sys/mount.h>
++#include <linux/magic.h>
+ 
+ #include "dso.h"
+ #include "policy.h"
+@@ -57,13 +58,19 @@ static int verify_selinuxmnt(const char *mnt)
+ 
+ int selinuxfs_exists(void)
+ {
+-	int exists = 0, mnt_rc = 0;
++	int exists = 0, mnt_rc = -1, rc;
++	struct statfs sb;
+ 	FILE *fp = NULL;
+ 	char *buf = NULL;
+ 	size_t len;
+ 	ssize_t num;
+ 
+-	mnt_rc = mount("proc", "/proc", "proc", 0, 0);
++	do {
++		rc = statfs("/proc", &sb);
++	} while (rc < 0 && errno == EINTR);
++
++	if (rc == 0 && ((uint32_t)sb.f_type != (uint32_t)PROC_SUPER_MAGIC))
++		mnt_rc = mount("proc", "/proc", "proc", 0, 0);
+ 
+ 	fp = fopen("/proc/filesystems", "r");
+ 	if (!fp) {
+-- 
+2.4.3
+
diff --git a/recipes-security/selinux/libselinux_2.5.bb b/recipes-security/selinux/libselinux_2.5.bb
index a744b2f..0e2d864 100644
--- a/recipes-security/selinux/libselinux_2.5.bb
+++ b/recipes-security/selinux/libselinux_2.5.bb
@@ -11,5 +11,6 @@ SRC_URI += "\
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        file://libselinux-only-mount-proc-if-necessary.patch \
         file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
         "
-- 
2.4.3


