Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 363E6E00A26; Tue, 18 Aug 2015 02:51:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_00, RDNS_NONE,
	URIBL_BLACK autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.7 URIBL_BLACK Contains an URL listed in the URIBL
	blacklist *      [URIs: configure.ac]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9835AE009B3
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 02:51:51 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="99759218"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 18 Aug 2015 17:55:07 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t7I9pldu007113
	for <yocto@yoctoproject.org>; Tue, 18 Aug 2015 17:51:47 +0800
Received: from localhost.localdomain (10.167.226.92) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 18 Aug 2015 17:51:50 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 18 Aug 2015 17:51:44 +0800
Message-ID: <1439891504-6693-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.92]
Subject: [meta-cgl][PATCH] pacemaker: upgrade 1.1.12 -> 1.1.13
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
X-List-Received-Date: Tue, 18 Aug 2015 09:51:58 -0000
Content-Type: text/plain

* update 0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
* Modify SRC_URI
* Warning Fix:
  WARNING: QA Issue: pacemaker: Files/directories were installed but not shipped in any package:
  /usr/lib/python2.7
  /usr/lib/python2.7/site-packages
  /usr/lib/python2.7/site-packages/cts
  /usr/lib/python2.7/site-packages/cts/watcher.py

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 ...earch-header-from-STAGING_INCDIR-to-walka.patch | 41 +++++++++-------------
 .../{pacemaker_1.1.12.bb => pacemaker_1.1.13.bb}   |  9 +++--
 2 files changed, 21 insertions(+), 29 deletions(-)
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.12.bb => pacemaker_1.1.13.bb} (92%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
index 7e5f499..0831fda 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
@@ -1,8 +1,8 @@
-From 1fef2f6adaef3c56649adce4aca1b0ef2214c13b Mon Sep 17 00:00:00 2001
-From: Bian Naimeng <biannm@cn.fujitsu.com>
-Date: Fri, 3 Jul 2015 15:55:52 +0900
-Subject: [PATCH 2/2] pacemaker: search header from STAGING_INCDIR to
- walkaround error
+From 6bb056aa8359e33f9b6f8974e2cc8b518ca9fe96 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Tue, 18 Aug 2015 12:34:32 +0900
+Subject: [PATCH] pacemaker: search header from STAGING_INCDIR to walkaround
+ error
 
  ** -I/usr/include/ is unsafe for cross-compilation
 
@@ -11,35 +11,28 @@ Subject: [PATCH 2/2] pacemaker: search header from STAGING_INCDIR to
  ** This autoconf log indicates errors, it looked at host include and/or library paths
  ** while determining system capabilities
 
+Upstream-Status: pending
+
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
 ---
- configure.ac | 6 ++++--
- 1 file changed, 4 insertions(+), 2 deletions(-)
+ configure.ac | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
 
 diff --git a/configure.ac b/configure.ac
-index 25af918..4dee123 100644
+index 08b4611..6fcd1aa 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -451,7 +451,8 @@ case "$host_os" in
- 		;;
- *linux*)
- 		AC_DEFINE_UNQUOTED(ON_LINUX, 1, Compiling for Linux platform)
--  		CFLAGS="$CFLAGS -I${prefix}/include"
-+		CFLAGS="$CFLAGS -I${STAGING_INCDIR}"
-+		CPPFLAGS="$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
-  		;;
- darwin*)
- 		AC_DEFINE_UNQUOTED(ON_DARWIN, 1, Compiling for Darwin platform)
-@@ -461,7 +462,8 @@ darwin*)
- esac
+@@ -463,7 +463,8 @@ esac
  
  dnl Eventually remove this
--CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
-+CFLAGS="$CFLAGS -I${STAGING_INCDIR}/heartbeat"
-+CPPFLAGS="$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
+ if test "$cross_compiling" != "yes"; then
+-   CFLAGS="$CFLAGS -I${prefix}/include/heartbeat"
++   CFLAGS="$CFLAGS -I${STAGING_INCDIR}/heartbeat"
++   CPPFLAGS="$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
+ fi
  
  AC_SUBST(INIT_EXT)
- AC_MSG_NOTICE(Host CPU: $host_cpu)
 -- 
 1.8.4.2
 
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.12.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
similarity index 92%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.12.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
index 8c6e998..1806fe1 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.12.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.13.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=6adca3b36477cc77e04376f9a40df32c \
                    "
 DEPENDS = "corosync libxslt openais libxml2 gnutls resource-agents libqb python-native"
 
-SRC_URI = "https://codeload.github.com/ClusterLabs/${BPN}/tar.gz/Pacemaker-1.1.12;downloadfilename=${BPN}-${PV}.tar.gz \
+SRC_URI = "git://github.com/ClusterLabs/pacemaker.git \
            file://0001-pacemaker-fix-xml-config.patch \
            file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch \
            file://0003-pacemaker-fix-header-defs-lookup.patch \
@@ -23,13 +23,11 @@ SRC_URI = "https://codeload.github.com/ClusterLabs/${BPN}/tar.gz/Pacemaker-1.1.1
            file://volatiles \
            file://tmpfiles \
           "
-
-SRC_URI[md5sum] = "c5c28013efb08441ab74a12034d9e9b4"
-SRC_URI[sha256sum] = "f5c72b609fac18d362880d120f08f990e8afd9388e6ff86c55cd93900ba54d9c"
+SRCREV = "6052cd16c2f455809f8088af76ce86483bf98353"
 
 inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
-S="${WORKDIR}/pacemaker-Pacemaker-${PV}"
+S="${WORKDIR}/git"
 
 EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
                  --disable-fatal-warnings \
@@ -79,6 +77,7 @@ FILES_${PN} += " ${datadir}/snmp                             \
                  ${libdir}/corosync/lcrso/pacemaker.lcrso    \
                  ${libdir}/${PYTHON_DIR}/dist-packages/cts/  \
                  ${libdir}/ocf/resource.d/ \
+                 ${libdir}/${PYTHON_DIR}/site-packages \
                "
 FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
 RDEPENDS_${PN} = "bash python libqb"
-- 
1.8.4.2


