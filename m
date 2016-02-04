Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 809DFE00CB0; Thu,  4 Feb 2016 07:26:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [130.164.80.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D2C5E00BA0
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 07:26:23 -0800 (PST)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod3.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u14EF4SC018821
	for <yocto@yoctoproject.org>; Thu, 4 Feb 2016 08:15:04 -0600
Received: from adi-pc-linux.emea.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016020408150397-649248 ;
	Thu, 4 Feb 2016 08:15:03 -0600 
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: yocto@yoctoproject.org
Date: Thu, 4 Feb 2016 16:14:40 +0200
Message-Id: <1a4f3966e465cfccfe11475442290dd033fa4d36.1454594277.git.adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.7.0
In-Reply-To: <dfb75dd53c8799e92ee5c0aff534c4798dd02a9a.1454594277.git.adrian.ratiu@ni.com>
References: <dfb75dd53c8799e92ee5c0aff534c4798dd02a9a.1454594277.git.adrian.ratiu@ni.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 02/04/2016 08:15:04 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 02/04/2016 08:15:04 AM,
	Serialize complete at 02/04/2016 08:15:04 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-02-04_02:, , signatures=0
Subject: [meta-selinux 2/2] libselinux: backport procfs mount fix
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
X-List-Received-Date: Thu, 04 Feb 2016 15:26:29 -0000

libselinux 20160107 ships this change (git commit id 9df49888)

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 .../libselinux-mount-procfs-before-check.patch     | 74 ++++++++++++++++++++++
 recipes-security/selinux/libselinux_2.4.bb         |  1 +
 recipes-security/selinux/libselinux_git.bb         |  1 +
 3 files changed, 76 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch

diff --git a/recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch b/recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch
new file mode 100644
index 0000000..dc27aaa
--- /dev/null
+++ b/recipes-security/selinux/libselinux/libselinux-mount-procfs-before-check.patch
@@ -0,0 +1,74 @@
+commit 9df498884665d79474b79f0f30d1cd67df11bd3e
+Author: Ben Shelton <ben.shelton@ni.com>
+Date:   Wed Apr 15 15:56:57 2015 -0500
+
+    libselinux: Mount procfs before checking /proc/filesystems
+    
+    In the case where the SELinux security module is not loaded in the
+    kernel and it's early enough in the boot process that /proc has not yet
+    been mounted, selinuxfs_exists() will incorrectly return 1, and
+    selinux_init_load_policy() will print a message like this to the
+    console:
+    
+    Mount failed for selinuxfs on /sys/fs/selinux:  No such file or directory
+    
+    To fix this, mount the procfs before attempting to open
+    /proc/filesystems, and unmount it when done if it was initially not
+    mounted.  This is the same thing that selinux_init_load_policy() does
+    when reading /proc/cmdline.
+    
+    Signed-off-by: Ben Shelton <ben.shelton@ni.com>
+
+Upstream-Status: Accepted
+
+diff --git a/src/init.c b/src/init.c
+index 6d1ef33..179e0d0 100644
+--- a/src/init.c
++++ b/src/init.c
+@@ -11,6 +11,7 @@
+ #include <sys/vfs.h>
+ #include <stdint.h>
+ #include <limits.h>
++#include <sys/mount.h>
+ 
+ #include "dso.h"
+ #include "policy.h"
+@@ -54,15 +55,20 @@ static int verify_selinuxmnt(const char *mnt)
+ 
+ int selinuxfs_exists(void)
+ {
+-	int exists = 0;
++	int exists = 0, mnt_rc = 0;
+ 	FILE *fp = NULL;
+ 	char *buf = NULL;
+ 	size_t len;
+ 	ssize_t num;
+ 
++	mnt_rc = mount("proc", "/proc", "proc", 0, 0);
++
+ 	fp = fopen("/proc/filesystems", "r");
+-	if (!fp)
+-		return 1; /* Fail as if it exists */
++	if (!fp) {
++		exists = 1; /* Fail as if it exists */
++		goto out;
++	}
++
+ 	__fsetlocking(fp, FSETLOCKING_BYCALLER);
+ 
+ 	num = getline(&buf, &len, fp);
+@@ -76,6 +82,14 @@ int selinuxfs_exists(void)
+ 
+ 	free(buf);
+ 	fclose(fp);
++
++out:
++#ifndef MNT_DETACH
++#define MNT_DETACH 2
++#endif
++	if (mnt_rc == 0)
++		umount2("/proc", MNT_DETACH);
++
+ 	return exists;
+ }
+ hidden_def(selinuxfs_exists)
diff --git a/recipes-security/selinux/libselinux_2.4.bb b/recipes-security/selinux/libselinux_2.4.bb
index e084df2..86ff44c 100644
--- a/recipes-security/selinux/libselinux_2.4.bb
+++ b/recipes-security/selinux/libselinux_2.4.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://libselinux-get-pywrap-depends-on-selinux.py.patch \
+        file://libselinux-mount-procfs-before-check.patch \
         "
diff --git a/recipes-security/selinux/libselinux_git.bb b/recipes-security/selinux/libselinux_git.bb
index 4efab86..33d9e00 100644
--- a/recipes-security/selinux/libselinux_git.bb
+++ b/recipes-security/selinux/libselinux_git.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
 	file://libselinux-make-SOCK_CLOEXEC-optional.patch \
 	file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
 	file://libselinux-get-pywrap-depends-on-selinux.py.patch \
+	file://libselinux-mount-procfs-before-check.patch \
 	"
-- 
2.7.0


