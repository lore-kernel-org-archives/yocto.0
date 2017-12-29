Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BFBDE00DD0; Thu, 28 Dec 2017 22:25:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99801E00DC9
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 22:24:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBT6OtIX003692
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 22:24:56 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Dec 2017 22:24:55 -0800
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Dec 2017 14:04:27 +0800
Message-ID: <20171229060428.8067-3-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20171229060428.8067-1-mingli.yu@windriver.com>
References: <20171229060428.8067-1-mingli.yu@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl-common][PATCH 2/3] pacemaker: rework 0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
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
X-List-Received-Date: Fri, 29 Dec 2017 06:25:02 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

* Rework the patch as the logic is wrong previously
  as the STAGING_INCDIR is actually applicable in
  cross compiling env.

  Update the patch to locate the right OCF_ROOT_DIR
  in cross compiling env.

* Add "rm -rf ${D}${localstatedir}/lib/heartbeat" to
  fix below error:
  Error: Transaction check error:
  file /var/lib/heartbeat/cores conflicts between attempted installs of pacemaker-1.1.16-r0.core2_64 and cluster-glue-1.0.12-r0.core2_64

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 ...search-header-from-STAGING_INCDIR-to-walka.patch | 21 +++++++++++----------
 .../recipes-cgl/pacemaker/pacemaker_1.1.16.bb       |  3 ++-
 2 files changed, 13 insertions(+), 11 deletions(-)
 mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
old mode 100755
new mode 100644
index 3104512..ee3c722
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch
@@ -1,10 +1,10 @@
-From 6bb056aa8359e33f9b6f8974e2cc8b518ca9fe96 Mon Sep 17 00:00:00 2001
+From f2ab529af7ab31d265dd3e9a53e074317982dffd Mon Sep 17 00:00:00 2001
 From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Tue, 18 Aug 2015 12:34:32 +0900
+Date: Wed, 27 Dec 2017 05:20:45 +0000
 Subject: [PATCH] pacemaker: search header from STAGING_INCDIR to walkaround
  error
 
- ** -I/usr/include/ is unsafe for cross-compilation
+** -I/usr/include/ is unsafe for cross-compilation
 
  ... ...
 
@@ -15,24 +15,25 @@ Upstream-Status: pending
 
 Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
 Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
 ---
- configure.ac | 3 ++-
- 1 file changed, 2 insertions(+), 1 deletion(-)
+ configure.ac | 3 +++
+ 1 file changed, 3 insertions(+)
 
 diff --git a/configure.ac b/configure.ac
-index 08b4611..6fcd1aa 100644
+index 36ccb01..2eade3c 100644
 --- a/configure.ac
 +++ b/configure.ac
-@@ -463,7 +463,8 @@ esac
- 
+@@ -483,6 +483,9 @@ esac
  dnl Eventually remove this
  if test "$cross_compiling" != "yes"; then
--   CPPFLAGS="$CPPFLAGS -I${prefix}/include/heartbeat"
+    CPPFLAGS="$CPPFLAGS -I${prefix}/include/heartbeat"
++else
 +   CFLAGS="$CFLAGS -I${STAGING_INCDIR}/heartbeat"
 +   CPPFLAGS="$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
  fi
  
  AC_SUBST(INIT_EXT)
 -- 
-1.8.4.2
+2.11.0
 
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
index 6b0f453..9ef29b9 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -54,6 +54,7 @@ do_install_append() {
     find ${D} -name "*.pyc" -exec rm {} \;
     rm -rf ${D}/${libdir}/service_crm.so
 
+    rm -rf ${D}${localstatedir}/lib/heartbeat
     rm -rf ${D}${localstatedir}/run
 }
 
@@ -82,7 +83,7 @@ RDEPENDS_${PN}-remote += "libqb bash"
 FILES_${PN} += " ${datadir}/snmp                             \
                  ${libdir}/corosync/lcrso/pacemaker.lcrso    \
                  ${libdir}/${PYTHON_DIR}/dist-packages/cts/  \
-                 ${nonarch_libdir}/ocf/resource.d/ \
+                 ${libdir}/ocf/resource.d/ \
                  ${libdir}/${PYTHON_DIR}/site-packages \
                "
 FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
-- 
2.13.3


