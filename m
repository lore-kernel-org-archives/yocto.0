Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 245B0E00E4B; Wed, 13 Nov 2019 17:50:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB386E00E49
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1ncwc024246
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:38 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:37 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:52 +0800
Message-ID: <20191114014901.22862-11-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 10/19] mcstrans: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:08 -0000
Content-Type: text/plain

* Rebase patches

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/mcstrans.inc         |  4 ++--
 .../mcstrans/mcstrans-de-bashify.patch        | 23 +++++++++++--------
 ...tch => mcstrans-fix-the-init-script.patch} | 14 +++++++----
 recipes-security/selinux/mcstrans_2.8.bb      |  7 ------
 recipes-security/selinux/mcstrans_2.9.bb      |  7 ++++++
 5 files changed, 32 insertions(+), 23 deletions(-)
 rename recipes-security/selinux/mcstrans/{0001-mcstrans-fix-the-init-script.patch => mcstrans-fix-the-init-script.patch} (69%)
 delete mode 100644 recipes-security/selinux/mcstrans_2.8.bb
 create mode 100644 recipes-security/selinux/mcstrans_2.9.bb

diff --git a/recipes-security/selinux/mcstrans.inc b/recipes-security/selinux/mcstrans.inc
index 0eb8720..b9c670b 100644
--- a/recipes-security/selinux/mcstrans.inc
+++ b/recipes-security/selinux/mcstrans.inc
@@ -7,7 +7,7 @@ SECTION = "base"
 LICENSE = "GPLv2+"
 
 SRC_URI += "file://mcstrans-de-bashify.patch \
-            file://0001-mcstrans-fix-the-init-script.patch \
+            file://mcstrans-fix-the-init-script.patch \
 "
 
 inherit systemd update-rc.d
@@ -29,7 +29,7 @@ do_install_append() {
     else
         install -d ${D}${sysconfdir}/default/volatiles
         echo "d root root 0755 /var/run/setrans none" \
-            >${D}${sysconfdir}/default/volatiles/volatiles.80_mcstrans
+            >${D}${sysconfdir}/default/volatiles/80_mcstrans
     fi
     install -d ${D}${datadir}/mcstrans
     cp -r share/* ${D}${datadir}/mcstrans/.
diff --git a/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch b/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
index 805d7e5..27fd677 100644
--- a/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
+++ b/recipes-security/selinux/mcstrans/mcstrans-de-bashify.patch
@@ -1,21 +1,23 @@
-commit 54875dcb50f5e40fc86d6fe98dde244bfe4751af
-Author: Joe MacDonald <joe_macdonald@mentor.com>
-Date:   Fri Aug 7 15:16:45 2015 -0400
+From 544b3c078374e5001e7fdc1b7d0b2eafda36f8fe Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Fri, 7 Aug 2015 15:16:45 -0400
+Subject: [PATCH] mcstrans: remove dependency on bash in initscript
 
-    mcstrans: remove dependency on bash in initscript
+There were no apparent bashisms in mcstrans.init, so remove the
+dependency on bash.
 
-    There were no apparent bashisms in mcstrans.init, so remove the dependency
-    on bash.
-
-    Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
+Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 
 Upstream-Status: Pending
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- src/mcstrans.init |    2 +-
+ src/mcstrans.init | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
+diff --git a/src/mcstrans.init b/src/mcstrans.init
+index 2804ec0..8b4737d 100644
 --- a/src/mcstrans.init
 +++ b/src/mcstrans.init
 @@ -1,4 +1,4 @@
@@ -24,3 +26,6 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  #
  # mcstransd        This starts and stops mcstransd
  #
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/mcstrans/0001-mcstrans-fix-the-init-script.patch b/recipes-security/selinux/mcstrans/mcstrans-fix-the-init-script.patch
similarity index 69%
rename from recipes-security/selinux/mcstrans/0001-mcstrans-fix-the-init-script.patch
rename to recipes-security/selinux/mcstrans/mcstrans-fix-the-init-script.patch
index 5f7163d..79be090 100644
--- a/recipes-security/selinux/mcstrans/0001-mcstrans-fix-the-init-script.patch
+++ b/recipes-security/selinux/mcstrans/mcstrans-fix-the-init-script.patch
@@ -1,17 +1,21 @@
-[PATCH] mcstrans: fix the init script
-
-Upstream-Status: Inappropriate [embedded specific]
+From 4d918a9679d2902ca2d41fe769a4d76f07a67b5f Mon Sep 17 00:00:00 2001
+From: Roy Li <rongqing.li@windriver.com>
+Date: Wed, 6 Nov 2019 22:13:33 +0800
+Subject: [PATCH] mcstrans: fix the init script
 
 replace daemon with start-stop-daemon, due to not daemon functions
 
+Upstream-Status: Inappropriate [embedded specific]
+
 Signed-off-by: Roy Li <rongqing.li@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  src/mcstrans.init | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/mcstrans.init b/src/mcstrans.init
-index 2804ec0..c660290 100644
+index 8b4737d..86c89ea 100644
 --- a/src/mcstrans.init
 +++ b/src/mcstrans.init
 @@ -51,7 +51,7 @@ start(){
@@ -24,5 +28,5 @@ index 2804ec0..c660290 100644
  	echo
  	if test $RETVAL = 0 ; then
 -- 
-1.9.1
+2.7.4
 
diff --git a/recipes-security/selinux/mcstrans_2.8.bb b/recipes-security/selinux/mcstrans_2.8.bb
deleted file mode 100644
index 8923c3c..0000000
--- a/recipes-security/selinux/mcstrans_2.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
-
-SRC_URI[md5sum] = "3a0edb2a8b6a255199824abd58c0906c"
-SRC_URI[sha256sum] = "ec6ea65660550ed6bbd2a834725ba7526ac53599753d7b95072e4afd4afc14e4"
diff --git a/recipes-security/selinux/mcstrans_2.9.bb b/recipes-security/selinux/mcstrans_2.9.bb
new file mode 100644
index 0000000..34aab03
--- /dev/null
+++ b/recipes-security/selinux/mcstrans_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
+SRC_URI[md5sum] = "0f70a1eb6565a9f61a017cc408ea4c7a"
+SRC_URI[sha256sum] = "7eddce6ffefc9a26340f2720ba9afd7d041a31569844842d0199bfe27c5efb19"
-- 
2.17.1


