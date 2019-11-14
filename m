Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D0F6E00E48; Wed, 13 Nov 2019 17:49:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35613E00E40
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1nGUG014429
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:16 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:15 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:45 +0800
Message-ID: <20191114014901.22862-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 03/19] libsepol: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:49:27 -0000
Content-Type: text/plain

* Drop patch 0001-src-Makefile-fix-includedir-in-libsepol.pc.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...kefile-fix-includedir-in-libsepol.pc.patch | 29 -------------------
 recipes-security/selinux/libsepol_2.8.bb      |  9 ------
 recipes-security/selinux/libsepol_2.9.bb      |  7 +++++
 3 files changed, 7 insertions(+), 38 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
 delete mode 100644 recipes-security/selinux/libsepol_2.8.bb
 create mode 100644 recipes-security/selinux/libsepol_2.9.bb

diff --git a/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch b/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
deleted file mode 100644
index 987fdab..0000000
--- a/recipes-security/selinux/libsepol/0001-src-Makefile-fix-includedir-in-libsepol.pc.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 074dbf2f104d1a6ea1aa048600f44f9701c70a60 Mon Sep 17 00:00:00 2001
-From: Robert Yang <liezhi.yang@windriver.com>
-Date: Thu, 18 Feb 2016 02:04:59 +0000
-Subject: [PATCH] src/Makefile: fix includedir in libsepol.pc
-
-Upstream-Status: Pending
-
-Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- src/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/Makefile b/src/Makefile
-index ccb7023..2bb6290 100644
---- a/src/Makefile
-+++ b/src/Makefile
-@@ -51,7 +51,7 @@ $(LIBSO): $(LOBJS) $(LIBMAP)
- 	ln -sf $@ $(TARGET) 
- 
- $(LIBPC): $(LIBPC).in ../VERSION
--	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBDIR):; s:@includedir@:$(INCLUDEDIR):' < $< > $@
-+	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:${libdir}:; s:@includedir@:${prefix}/include:' < $< > $@
- 
- $(LIBMAP): $(LIBMAP).in
- ifneq ($(DISABLE_CIL),y)
--- 
-2.7.4
-
diff --git a/recipes-security/selinux/libsepol_2.8.bb b/recipes-security/selinux/libsepol_2.8.bb
deleted file mode 100644
index d1f905b..0000000
--- a/recipes-security/selinux/libsepol_2.8.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "c19aa9dde1e78d1c2bd3109579e4d484"
-SRC_URI[sha256sum] = "3ad6916a8352bef0bad49acc8037a5f5b48c56f94e4cb4e1959ca475fa9d24d6"
-
-SRC_URI += "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.patch"
diff --git a/recipes-security/selinux/libsepol_2.9.bb b/recipes-security/selinux/libsepol_2.9.bb
new file mode 100644
index 0000000..cd55be6
--- /dev/null
+++ b/recipes-security/selinux/libsepol_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "2fdefe870a61424d8f2d5d37551c6259"
+SRC_URI[sha256sum] = "a34b12b038d121e3e459b1cbaca3c9202e983137819c16baf63658390e3f1d5d"
-- 
2.17.1


