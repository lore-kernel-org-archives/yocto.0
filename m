Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF2BAE00AEC
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:55 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2P17skD010906
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 24 Mar 2014 18:07:55 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Mon, 24 Mar 2014 18:07:54 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>, <Joe.MacDonald@windriver.com>
Date: Mon, 24 Mar 2014 21:07:47 -0400
Message-ID: <b3e19a7b5438116a9a68cef9f6d4c170cd0b170e.1395709062.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1395709062.git.wenzong.fan@windriver.com>
References: <cover.1395709062.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/4] refpolicy: associate tmpfs_t (shm) to device_t (devtmpfs) file systems
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
X-List-Received-Date: Tue, 25 Mar 2014 01:07:57 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The patch is backported from upstream.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 ...associate-tmpfs_t-shm-to-device_t-devtmpf.patch |   30 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 31 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch b/recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch
new file mode 100644
index 0000000..094d9e5
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch
@@ -0,0 +1,30 @@
+Upstream-Status: backport
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+=========================
+From e3072cb7bf8f9e09598f01c9eb58d9cfb319d8a1 Mon Sep 17 00:00:00 2001
+From: Dominick Grift <dominick.grift@gmail.com>
+Date: Tue, 24 Sep 2013 15:39:21 +0200
+Subject: [PATCH] filesystem: associate tmpfs_t (shm) to device_t (devtmpfs)
+ file systems
+
+Signed-off-by: Dominick Grift <dominick.grift@gmail.com>
+---
+ policy/modules/kernel/filesystem.te |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/kernel/filesystem.te b/policy/modules/kernel/filesystem.te
+index ed59e5e..f72cde1 100644
+--- a/policy/modules/kernel/filesystem.te
++++ b/policy/modules/kernel/filesystem.te
+@@ -177,6 +177,7 @@ genfscon vxfs / gen_context(system_u:object_r:vxfs_t,s0)
+ # tmpfs_t is the type for tmpfs filesystems
+ #
+ type tmpfs_t;
++dev_associate(tmpfs_t)
+ fs_type(tmpfs_t)
+ files_type(tmpfs_t)
+ files_mountpoint(tmpfs_t)
+-- 
+1.7.10.4
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 9e5e426..08ed04c 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -58,6 +58,7 @@ SRC_URI += "file://poky-policy-fix-xconsole_device_t-as-a-dev_node.patch \
 
 # Backport from upstream
 SRC_URI += "file://Allow-ping-to-get-set-capabilities.patch \
+            file://filesystem-associate-tmpfs_t-shm-to-device_t-devtmpf.patch \
            "
 
 include refpolicy_common.inc
-- 
1.7.9.5


