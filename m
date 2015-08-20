Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 014BAE009EF; Wed, 19 Aug 2015 20:35:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7313BE009EF
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 20:35:56 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="99830996"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 20 Aug 2015 11:39:10 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t7K3ZpN6026838
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 11:35:51 +0800
Received: from localhost.localdomain (10.167.226.92) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Thu, 20 Aug 2015 11:35:54 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 20 Aug 2015 11:35:26 +0800
Message-ID: <1440041726-1637-2-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1440041726-1637-1-git-send-email-lixin.fnst@cn.fujitsu.com>
References: <A8FC939F80655644A89BB21CCD3741E8011BCBB2A0@G08CNEXMBPEKD03.g08.fujitsu.local>
	<1440041726-1637-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.92]
Subject: [meta-cgl][PATCH v2] ocfs2-tools: upgrade 1.4.3 -> 1.6.4
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
X-List-Received-Date: Thu, 20 Aug 2015 03:35:58 -0000
Content-Type: text/plain

* Dropped backported 0001-ocfs2_controld-Makefile-fix-compile-error.patch.
* Update 0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch,since the context changed.
* Modify SRC_URI,since the original one is unstable.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 ...ocfs2_controld-Makefile-fix-compile-error.patch | 62 ----------------------
 ...cfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch | 22 --------
 .../{ocfs2-tools_1.4.3.bb => ocfs2-tools_1.6.4.bb} | 15 +++---
 3 files changed, 8 insertions(+), 91 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
 rename meta-cgl-common/recipes-cgl/ocfs2-tools/{ocfs2-tools_1.4.3.bb => ocfs2-tools_1.6.4.bb} (88%)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
deleted file mode 100644
index c30f38f..0000000
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
+++ /dev/null
@@ -1,62 +0,0 @@
-From 865444fb9ecfe5b0050075f986a328701aa3d580 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Fri, 12 Dec 2014 16:11:43 +0900
-Subject: [PATCH 1/3] ocfs2_controld/Makefile: fix compile error
-
-ERROR: This autoconf log indicates errors, it looked at host
-include and/or library paths while determining system capabilities.
-
-Upstream-Status: pending
-
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
----
- ocfs2_controld/Makefile    | 4 ++--
- ocfs2_controld/pacemaker.c | 3 ++-
- 2 files changed, 4 insertions(+), 3 deletions(-)
-
-diff --git a/ocfs2_controld/Makefile b/ocfs2_controld/Makefile
-index 52aa493..b530d72 100644
---- a/ocfs2_controld/Makefile
-+++ b/ocfs2_controld/Makefile
-@@ -17,7 +17,7 @@ SBIN_PROGRAMS += ocfs2_controld.pcmk
- PCMK_INCLUDES = -I/usr/include/pacemaker -I/usr/include/heartbeat/ $(GLIB_CFLAGS)
- endif
- 
--INCLUDES = -I$(TOPDIR)/include -I. $(PCMK_INCLUDES)
-+INCLUDES = -I/usr/include/libxml2 -I$(TOPDIR)/include -I. $(PCMK_INCLUDES)
- LIBO2CB_LIBS = -L$(TOPDIR)/libo2cb -lo2cb
- LIBO2CB_DEPS = $(TOPDIR)/libo2cb/libo2cb.a
- LIBOCFS2_LIBS = -L$(TOPDIR)/libocfs2 -locfs2
-@@ -67,7 +67,7 @@ DIST_FILES =				\
- ocfs2_controld.pcmk: $(PCMK_DAEMON_OBJS) $(LIBO2CB_DEPS)
- 	$(LINK) $(GLIB_LIBS) $(LIBO2CB_LIBS) $(COM_ERR_LIBS) \
- 		$(OPENAIS_LIBS) $(COROSYNC_LIBS) \
--		$(DLMCONTROL_LIBS) -lcrmcluster -lstonithd
-+		$(DLMCONTROL_LIBS) -lcrmcluster -lcrmcommon
- 
- ocfs2_controld.cman: $(CMAN_DAEMON_OBJS) $(LIBO2CB_DEPS)
- 	$(LINK) $(LIBO2CB_LIBS) $(COM_ERR_LIBS) $(OPENAIS_LIBS) \
-diff --git a/ocfs2_controld/pacemaker.c b/ocfs2_controld/pacemaker.c
-index 8df1052..1361b13 100644
---- a/ocfs2_controld/pacemaker.c
-+++ b/ocfs2_controld/pacemaker.c
-@@ -22,6 +22,7 @@
- 
- #include <bzlib.h>
- 
-+#include <corosync/corodefs.h>
- #include <pacemaker/crm_config.h>
- /* heartbeat support is irrelevant here */
- #undef SUPPORT_HEARTBEAT
-@@ -155,7 +156,7 @@ int setup_stack(void)
- 	crm_log_init("ocfs2_controld", LOG_INFO, FALSE, TRUE, 0, NULL);
- 
- 	if(init_ais_connection(NULL, NULL, NULL, &local_node_uname, &our_nodeid) == FALSE) {
--		log_error("Connection to our AIS plugin (%d) failed", CRM_SERVICE);
-+		log_error("Connection to our AIS plugin (%d) failed", PCMK_SERVICE);
- 		return -1;
- 	}
- 
--- 
-1.8.4.2
-
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
index 799eb45..f07cdab 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
@@ -24,28 +24,6 @@ index 2140bb3..00add7b 100644
  {
  	de->file_type = ocfs2_type_by_mode[(mode & S_IFMT)>>S_SHIFT];
  }
-diff --git a/mount.ocfs2/mount.ocfs2.c b/mount.ocfs2/mount.ocfs2.c
-index f820a30..3e5b362 100644
---- a/mount.ocfs2/mount.ocfs2.c
-+++ b/mount.ocfs2/mount.ocfs2.c
-@@ -261,7 +261,7 @@ int main(int argc, char **argv)
- 	char *extra = NULL;
- 	int dev_ro = 0;
- 	char *hbstr = NULL;
--	char stackstr[strlen(OCFS2_CLUSTER_STACK_ARG) + OCFS2_STACK_LABEL_LEN + 1] = "";
-+	char stackstr[strlen(OCFS2_CLUSTER_STACK_ARG) + OCFS2_STACK_LABEL_LEN + 1];
- 	ocfs2_filesys *fs = NULL;
- 	struct o2cb_cluster_desc cluster;
- 	struct o2cb_region_desc desc;
-@@ -269,6 +269,8 @@ int main(int argc, char **argv)
- 	int hb_started = 0;
- 	struct stat statbuf;
- 
-+	stackstr[0] = '\0';
-+
- 	initialize_ocfs_error_table();
- 	initialize_o2dl_error_table();
- 	initialize_o2cb_error_table();
 -- 
 1.8.4.2
 
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.6.4.bb
similarity index 88%
rename from meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
rename to meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.6.4.bb
index 1296fd6..acc8379 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.6.4.bb
@@ -11,19 +11,20 @@ HOMEPAGE = "http://oss.oracle.com/projects/ocfs2-tools/"
 SECTION = "System Environment/Base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
 SRC_URI = " \
-    https://github.com/flexiant/${PN}/archive/${BP}.zip \
-    file://0001-ocfs2_controld-Makefile-fix-compile-error.patch \
+    https://oss.oracle.com/projects/${BPN}/dist/files/source/v1.6/${BP}.tar.gz \
     file://0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
     file://cluster.conf.sample \
     file://o2cb.service \
     file://ocfs2.service \
 "
-SRC_URI[md5sum] = "296f1242f4d00d188231d726d7a1d148"
-SRC_URI[sha256sum] = "a809f03c62e515a4c23e98c4b4c3f8150377af2cf44cd2a2ee56e175b0e4d0b3"
-S = "${WORKDIR}/ocfs2-tools-ocfs2-tools-1.4.3"
-inherit autotools-brokensep pkgconfig
+SRC_URI[md5sum] = "2e94423507b63fcc08f93c094e789be8"
+SRC_URI[sha256sum] = "dda9db208312e3e5f4f55ee77e66e7b35b9cc10421bc02065a6c168e42b24755"
+
+inherit autotools-brokensep pkgconfig systemd
+
 DEPENDS = "corosync openais cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs"
 RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
 ASNEEDED_pn-${PN} = ""
@@ -31,6 +32,7 @@ PARALLEL_MAKE = ""
 INSANE_SKIP_${PN} = "unsafe-references-in-binaries"
 CFLAGS_append += "-DGLIB_COMPILATION"
 CPPFLAGS_append += "-DGLIB_COMPILATION"
+
 EXTRA_OECONF = " \
     --enable-ocfs2console=no \
     --enable-dynamic-fsck=yes \
@@ -42,7 +44,6 @@ do_compile_prepend() {
     done
 }
 
-inherit systemd
 SYSTEMD_SERVICE_${PN} = "o2cb.service ocfs2.service"
 
 do_install() {
-- 
1.8.4.2


