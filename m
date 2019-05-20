Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71AC3E00D39; Sun, 19 May 2019 21:42:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09D17E00D36
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 21:42:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x4K4gEcc026962
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 19 May 2019 21:42:14 -0700 (PDT)
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Sun, 19 May 2019 21:42:14 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Mon, 20 May 2019 12:41:39 +0800
Message-ID: <1558327299-10731-3-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558327299-10731-1-git-send-email-yi.zhao@windriver.com>
References: <1558327299-10731-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-selinux][PATCH 3/3] util-linux: drop obsolete patch
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
X-List-Received-Date: Mon, 20 May 2019 04:42:17 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../util-linux/fix-libmount_la_DEPENDENCIES.patch  | 28 ----------------------
 1 file changed, 28 deletions(-)
 delete mode 100644 recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch

diff --git a/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch b/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch
deleted file mode 100644
index ab54818..0000000
--- a/recipes-core/util-linux/util-linux/fix-libmount_la_DEPENDENCIES.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-Subject: [PATCH] util-linux: fix libmount_la_DEPENDENCIES.
-
-Upstream-Status: Pending
-
-libmount_la_LIBADD contains "-lselinux", this is not a object that
-could consider as a dependency target. So fix this.
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- libmount/src/Makemodule.am |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/libmount/src/Makemodule.am b/libmount/src/Makemodule.am
-index 494e02a..bf494a4 100644
---- a/libmount/src/Makemodule.am
-+++ b/libmount/src/Makemodule.am
-@@ -38,7 +38,7 @@ libmount_la_CFLAGS = \
- 	-I$(top_srcdir)/libmount/src
- 
- libmount_la_DEPENDENCIES = \
--	$(libmount_la_LIBADD) \
-+	libcommon.la libblkid.la \
- 	libmount/src/libmount.sym \
- 	libmount/src/libmount.h.in
- 
--- 
-1.7.5.4
-
-- 
2.7.4


