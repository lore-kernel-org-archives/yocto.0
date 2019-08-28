Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEC5CE00DD1; Tue, 27 Aug 2019 18:49:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5017E00D77
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 18:49:09 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x7S1n8Xk000328
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 18:49:09 -0700 (PDT)
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Tue, 27 Aug 2019 18:49:08 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 28 Aug 2019 09:48:44 +0800
Message-ID: <20190828014844.40580-2-Qi.Chen@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828014844.40580-1-Qi.Chen@windriver.com>
References: <20190828014844.40580-1-Qi.Chen@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 2/2] ecryptfs-utils: fix race condition in do_install
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
X-List-Received-Date: Wed, 28 Aug 2019 01:49:12 -0000
Content-Type: text/plain

The rootsbindir is a self-defined directory. The install-rootsbinPROGRAMS
is actually treated as part of install-data instead of install-exec.

Do making install-exec-am depend on it actually results in the following
Makefile contents.

  install-data-am: install-rootsbinPROGRAMS
  install-exec-am: install-binPROGRAMS install-binSCRIPTS
          @$(NORMAL_INSTALL)
          $(MAKE) $(AM_MAKEFLAGS) install-exec-hook
  install-exec-hook:      install-rootsbinPROGRAMS

And this results in race condition as two install commands of the same
file running at the same time. Error message is like below.

  TOPDIR/tmp-glibc/hosttools/install: cannot create regular file 'TOPDIR/tmp-glibc/work/aarch64-wrs-linux/ecryptfs-utils/111-r0/image/sbin/mount.ecryptfs': File exists

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../ecryptfs-utils/ecryptfs-utils_111.bb      |  1 +
 .../files/0001-avoid-race-condition.patch     | 32 +++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-security/ecryptfs-utils/files/0001-avoid-race-condition.patch

diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index 8e498c9..e45ee0b 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -14,6 +14,7 @@ DEPENDS = "keyutils libgcrypt intltool-native glib-2.0-native"
 SRC_URI = "\
     https://launchpad.net/ecryptfs/trunk/${PV}/+download/${BPN}_${PV}.orig.tar.gz \
     file://ecryptfs-utils-CVE-2016-6224.patch \
+    file://0001-avoid-race-condition.patch \
     file://ecryptfs.service \
     "
 
diff --git a/recipes-security/ecryptfs-utils/files/0001-avoid-race-condition.patch b/recipes-security/ecryptfs-utils/files/0001-avoid-race-condition.patch
new file mode 100644
index 0000000..af28d58
--- /dev/null
+++ b/recipes-security/ecryptfs-utils/files/0001-avoid-race-condition.patch
@@ -0,0 +1,32 @@
+From ab671b02e3aaf65dd1fd279789ea933b8140fe52 Mon Sep 17 00:00:00 2001
+From: Chen Qi <Qi.Chen@windriver.com>
+Date: Tue, 27 Aug 2019 16:08:00 +0800
+Subject: [PATCH] avoid race condition
+
+The rootsbin directory is self defined. The install-rootsbinPROGRAMS
+is actually treated as part of install-data.
+
+This would avoid race condition which causes install failure.
+
+Upstream-Status: Pending
+
+Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
+---
+ src/utils/Makefile.am | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/utils/Makefile.am b/src/utils/Makefile.am
+index 83cf851..344883a 100644
+--- a/src/utils/Makefile.am
++++ b/src/utils/Makefile.am
+@@ -67,6 +67,6 @@ ecryptfs_stat_LDADD = $(top_builddir)/src/libecryptfs/libecryptfs.la
+ test_SOURCES = test.c io.c
+ test_LDADD = $(top_builddir)/src/libecryptfs/libecryptfs.la
+ 
+-install-exec-hook:	install-rootsbinPROGRAMS
++install-data-hook:	install-rootsbinPROGRAMS
+ 	-rm -f "$(DESTDIR)/$(rootsbindir)/umount.ecryptfs_private"
+ 	$(LN_S) "mount.ecryptfs_private" "$(DESTDIR)/$(rootsbindir)/umount.ecryptfs_private"
+-- 
+2.17.1
+
-- 
2.17.1


