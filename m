Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71317E004E5
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:25 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q8sPhl019552
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 00:54:25 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sun, 26 Jan 2014 00:54:25 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Sun, 26 Jan 2014 03:54:16 -0500
Message-ID: <da730d8219846d94cbe85b10b3f7b00c4b60dadc.1390725931.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390725931.git.wenzong.fan@windriver.com>
References: <cover.1390725931.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/3] refpolicy: fix real path for udevadm
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
X-List-Received-Date: Sun, 26 Jan 2014 08:54:26 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../refpolicy-2.20130424/poky-fc-udevd.patch       |   20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch
index d6540a9..c6c19be 100644
--- a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch
+++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-udevd.patch
@@ -1,17 +1,17 @@
-From 86fd93b15b97042bcf5ff1b2d1228e7d64b8cfd1 Mon Sep 17 00:00:00 2001
+From 025bd3c77d3eeb0e316413bf7e6353f1ccd7f6b2 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Tue, 7 Jan 2014 22:22:00 -0500
-Subject: [PATCH] refpolicy: fix real path for udevd
+Date: Sat, 25 Jan 2014 23:40:05 -0500
+Subject: [PATCH] refpolicy: fix real path for udevd/udevadm
 
 Upstream-Status: Inappropriate [configuration]
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
- policy/modules/system/udev.fc |    1 +
- 1 file changed, 1 insertion(+)
+ policy/modules/system/udev.fc |    2 ++
+ 1 file changed, 2 insertions(+)
 
 diff --git a/policy/modules/system/udev.fc b/policy/modules/system/udev.fc
-index 40928d8..36d471d 100644
+index 40928d8..491bb23 100644
 --- a/policy/modules/system/udev.fc
 +++ b/policy/modules/system/udev.fc
 @@ -10,6 +10,7 @@
@@ -22,6 +22,14 @@ index 40928d8..36d471d 100644
  
  ifdef(`distro_debian',`
  /lib/udev/create_static_nodes -- gen_context(system_u:object_r:udev_exec_t,s0)
+@@ -27,6 +28,7 @@ ifdef(`distro_redhat',`
+ ')
+ 
+ /usr/bin/udevinfo --	gen_context(system_u:object_r:udev_exec_t,s0)
++/usr/bin/udevadm  --	gen_context(system_u:object_r:udev_exec_t,s0)
+ 
+ /usr/lib/systemd/systemd-udevd -- gen_context(system_u:object_r:udev_exec_t,s0)
+ 
 -- 
 1.7.9.5
 
-- 
1.7.9.5


