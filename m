Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 917C0E006E9
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:52:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0S1qYau014177
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:52:34 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 27 Jan 2014 17:52:33 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 27 Jan 2014 20:52:29 -0500
Message-ID: <094f3e7c24a6a444e530cc3bb2d20449575382ab.1390815368.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390815368.git.wenzong.fan@windriver.com>
References: <cover.1390815368.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/2] refpolicy: fix real path for cpio
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
X-List-Received-Date: Tue, 28 Jan 2014 01:52:35 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy-2.20130424/poky-fc-rpm.patch         |   25 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-rpm.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-rpm.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-rpm.patch
new file mode 100644
index 0000000..7ba3380
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-rpm.patch
@@ -0,0 +1,25 @@
+From 3ecbd842d51a8e70b3403e857a24203285d4983b Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 27 Jan 2014 01:13:06 -0500
+Subject: [PATCH] refpolicy: fix real path for cpio
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/contrib/rpm.fc |    1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/policy/modules/contrib/rpm.fc b/policy/modules/contrib/rpm.fc
+index ebe91fc..539063c 100644
+--- a/policy/modules/contrib/rpm.fc
++++ b/policy/modules/contrib/rpm.fc
+@@ -58,4 +58,5 @@ ifdef(`distro_redhat',`
+ 
+ ifdef(`enable_mls',`
+ /usr/sbin/cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
++/bin/cpio.cpio	--	gen_context(system_u:object_r:rpm_exec_t,s0)
+ ')
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index cfeeaed..cb1dec6 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -28,6 +28,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-su.patch \
             file://poky-fc-sysnetwork.patch \
             file://poky-fc-udevd.patch \
+            file://poky-fc-rpm.patch \
            "
 
 # Specific policy for Poky
-- 
1.7.9.5


