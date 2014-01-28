Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 655B7E006E9
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:52:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0S1qZps017799
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:52:35 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 27 Jan 2014 17:52:35 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 27 Jan 2014 20:52:30 -0500
Message-ID: <9b4525d3d9a6783d89738b8d48ad3c5abe8f1943.1390815368.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390815368.git.wenzong.fan@windriver.com>
References: <cover.1390815368.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] refpolicy: fix real path for swapoff
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
X-List-Received-Date: Tue, 28 Jan 2014 01:52:36 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy-2.20130424/poky-fc-fstools.patch     |   19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fstools.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fstools.patch
index 8e54921..5343893 100644
--- a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fstools.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fstools.patch
@@ -1,17 +1,17 @@
-From 852860529f24547b662d9383c0eaa821c9efa406 Mon Sep 17 00:00:00 2001
-From: Xin Ouyang <Xin.Ouyang@windriver.com>
-Date: Thu, 22 Aug 2013 19:18:39 +0800
-Subject: [PATCH] efpolicy: fix real path for fstools
+From 7fdfd2ef8764ddfaeb43e53a756af83d42d8ac8b Mon Sep 17 00:00:00 2001
+From: Wenzong Fan <wenzong.fan@windriver.com>
+Date: Mon, 27 Jan 2014 03:54:01 -0500
+Subject: [PATCH] refpolicy: fix real path for fstools
 
 Upstream-Status: Inappropriate [configuration]
 
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
+Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- policy/modules/system/fstools.fc |   11 +++++++++++
- 1 file changed, 11 insertions(+)
+ policy/modules/system/fstools.fc |   12 ++++++++++++
+ 1 file changed, 12 insertions(+)
 
 diff --git a/policy/modules/system/fstools.fc b/policy/modules/system/fstools.fc
-index 7a46b45..9656352 100644
+index 7a46b45..a724776 100644
 --- a/policy/modules/system/fstools.fc
 +++ b/policy/modules/system/fstools.fc
 @@ -1,6 +1,8 @@
@@ -36,7 +36,7 @@ index 7a46b45..9656352 100644
  /sbin/install-mbr	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/jfs_.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/losetup.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
-@@ -24,21 +29,27 @@
+@@ -24,21 +29,28 @@
  /sbin/mkraid		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/mkreiserfs	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/mkswap		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
@@ -55,6 +55,7 @@ index 7a46b45..9656352 100644
  /sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
 +/usr/sbin/sfdisk		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/swapoff		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
++/sbin/swapoff\.util-linux	--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/swapon.*		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  /sbin/tune2fs		--	gen_context(system_u:object_r:fsadm_exec_t,s0)
  
-- 
1.7.9.5


