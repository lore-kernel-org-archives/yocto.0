Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29251E007B9
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 00:21:29 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1D8LS9F023789
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 00:21:28 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Thu, 13 Feb 2014 00:09:57 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Thu, 13 Feb 2014 03:09:21 -0500
Message-ID: <fff8c6f836d66296e4e78ab30c05de1e89f96c6f.1392278548.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1392278548.git.wenzong.fan@windriver.com>
References: <cover.1392278548.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/1] refpolicy: fix real path for su.shadow
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
X-List-Received-Date: Thu, 13 Feb 2014 08:21:30 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../poky-fc-fix-real-path_su.patch                 |   25 ++++++++++++++++++++
 .../refpolicy/refpolicy_2.20130424.inc             |    1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch
new file mode 100644
index 0000000..b0392ce
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch
@@ -0,0 +1,25 @@
+From 4affa5e9797f5d51597c9b8e0f2503883c766699 Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Thu, 13 Feb 2014 00:33:07 -0500
+Subject: [PATCH] fix real path for su.shadow command
+
+Upstream-Status: Inappropriate [only for Poky]
+
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+---
+ policy/modules/admin/su.fc |    2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
+index a563687..0f43827 100644
+--- a/policy/modules/admin/su.fc
++++ b/policy/modules/admin/su.fc
+@@ -4,3 +4,5 @@
+ 
+ /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
+ /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
++
++/bin/su.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
+-- 
+1.7.9.5
+
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 23339e3..9e5e426 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -30,6 +30,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
             file://poky-fc-udevd.patch \
             file://poky-fc-rpm.patch \
             file://poky-fc-ftpwho-dir.patch \
+            file://poky-fc-fix-real-path_su.patch \
            "
 
 # Specific policy for Poky
-- 
1.7.9.5


