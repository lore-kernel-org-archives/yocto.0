Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6A2E00C7D; Fri, 10 Aug 2018 01:11:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 103C7E00D2F
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:11:22 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7A8B2js004468
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:11:12 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 10 Aug 2018 01:10:51 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Aug 2018 16:10:03 +0800
Message-ID: <1533888603-57726-7-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
References: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] pacemaker: upgrade 1.1.16 -> 1.1.19
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
X-List-Received-Date: Fri, 10 Aug 2018 08:11:36 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 ...-pacemaker-fix-compile-error-of-musl-libc.patch | 56 ++++++++++++++++++++++
 .../pacemaker/0001-pacemaker-fix-xml-config.patch  | 19 +++++---
 .../{pacemaker_1.1.16.bb => pacemaker_1.1.19.bb}   |  7 ++-
 3 files changed, 73 insertions(+), 9 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.16.bb => pacemaker_1.1.19.bb} (94%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
new file mode 100644
index 0000000..f8cbb7e
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
@@ -0,0 +1,56 @@
+From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17 00:00:00 2001
+From: Changqing Li <changqing.li@windriver.com>
+Date: Fri, 10 Aug 2018 15:08:31 +0800
+Subject: [PATCH] pacemaker: fix compile error of musl libc
+
+Upstream-Status: Pending
+
+Signed-off-by: Changqing Li <changqing.li@windriver.com>
+---
+ include/crm/stonith-ng.h | 1 +
+ lib/cib/cib_remote.c     | 3 ---
+ tools/crm_mon.c          | 2 +-
+ 3 files changed, 2 insertions(+), 4 deletions(-)
+
+diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.h
+index 56c1ec7..a637b47 100644
+--- a/include/crm/stonith-ng.h
++++ b/include/crm/stonith-ng.h
+@@ -28,6 +28,7 @@
+ #  include <dlfcn.h>
+ #  include <errno.h>
+ #  include <stdbool.h>
++#  include <time.h>
+ 
+ /* TO-DO: Work out how to drop this requirement */
+ #  include <libxml/tree.h>
+diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remote.c
+index 4d7b93b..8be8ecc 100644
+--- a/lib/cib/cib_remote.c
++++ b/lib/cib/cib_remote.c
+@@ -53,9 +53,6 @@ typedef void gnutls_session_t;
+ #endif
+ 
+ #include <arpa/inet.h>
+-#ifndef ON_BSD
+-#  include <sgtty.h>
+-#endif
+ 
+ #define DH_BITS 1024
+ 
+diff --git a/tools/crm_mon.c b/tools/crm_mon.c
+index 7c63803..1ae6c21 100644
+--- a/tools/crm_mon.c
++++ b/tools/crm_mon.c
+@@ -553,7 +553,7 @@ main(int argc, char **argv)
+ 
+ #if !defined (ON_DARWIN) && !defined (ON_BSD)
+     /* prevent zombies */
+-    signal(SIGCLD, SIG_IGN);
++    signal(SIGCHLD, SIG_IGN);
+ #endif
+ 
+     if (crm_ends_with_ext(argv[0], ".cgi") == TRUE) {
+-- 
+2.7.4
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
index c27052d..72c3a1e 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xml-config.patch
@@ -1,27 +1,29 @@
-From a55e235f56bc6e894e79fa200c39678e06ef985e Mon Sep 17 00:00:00 2001
-From: Bian Naimeng <biannm@cn.fujitsu.com>
-Date: Fri, 3 Jul 2015 15:48:58 +0900
+From ac1ff1d538d2be205fbcc9676c6497a1395b71d8 Mon Sep 17 00:00:00 2001
+From: Changqing Li <changqing.li@windriver.com>
+Date: Fri, 10 Aug 2018 14:59:33 +0800
 Subject: [PATCH] pacemaker: fix xml config
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
 
+update to version 1.1.19
+Signed-off-by: Changqing Li <changqing.li@windriver.com>
 ---
  configure.ac | 17 ++++++-----------
  1 file changed, 6 insertions(+), 11 deletions(-)
 
 diff --git a/configure.ac b/configure.ac
-index 7195f9b..5e420f2 100644
+index 3bf1914..345caeb 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -557,7 +557,6 @@ AC_PATH_PROGS(TAR, tar)
+@@ -555,7 +555,6 @@ AC_PATH_PROGS(TAR, tar)
  AC_PATH_PROGS(MD5, md5)
  AC_PATH_PROGS(TEST, test)
- AC_PATH_PROGS(PKGCONFIG, pkg-config)
+ PKG_PROG_PKG_CONFIG
 -AC_PATH_PROGS(XML2CONFIG, xml2-config)
  AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
  AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
  
-@@ -807,17 +806,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
+@@ -805,17 +804,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
  dnl AC_CHECK_HEADERS(netinet/ip6.h)
  dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
  
@@ -45,3 +47,6 @@ index 7195f9b..5e420f2 100644
  
  AC_CHECK_HEADERS(libxml/xpath.h)
  AC_CHECK_HEADERS(libxslt/xslt.h)
+-- 
+2.7.4
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
similarity index 94%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
index 8726111..bd3526d 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
@@ -24,8 +24,11 @@ SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
            file://volatiles \
            file://tmpfiles \
           "
-SRC_URI[md5sum] = "6f60f733823d31acbef4556fb749c457"
-SRC_URI[sha256sum] = "2642264b27c584eff5747a2a34c7f2bff13d52741e4e5cc70f14b2b6cd1fe7d5"
+
+SRC_URI_append_libc-musl = "file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
+
+SRC_URI[md5sum] = "deb7017c5a9d3f39895d9ea2c34bc8eb"
+SRC_URI[sha256sum] = "6e222046487c2dc6ae61d49089ecbf6a0bcb495e8cdcb76d115fd987d0df8f7f"
 
 inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
-- 
2.7.4


