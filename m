Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9683.1601198829953556648
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 02:27:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: kai.kang@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BDBBF38C0882
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 02:27:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 08R9Qm13031907
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 02:26:58 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
 14.3.487.0; Sun, 27 Sep 2020 02:26:37 -0700
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-cgl][ 2/3] ocfs2-tools: remove lsbinitscripts from RDEPENDS
Date: Sun, 27 Sep 2020 17:26:19 +0800
Message-ID: <20200927092620.27754-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200927092620.27754-1-kai.kang@windriver.com>
References: <20200927092620.27754-1-kai.kang@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain

From: Robert Yang <liezhi.yang@windriver.com>

The LSB support had been removed from oe-core by:

https://git.openembedded.org/openembedded-core/commit/?id=fb06435

And it works well to start o2cb/ocfs2 services without lsbinitscripts.
So drop LSB support for ocfs2-tools too.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 ...move-unneeded-lib-lsb-init-functions.patch | 32 +++++++++++++++++++
 .../ocfs2-tools/ocfs2-tools_1.8.6.bb          |  5 +--
 2 files changed, 35 insertions(+), 2 deletions(-)
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
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
index bc0551b..81e6c2e 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
@@ -19,6 +19,7 @@ SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
     file://o2cb.service \
     file://ocfs2.service \
     file://0001-Fix-build-with-glibc-2.28.patch \
+    file://0001-o2cb.init.sh-Remove-unneeded-lib-lsb-init-functions.patch \
 "
 SRCREV = "4d76ceb4aa7aaa1fd595368089e99575d708f719"
 S = "${WORKDIR}/git"
@@ -30,11 +31,11 @@ DEPENDS = "corosync pacemaker \
     e2fsprogs e2fsprogs-native \
 "
 
+
 # lsbinitscripts are needed to replace /etc/init.d/functions supplied by initscripts (systemv)
 # They are not the same code!
 #
-RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs glib-2.0 \
-                  ${@bb.utils.contains('DISTRO_FEATURES','systemd','lsbinitscripts','',d)}"
+RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs glib-2.0"
 
 ASNEEDED_pn-${PN} = ""
 PARALLEL_MAKE = ""
-- 
2.17.1

