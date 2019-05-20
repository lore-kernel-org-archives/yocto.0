Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 995A5E00D33; Sun, 19 May 2019 21:41:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F5C9E00CD2
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 21:41:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x4K4fgcY010332
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 19 May 2019 21:41:42 -0700 (PDT)
Received: from localhost (128.224.162.136) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Sun, 19 May 2019 21:41:41 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>
Date: Mon, 20 May 2019 12:41:37 +0800
Message-ID: <1558327299-10731-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.136]
Subject: [meta-selinux][PATCH 1/3] mesa: switch to meson build
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
X-List-Received-Date: Mon, 20 May 2019 04:41:48 -0000
Content-Type: text/plain

The mesa had been converted to use meson build system in oe-core commit
c72b6d46d392bfbcf54154f43663a7a8ada8c567. Update the bbappend to adapt
it.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-graphics/mesa/mesa_%.bbappend  | 2 +-
 recipes-graphics/mesa/mesa_selinux.inc | 6 ------
 2 files changed, 1 insertion(+), 7 deletions(-)
 delete mode 100644 recipes-graphics/mesa/mesa_selinux.inc

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
index b0b03ec..02c4918 100644
--- a/recipes-graphics/mesa/mesa_%.bbappend
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -1,2 +1,2 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
+inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'meson-selinux', '', d)}
 
diff --git a/recipes-graphics/mesa/mesa_selinux.inc b/recipes-graphics/mesa/mesa_selinux.inc
deleted file mode 100644
index 0004f71..0000000
--- a/recipes-graphics/mesa/mesa_selinux.inc
+++ /dev/null
@@ -1,6 +0,0 @@
-inherit enable-selinux
-
-# But wait!  There's more!  mesa builds a host program named builtin_compiler
-# and it needs selinux, too.  We replace the PACKAGECONFIG[] in the bbclass.
-#
-PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux libselinux-native,"
-- 
2.7.4


