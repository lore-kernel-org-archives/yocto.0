Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC683E00C62; Thu, 17 Mar 2016 23:20:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E4F2E00C57
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 23:20:53 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u2I6KqH6016719
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 23:20:52 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Thu, 17 Mar 2016 23:20:51 -0700
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 18 Mar 2016 14:16:00 +0800
Message-ID: <1458281760-5750-1-git-send-email-rongqing.li@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] ocfs2-tools: uprev to 1.8.4
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
X-List-Received-Date: Fri, 18 Mar 2016 06:20:57 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

1. 1.8.4 asks libaio
2. remove 0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
which has been merged into 1.8.4
3. remove the host contamination by replacing the host related path
in do_configure_prepend
4. add bash into RDEPENDS, since /etc/init.d/ocfs2 and /etc/init.d/o2cb
are the bash scripts

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 ...cfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch | 29 ----------------------
 .../{ocfs2-tools_1.6.4.bb => ocfs2-tools_1.8.4.bb} | 28 ++++++++++++++++-----
 2 files changed, 22 insertions(+), 35 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
 rename meta-cgl-common/recipes-cgl/ocfs2-tools/{ocfs2-tools_1.6.4.bb => ocfs2-tools_1.8.4.bb} (77%)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
deleted file mode 100644
index f07cdab..0000000
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-From 507f5cf55e25fd12d138cc28eb061c7e0b8615b8 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Fri, 12 Dec 2014 16:14:10 +0900
-Subject: [PATCH 2/3] ocfs2_fs.h mount.ocfs2.c: fix compile error
-
-Upstream-Status: pending
-
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
----
- include/ocfs2-kernel/ocfs2_fs.h | 2 +-
- mount.ocfs2/mount.ocfs2.c       | 4 +++-
- 2 files changed, 4 insertions(+), 2 deletions(-)
-
-diff --git a/include/ocfs2-kernel/ocfs2_fs.h b/include/ocfs2-kernel/ocfs2_fs.h
-index 2140bb3..00add7b 100644
---- a/include/ocfs2-kernel/ocfs2_fs.h
-+++ b/include/ocfs2-kernel/ocfs2_fs.h
-@@ -1311,7 +1311,7 @@ static inline int ocfs2_sprintf_system_inode_name(char *buf, int len,
- }
- 
- static inline void ocfs2_set_de_type(struct ocfs2_dir_entry *de,
--				    umode_t mode)
-+				     unsigned short mode)
- {
- 	de->file_type = ocfs2_type_by_mode[(mode & S_IFMT)>>S_SHIFT];
- }
--- 
-1.8.4.2
-
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.6.4.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
similarity index 77%
rename from meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.6.4.bb
rename to meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
index acc8379..18ef563 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.6.4.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
@@ -12,20 +12,18 @@ SECTION = "System Environment/Base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-SRC_URI = " \
-    https://oss.oracle.com/projects/${BPN}/dist/files/source/v1.6/${BP}.tar.gz \
-    file://0002-ocfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch \
+SRC_URI = "git://oss.oracle.com/git/ocfs2-tools.git \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
     file://cluster.conf.sample \
     file://o2cb.service \
     file://ocfs2.service \
 "
-SRC_URI[md5sum] = "2e94423507b63fcc08f93c094e789be8"
-SRC_URI[sha256sum] = "dda9db208312e3e5f4f55ee77e66e7b35b9cc10421bc02065a6c168e42b24755"
+SRCREV = "0b8be47d61dbdcd08d21c83f0b3993735b884ef9"
+S = "${WORKDIR}/git"
 
 inherit autotools-brokensep pkgconfig systemd
 
-DEPENDS = "corosync openais cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs"
+DEPENDS = "corosync openais cluster-glue pacemaker libxml2 linux-libc-headers e2fsprogs libaio"
 RDEPENDS_${PN} = "bash coreutils net-tools module-init-tools e2fsprogs chkconfig glib-2.0"
 ASNEEDED_pn-${PN} = ""
 PARALLEL_MAKE = ""
@@ -38,6 +36,22 @@ EXTRA_OECONF = " \
     --enable-dynamic-fsck=yes \
     --enable-dynamic-ctl=yes \
 "
+
+do_configure_prepend () {
+        # fix here or EXTRA_OECONF
+        sed -i -e '/^PYTHON_INCLUDES="-I/c\
+PYTHON_INCLUDES="-I=/usr/include/python${PYTHON_BASEVERSION}"' \
+                ${S}/pythondev.m4
+        sed -i  -e 's:PYTHON_PREFIX/lib/python:PYTHON_PREFIX/${baselib}/python:' \
+            -e 's:PYTHON_EXEC_PREFIX}/lib/python:PYTHON_EXEC_PREFIX}/${baselib}/python:' \
+                ${S}/python.m4
+
+        # fix the AIS_TRY_PATH which will search corosync|openais
+        # AIS_TRY_PATH=":/usr/lib64/:/usr/lib:/usr/local/lib64:/usr/local/lib"
+        sed -i -e '/^AIS_TRY_PATH=":\/usr\/lib64:/s;:;:=;g' ${S}/configure.in
+}
+
+
 do_compile_prepend() {
     for m in `find . -name "Makefile"` ; do
         sed -i -e "s@-I/usr/include@-I${STAGING_DIR_TARGET}/usr/include@g" $m
@@ -73,3 +87,5 @@ do_install() {
         install -m 755 vendor/common/o2cb.init ${D}/${libexecdir}/o2cb-helper
     fi
 }
+
+RDEPENDS_${PN} = "bash"
-- 
1.9.1


