Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3097DE00D47; Tue, 17 Sep 2019 01:05:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 646A6E00D00
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 01:05:11 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8H85AbV022039
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 01:05:10 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Tue, 17 Sep 2019 01:05:09 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 17 Sep 2019 16:04:46 +0800
Message-ID: <1568707486-382596-2-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568707486-382596-1-git-send-email-changqing.li@windriver.com>
References: <1568707486-382596-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 2/2] ocfs2-tools: Remove lsb from RDEPENDS
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
X-List-Received-Date: Tue, 17 Sep 2019 08:05:12 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

The lsb had been removed from oe-core, and the "systemctl start o2cb/ocfs2"
works well after patched, when systemd (no /etc/init.d/functions, either), so
remove the unneeded line.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 ...sh-Remove-unneeded-lib-lsb-init-functions.patch | 32 ++++++++++++++++++++++
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb   |  7 ++---
 2 files changed, 34 insertions(+), 5 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch
new file mode 100644
index 0000000..5609b4b
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch
@@ -0,0 +1,32 @@
+From b7913a62e2d78fa98ae2c475de4cc697519181e2 Mon Sep 17 00:00:00 2001
+From: Robert Yang <liezhi.yang@windriver.com>
+Date: Tue, 10 Sep 2019 19:29:16 -0700
+Subject: [PATCH] o2cb.init.sh: Remove unneeded /lib/lsb/init-functions
+
+The "systemctl start o2cb/ocfs2" works well when systemd (no
+/etc/init.d/functions, either), so remove the unneeded line.
+
+Upstream-Status: Pending
+
+Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+---
+ vendor/common/o2cb.init.sh | 3 ---
+ 1 file changed, 3 deletions(-)
+
+diff --git a/vendor/common/o2cb.init.sh b/vendor/common/o2cb.init.sh
+index 8b0dbf09..49eb9a4c 100755
+--- a/vendor/common/o2cb.init.sh
++++ b/vendor/common/o2cb.init.sh
+@@ -25,9 +25,6 @@ then
+ start_daemon () {
+     daemon  $*
+ }
+-else
+-# Let's try to use the LSB functions
+-. /lib/lsb/init-functions
+ fi
+ 
+ if [ $? != 0 ]
+-- 
+2.21.0
+
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
index a0376ec..d64c868 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.5.bb
@@ -21,6 +21,7 @@ SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
     file://ocfs2.service \
     file://0001-Fix-build-with-glibc-2.28.patch \
     file://0001-mounted.ocfs2-use-sys-sysmacros.h-include-for-makede.patch \
+    file://0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch \
 "
 SRCREV = "f1b4d073f08679f97b64b3eb88e586032f92a701"
 S = "${WORKDIR}/git"
@@ -32,11 +33,7 @@ DEPENDS = "corosync pacemaker \
     e2fsprogs e2fsprogs-native \
 "
 
-# lsbinitscripts are needed to replace /etc/init.d/functions supplied by initscripts (systemv)
-# They are not the same code!
-#
-RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0 \
-                  ${@bb.utils.contains('DISTRO_FEATURES','systemd','lsbinitscripts','',d)}"
+RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
 
 ASNEEDED_pn-${PN} = ""
 PARALLEL_MAKE = ""
-- 
2.7.4


