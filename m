Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 438A4E008B8
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 18:54:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s092sfiK018752
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 8 Jan 2014 18:54:42 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Wed, 8 Jan 2014 18:54:40 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Wed, 8 Jan 2014 21:54:36 -0500
Message-ID: <8c59454e27444ce819e6dcb82165420cbe597bbe.1389235842.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1389235842.git.wenzong.fan@windriver.com>
References: <cover.1389235842.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] refpolicy: fix real path for udevd
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
X-List-Received-Date: Thu, 09 Jan 2014 02:54:42 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

In Yocto the real path for udevd is /lib/udev/udevd, this patch fixes
the init issues like:

udevd[87]: setfilecon /dev/vcsa2 failed: Operation not permitted
udevd[89]: setfilecon /dev/fb0 failed: Operation not permitted

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy-2.20130424/poky-fc-udevd.patch       |   27 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch
new file mode 100644
index 0000000..d6540a9
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch
@@ -0,0 +1,27 @@
+From 86fd93b15b97042bcf5ff1b2d1228e7d64b8cfd1 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Tue, 7 Jan 2014 22:22:00 -0500
+Subject: [PATCH] refpolicy: fix real path for udevd
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/system/udev.fc |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
+index 40928d8..36d471d 100644
+--- a/policy/modules/system/udev.fc
++++ b/policy/modules/system/udev.fc
+@@ -10,6 +10,7 @@
+ /etc/udev/scripts/.+ --	gen_context(system_u:object_r:udev_helper_exec_t,s0)
+ 
+ /lib/udev/udev-acl --	gen_context(system_u:object_r:udev_exec_t,s0)
++/lib/udev/udevd    --	gen_context(system_u:object_r:udev_exec_t,s0)
+ 
+ ifdef(`distro_debian',`
+ /lib/udev/create_static_nodes -- gen_context(system_u:object_r:udev_exec_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 6871813..cfeeaed 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -27,6 +27,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-ssh.patch \
             file://poky-fc-su.patch \
             file://poky-fc-sysnetwork.patch \
+            file://poky-fc-udevd.patch \
            "
 
 # Specific policy for Poky
-- 
1.7.9.5


