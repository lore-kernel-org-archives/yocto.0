Return-Path: <elvis.dowson@mac.com>
Received: from nk11p04mm-asmtpout009.mac.com (nk11p04mm-asmtp009.mac.com
	[17.158.236.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C8C4E0044D
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 11:49:13 -0700 (PDT)
MIME-version: 1.0
Received: from [192.168.1.33] ([88.6.19.240]) by nk11p04mm-asmtp009.mac.com
	(Oracle Communications Messaging Server 7u4-23.01(7.0.4.23.0) 64bit
	(built Aug
	10 2011)) with ESMTPSA id <0M3G000NYMXYIQ10@nk11p04mm-asmtp009.mac.com>
	for yocto@yoctoproject.org; Thu, 03 May 2012 18:49:13 +0000 (GMT)
X-Proofpoint-Virus-Version: vendor=fsecure
	engine=2.50.10432:5.6.7580,1.0.260,0.0.0000
	definitions=2012-05-03_07:2012-05-03, 2012-05-03,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0
	classifier=spam
	adjust=0 reason=mlx scancount=1 engine=6.0.2-1012030000
	definitions=main-1205030204
From: Elvis Dowson <elvis.dowson@mac.com>
Date: Thu, 03 May 2012 20:49:09 +0200
Message-id: <10617B07-572F-45A3-9508-4451FEB9299F@mac.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
X-Mailman-Approved-At: Thu, 03 May 2012 11:54:51 -0700
Subject: [meta-xilinx] Rename to util-linux_2.21.1.bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 May 2012 18:49:13 -0000
Content-transfer-encoding: 7BIT
Content-type: text/plain; CHARSET=US-ASCII

Hi,
      This patch fixes a build issue with meta-xilinx, since util-linux_2.21.bb recipe has been renamed to util-linux_2.21.1.bb

Best regards,

Elvis Dowson


From 6d5684d44c1eac67e551a98b0751e996470d203c Mon Sep 17 00:00:00 2001
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 20:34:51 +0200
Subject: [PATCH] Rename to util-linux_2.21.1.bbappend

This commit renames util-linux_2.21.bbappend to util-linux_2.21.1.bbappend
to match the corresponding change in version to the
poky/meta/recipes-core/util-linux/util-linux_2.21.1.bb recipe.

Signed-off-by: Elvis Dowson <elvis.dowson@gmail.com>
---
 recipes-core/util-linux/util-linux_2.21.1.bbappend |    3 +++
 recipes-core/util-linux/util-linux_2.21.bbappend   |    3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)
 create mode 100644 recipes-core/util-linux/util-linux_2.21.1.bbappend
 delete mode 100644 recipes-core/util-linux/util-linux_2.21.bbappend

diff --git a/recipes-core/util-linux/util-linux_2.21.1.bbappend b/recipes-core/util-linux/util-linux_2.21.1.bbappend
new file mode 100644
index 0000000..5199eb2
--- /dev/null
+++ b/recipes-core/util-linux/util-linux_2.21.1.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+# Disable microblaze ncurses support
+EXTRA_OECONF_microblaze += " --without-ncurses "
diff --git a/recipes-core/util-linux/util-linux_2.21.bbappend b/recipes-core/util-linux/util-linux_2.21.bbappend
deleted file mode 100644
index 5199eb2..0000000
--- a/recipes-core/util-linux/util-linux_2.21.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
-# Disable microblaze ncurses support
-EXTRA_OECONF_microblaze += " --without-ncurses "
-- 
1.7.9.5




