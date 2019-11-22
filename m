Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3320.1574405330188104271
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Nov 2019 22:48:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE69FE00D00; Thu, 21 Nov 2019 22:48:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1269E00BA3
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 22:48:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAM6mixa019627
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Nov 2019 22:48:45 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Thu, 21 Nov
 2019 22:48:44 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
CC: <Yair.Itzhaki@docusign.com>
Subject: [meta-selinux][warrior][PATCH 2/2] refpolicy: fix labels for busybox init.sysvinit and start_getty
Date: Fri, 22 Nov 2019 14:48:36 +0800
Message-ID: <20191122064836.9993-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191122064836.9993-1-yi.zhao@windriver.com>
References: <20191122064836.9993-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Content-Type: text/plain

Fix busybox directory aliases issue.
Set correct labels for /sbin/init.sysvinit and /bin/start_getty.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...bs_dist-fix-busybox-directory-aliase.patch | 32 +++++++++++++++++++
 ...fc-set-correct-label-for-start_getty.patch | 32 +++++++++++++++++++
 ...-set-correct-label-for-init.sysvinit.patch | 29 +++++++++++++++++
 ...bs_dist-fix-busybox-directory-aliase.patch | 32 +++++++++++++++++++
 ...fc-set-correct-label-for-start_getty.patch | 32 +++++++++++++++++++
 ...-set-correct-label-for-init.sysvinit.patch | 29 +++++++++++++++++
 .../refpolicy/refpolicy_common.inc            |  3 ++
 7 files changed, 189 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/file_contexts.subs_dist-fix-busybox-directory-aliase.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/getty.fc-set-correct-label-for-start_getty.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20190201/init.fc-set-correct-label-for-init.sysvinit.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/file_contexts.subs_dist-fix-busybox-directory-aliase.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/getty.fc-set-correct-label-for-start_getty.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-git/init.fc-set-correct-label-for-init.sysvinit.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/file_contexts.subs_dist-fix-busybox-directory-aliase.patch b/recipes-security/refpolicy/refpolicy-2.20190201/file_contexts.subs_dist-fix-busybox-directory-aliase.patch
new file mode 100644
index 0000000..9fe2548
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20190201/file_contexts.subs_dist-fix-busybox-directory-aliase.patch
@@ -0,0 +1,32 @@
+From 24c0c6a35c13c6156dfa385cf22a130b6893f24a Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 22 Nov 2019 14:01:08 +0800
+Subject: [PATCH] file_contexts.subs_dist: fix busybox directory aliases
+
+The /usr/bin and /usr/sbin are the original paths which configured in
+file contextes.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ config/file_contexts.subs_dist | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
+index 04fca3c..c720871 100644
+--- a/config/file_contexts.subs_dist
++++ b/config/file_contexts.subs_dist
+@@ -44,7 +44,7 @@
+ 
+ # busybox aliases
+ # quickly match up the busybox built-in tree to the base filesystem tree
+-/usr/lib/busybox/bin /bin
+-/usr/lib/busybox/sbin /sbin
++/usr/lib/busybox/bin /usr/bin
++/usr/lib/busybox/sbin /usr/sbin
+ /usr/lib/busybox/usr /usr
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/getty.fc-set-correct-label-for-start_getty.patch b/recipes-security/refpolicy/refpolicy-2.20190201/getty.fc-set-correct-label-for-start_getty.patch
new file mode 100644
index 0000000..35e8eed
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20190201/getty.fc-set-correct-label-for-start_getty.patch
@@ -0,0 +1,32 @@
+From 83ba87de0b5163cd7f3db8ef0a1f10f89240afa6 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 22 Nov 2019 14:12:55 +0800
+Subject: [PATCH] getty.fc: set correct label for start_getty
+
+The start_getty label should be set to bin_t not getty_exec_t.
+
+Fix error:
+setsid: failed to execute /sbin/getty: Permission denied
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/getty.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/getty.fc b/policy/modules/system/getty.fc
+index 116ea64..53ff613 100644
+--- a/policy/modules/system/getty.fc
++++ b/policy/modules/system/getty.fc
+@@ -4,6 +4,7 @@
+ /run/agetty\.reload	--	gen_context(system_u:object_r:getty_runtime_t,s0)
+ 
+ /usr/bin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
++/usr/bin/start_getty	--	gen_context(system_u:object_r:bin_t,s0)
+ 
+ /usr/sbin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20190201/init.fc-set-correct-label-for-init.sysvinit.patch b/recipes-security/refpolicy/refpolicy-2.20190201/init.fc-set-correct-label-for-init.sysvinit.patch
new file mode 100644
index 0000000..0f024c6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20190201/init.fc-set-correct-label-for-init.sysvinit.patch
@@ -0,0 +1,29 @@
+From 99f1d3d2caf1281ee922ce2c8e93fb53fea576a2 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 22 Nov 2019 14:09:44 +0800
+Subject: [PATCH] init.fc: set correct label for init.sysvinit
+
+The /sbin/init.sysvinit should be set the label init_exec_t.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/init.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
+index 11a6ce9..3c063b1 100644
+--- a/policy/modules/system/init.fc
++++ b/policy/modules/system/init.fc
+@@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
+ /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
+ 
+ /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
++/usr/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
+ /usr/sbin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
+ /usr/sbin/upstart	--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/file_contexts.subs_dist-fix-busybox-directory-aliase.patch b/recipes-security/refpolicy/refpolicy-git/file_contexts.subs_dist-fix-busybox-directory-aliase.patch
new file mode 100644
index 0000000..9fe2548
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/file_contexts.subs_dist-fix-busybox-directory-aliase.patch
@@ -0,0 +1,32 @@
+From 24c0c6a35c13c6156dfa385cf22a130b6893f24a Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 22 Nov 2019 14:01:08 +0800
+Subject: [PATCH] file_contexts.subs_dist: fix busybox directory aliases
+
+The /usr/bin and /usr/sbin are the original paths which configured in
+file contextes.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ config/file_contexts.subs_dist | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/config/file_contexts.subs_dist b/config/file_contexts.subs_dist
+index 04fca3c..c720871 100644
+--- a/config/file_contexts.subs_dist
++++ b/config/file_contexts.subs_dist
+@@ -44,7 +44,7 @@
+ 
+ # busybox aliases
+ # quickly match up the busybox built-in tree to the base filesystem tree
+-/usr/lib/busybox/bin /bin
+-/usr/lib/busybox/sbin /sbin
++/usr/lib/busybox/bin /usr/bin
++/usr/lib/busybox/sbin /usr/sbin
+ /usr/lib/busybox/usr /usr
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/getty.fc-set-correct-label-for-start_getty.patch b/recipes-security/refpolicy/refpolicy-git/getty.fc-set-correct-label-for-start_getty.patch
new file mode 100644
index 0000000..35e8eed
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/getty.fc-set-correct-label-for-start_getty.patch
@@ -0,0 +1,32 @@
+From 83ba87de0b5163cd7f3db8ef0a1f10f89240afa6 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 22 Nov 2019 14:12:55 +0800
+Subject: [PATCH] getty.fc: set correct label for start_getty
+
+The start_getty label should be set to bin_t not getty_exec_t.
+
+Fix error:
+setsid: failed to execute /sbin/getty: Permission denied
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/getty.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/getty.fc b/policy/modules/system/getty.fc
+index 116ea64..53ff613 100644
+--- a/policy/modules/system/getty.fc
++++ b/policy/modules/system/getty.fc
+@@ -4,6 +4,7 @@
+ /run/agetty\.reload	--	gen_context(system_u:object_r:getty_runtime_t,s0)
+ 
+ /usr/bin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
++/usr/bin/start_getty	--	gen_context(system_u:object_r:bin_t,s0)
+ 
+ /usr/sbin/.*getty	--	gen_context(system_u:object_r:getty_exec_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy-git/init.fc-set-correct-label-for-init.sysvinit.patch b/recipes-security/refpolicy/refpolicy-git/init.fc-set-correct-label-for-init.sysvinit.patch
new file mode 100644
index 0000000..0f024c6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-git/init.fc-set-correct-label-for-init.sysvinit.patch
@@ -0,0 +1,29 @@
+From 99f1d3d2caf1281ee922ce2c8e93fb53fea576a2 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 22 Nov 2019 14:09:44 +0800
+Subject: [PATCH] init.fc: set correct label for init.sysvinit
+
+The /sbin/init.sysvinit should be set the label init_exec_t.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/system/init.fc | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/init.fc b/policy/modules/system/init.fc
+index 11a6ce9..3c063b1 100644
+--- a/policy/modules/system/init.fc
++++ b/policy/modules/system/init.fc
+@@ -40,6 +40,7 @@ ifdef(`distro_gentoo',`
+ /usr/libexec/dcc/stop-.* --	gen_context(system_u:object_r:initrc_exec_t,s0)
+ 
+ /usr/sbin/init(ng)?	--	gen_context(system_u:object_r:init_exec_t,s0)
++/usr/sbin/init\.sysvinit	--	gen_context(system_u:object_r:init_exec_t,s0)
+ /usr/sbin/open_init_pty	--	gen_context(system_u:object_r:initrc_exec_t,s0)
+ /usr/sbin/upstart	--	gen_context(system_u:object_r:init_exec_t,s0)
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 137ccee..e567f78 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -52,6 +52,9 @@ SRC_URI += " \
 	file://0032-policy-module-init-update-for-systemd-related-allow-.patch \
 	file://0033-refpolicy-minimum-make-sysadmin-module-optional.patch \
 	file://0034-policy-module-apache-add-rules-for-the-symlink-of-va.patch \
+	file://file_contexts.subs_dist-fix-busybox-directory-aliase.patch \
+	file://init.fc-set-correct-label-for-init.sysvinit.patch \
+	file://getty.fc-set-correct-label-for-start_getty.patch \
    "
 
 S = "${WORKDIR}/refpolicy"
-- 
2.17.1

