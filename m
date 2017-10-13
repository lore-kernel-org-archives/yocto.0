Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5690E00CE2; Fri, 13 Oct 2017 03:07:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D47C7E00CD1
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 03:07:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v9DA7oGS021472
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 13 Oct 2017 03:07:50 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 13 Oct 2017 03:07:49 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>
Date: Fri, 13 Oct 2017 03:07:50 -0700
Message-ID: <20171013100750.225154-1-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] refpolicy: fix boot failure with systemd + mls
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
X-List-Received-Date: Fri, 13 Oct 2017 10:07:53 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* Allow kernel_t to lower file level
* Allow kernel_t to set process level

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...-kernel_t-mls-trusted-for-lowering-file-l.patch | 74 ++++++++++++++++++++++
 ...-kernel_t-mls-trusted-for-setting-process.patch | 43 +++++++++++++
 .../refpolicy/refpolicy_2.20170204.inc             |  2 +
 3 files changed, 119 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-setting-process.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch
new file mode 100644
index 0000000..a3b4803
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch
@@ -0,0 +1,74 @@
+From 04643644acfa30eaa0a2f7902ea48cf79f571f6d Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 13 Oct 2017 07:20:40 +0000
+Subject: [PATCH] poky-policy: kernel_t mls trusted for lowering file level
+
+The boot process hangs with the error while using MLS policy:
+
+  [!!!!!!] Failed to mount API filesystems, freezing.
+  [    4.085349] systemd[1]: Freezing execution.
+
+Make kernel_t mls trusted for lowering the level of files to fix below
+avc denials and remove the hang issue.
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:device_t:s15:c0.c1023 \
+  newcontext=system_u:object_r:device_t:s0 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+  systemd[1]: Unable to fix SELinux security context of /dev: Operation not permitted
+
+  avc: denied { create } for pid=1 comm="systemd" name="shm" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir permissive=0
+  systemd[1]: Failed to mount tmpfs at /dev/shm: No such file or directory
+
+  avc: denied { create } for pid=1 comm="systemd" name="pts" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:devpts_t:s0-s15:c0.c1023 tclass=dir permissive=0
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:unlabeled_t:s0 \
+  newcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:tmpfs_t:s15:c0.c1023 \
+  newcontext=system_u:object_r:var_run_t:s0-s15:c0.c1023 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+  systemd[1]: Unable to fix SELinux security context of /run: Operation not permitted
+
+  op=security_validate_transition seresult=denied \
+  oldcontext=system_u:object_r:tmpfs_t:s15:c0.c1023 \
+  newcontext=system_u:object_r:cgroup_t:s0 \
+  taskcontext=system_u:system_r:kernel_t:s15:c0.c1023 tclass=dir
+  systemd[1]: Unable to fix SELinux security context of /sys/fs/cgroup: Operation not permitted
+
+  avc: denied { create } for pid=1 comm="systemd" name="pstore" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:object_r:pstore_t:s0 tclass=dir permissive=0
+
+Reference: https://bugzilla.redhat.com/show_bug.cgi?id=667370
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/kernel/kernel.te | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index 4794f29..363381c 100644
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -328,6 +328,8 @@ mls_file_write_all_levels(kernel_t)
+ mls_file_read_all_levels(kernel_t)
+ mls_socket_write_all_levels(kernel_t)
+ mls_fd_use_all_levels(kernel_t)
++# https://bugzilla.redhat.com/show_bug.cgi?id=667370
++mls_file_downgrade(kernel_t)
+ 
+ ifdef(`distro_redhat',`
+ 	# Bugzilla 222337
+-- 
+2.13.3
+
diff --git a/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-setting-process.patch b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-setting-process.patch
new file mode 100644
index 0000000..530b30d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20170204/poky-policy-kernel_t-mls-trusted-for-setting-process.patch
@@ -0,0 +1,43 @@
+From 5a47be14ff03ae0d959908ad39b429787670d40e Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Fri, 13 Oct 2017 08:16:18 +0000
+Subject: [PATCH] poky-policy: kernel_t mls trusted for setting process level
+
+Because of selinux-init.service always checks the label of init
+process to determine if the system needs to be re-labeled and re-
+booted, a failed transition will cause the target falls into loop
+of re-label & re-boot.
+
+Make kernel_t MLS trusted for setting the level of processes it
+executes to fix below avc denial and remove the error:
+
+  avc: denied { dyntransition } for  pid=1 comm="systemd" \
+  scontext=system_u:system_r:kernel_t:s15:c0.c1023 \
+  tcontext=system_u:system_r:init_t:s0-s15:c0.c1023 \
+  tclass=process permissive=0
+
+  systemd[1]: Failed to transition into init label \
+  'system_u:system_r:init_t:s0-s15:c0.c1023', ignoring.
+
+Upstream-Status: Pending
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/kernel/kernel.te | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/kernel/kernel.te b/policy/modules/kernel/kernel.te
+index 363381c..8105b91 100644
+--- a/policy/modules/kernel/kernel.te
++++ b/policy/modules/kernel/kernel.te
+@@ -328,6 +328,7 @@ mls_file_write_all_levels(kernel_t)
+ mls_file_read_all_levels(kernel_t)
+ mls_socket_write_all_levels(kernel_t)
+ mls_fd_use_all_levels(kernel_t)
++mls_process_set_level(kernel_t)
+ # https://bugzilla.redhat.com/show_bug.cgi?id=667370
+ mls_file_downgrade(kernel_t)
+ 
+-- 
+2.13.3
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20170204.inc b/recipes-security/refpolicy/refpolicy_2.20170204.inc
index 51c5050..06e8c08 100644
--- a/recipes-security/refpolicy/refpolicy_2.20170204.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20170204.inc
@@ -53,6 +53,8 @@ SRC_URI += " \
             file://poky-policy-fix-setfiles-statvfs-get-file-count.patch \
             file://poky-policy-fix-dmesg-to-use-dev-kmsg.patch \
             file://ftp-add-ftpd_t-to-mlsfilewrite.patch \
+            file://poky-policy-kernel_t-mls-trusted-for-lowering-file-l.patch \
+            file://poky-policy-kernel_t-mls-trusted-for-setting-process.patch \
            "
 
 # Backport from upstream
-- 
2.13.0


