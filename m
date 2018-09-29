Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 865E4E009E7; Fri, 28 Sep 2018 18:16:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CC21E009CF
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 18:16:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w8T1GYZW001836
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Sep 2018 18:16:34 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Fri, 28 Sep 2018 18:16:33 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <adrian.dudau@enea.com>, <yocto@yoctoproject.org>
Date: Sat, 29 Sep 2018 09:26:36 +0800
Message-ID: <1538184396-27342-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-cgl][PATCH] pacemaker: improve reproducibility
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
X-List-Received-Date: Sat, 29 Sep 2018 01:16:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

It installs test case by default which contain host
paths and it breaks binary reproducibility.

Pick a fix from ubuntu to make the testing infrastructure
optional, and disable it by default

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...-Make-the-testing-infrastructure-optional.patch | 137 +++++++++++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.1.19.bb      |   2 +
 2 files changed, 139 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-infrastructure-optional.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-infrastructure-optional.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-infrastructure-optional.patch
new file mode 100644
index 0000000..3417aae
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing-infrastructure-optional.patch
@@ -0,0 +1,137 @@
+From 8a7c861e746ef13a2ffe74388891d7ea5709614b Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Ferenc=20W=C3=A1gner?= <wferi@debian.org>
+Date: Thu, 29 Sep 2016 10:47:49 +0200
+Subject: [PATCH] Make the testing infrastructure optional
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Upstream does not want this option, unfortunately.
+https://github.com/ClusterLabs/pacemaker/pull/1149
+
+Signed-off-by: Ferenc Wágner <wferi@debian.org>
+
+It does not install test case by default
+Backport the patch from ubuntu
+http://archive.ubuntu.com/ubuntu/pool/main/p/pacemaker/pacemaker_1.1.18-0ubuntu1.debian.tar.xz
+Upstream-Status: Deny [https://github.com/ClusterLabs/pacemaker/pull/1149]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ Makefile.am         | 2 ++
+ configure.ac        | 5 +++++
+ fencing/Makefile.am | 2 ++
+ lrmd/Makefile.am    | 2 ++
+ pengine/Makefile.am | 2 ++
+ tools/Makefile.am   | 2 ++
+ 6 files changed, 15 insertions(+)
+
+diff --git a/Makefile.am b/Makefile.am
+index 874f6ed..9ce8b12 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -35,6 +35,7 @@ ACLOCAL_AMFLAGS  = -I m4
+ licensedir              = $(docdir)/licenses/
+ license_DATA            = $(wildcard licenses/*)
+ 
++if ENABLE_TESTS
+ # Test components
+ SUBDIRS	+= cts
+ 
+@@ -46,6 +47,7 @@ test_DATA		= valgrind-pcmk.suppressions
+ noinst_PROGRAMS = scratch
+ nodist_scratch_SOURCES	= scratch.c
+ scratch_LDADD	= $(top_builddir)/lib/common/libcrmcommon.la -lm
++endif
+ 
+ scratch.c:
+ 	echo 'int main(void){}' >$@
+diff --git a/configure.ac b/configure.ac
+index b87e61b..a0cf3e2 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -330,6 +330,11 @@ AC_ARG_WITH(configdir,
+     [ CONFIGDIR="$withval" ]
+ )
+ 
++AC_ARG_ENABLE([tests],
++    [AS_HELP_STRING([--disable-tests],[don't build and install the testing components])],,
++    [enable_tests=yes])
++AM_CONDITIONAL([ENABLE_TESTS],[test "x$enable_tests" != xno])
++
+ dnl ===============================================
+ dnl General Processing
+ dnl ===============================================
+diff --git a/fencing/Makefile.am b/fencing/Makefile.am
+index 3bb628f..8c06502 100644
+--- a/fencing/Makefile.am
++++ b/fencing/Makefile.am
+@@ -18,8 +18,10 @@
+ include $(top_srcdir)/Makefile.common
+ 
+ ## binary progs
++if ENABLE_TESTS
+ testdir			= $(datadir)/$(PACKAGE)/tests/fencing
+ test_SCRIPTS		= regression.py
++endif
+ 
+ halibdir	= $(CRM_DAEMON_DIR)
+ halib_PROGRAMS	= stonithd stonith-test
+diff --git a/lrmd/Makefile.am b/lrmd/Makefile.am
+index 33611cb..ad6b88d 100644
+--- a/lrmd/Makefile.am
++++ b/lrmd/Makefile.am
+@@ -19,11 +19,13 @@ include $(top_srcdir)/Makefile.common
+ lrmdlibdir		= $(CRM_DAEMON_DIR)
+ lrmdlib_PROGRAMS	= lrmd lrmd_internal_ctl
+ 
++if ENABLE_TESTS
+ # Test components
+ lrmdlib_PROGRAMS	+= lrmd_test
+ 
+ testdir			= $(datadir)/$(PACKAGE)/tests/lrmd
+ test_SCRIPTS		= regression.py
++endif
+ 
+ initdir			= $(INITDIR)
+ init_SCRIPTS		= pacemaker_remote
+diff --git a/pengine/Makefile.am b/pengine/Makefile.am
+index 861946c..3faae3a 100644
+--- a/pengine/Makefile.am
++++ b/pengine/Makefile.am
+@@ -21,6 +21,7 @@ AM_CPPFLAGS	+= -I$(top_builddir) -I$(top_srcdir)
+ 
+ halibdir	= $(CRM_DAEMON_DIR)
+ 
++if ENABLE_TESTS
+ PE_TESTS	= $(wildcard test10/*.scores)
+ 
+ testdir			= $(datadir)/$(PACKAGE)/tests/pengine
+@@ -29,6 +30,7 @@ test_DATA		= regression.core.sh
+ 
+ test10dir		= $(datadir)/$(PACKAGE)/tests/pengine/test10
+ test10_DATA		= $(PE_TESTS) $(PE_TESTS:%.scores=%.xml) $(PE_TESTS:%.scores=%.exp) $(PE_TESTS:%.scores=%.dot) $(PE_TESTS:%.scores=%.summary) $(wildcard test10/*.stderr)
++endif
+ 
+ beekhof:
+ 	echo $(shell ls -1 test10/*.xml)
+diff --git a/tools/Makefile.am b/tools/Makefile.am
+index 3548035..826396d 100644
+--- a/tools/Makefile.am
++++ b/tools/Makefile.am
+@@ -40,10 +40,12 @@ EXTRA_DIST		= $(sbin_SCRIPTS)
+ sbin_PROGRAMS		= crm_simulate crmadmin cibadmin crm_node crm_attribute crm_resource crm_verify \
+ 			 crm_shadow attrd_updater crm_diff crm_mon iso8601 crm_ticket crm_error
+ 
++if ENABLE_TESTS
+ testdir			= $(datadir)/$(PACKAGE)/tests/cli
+ test_SCRIPTS		= regression.sh
+ test_DATA               = regression.dates.exp regression.tools.exp regression.acls.exp \
+ 			  regression.validity.exp
++endif
+ 
+ if BUILD_HEARTBEAT_SUPPORT
+ sbin_PROGRAMS           += crm_uuid
+-- 
+2.7.4
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
index 181c65f..00893d1 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.19.bb
@@ -21,6 +21,7 @@ SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
            file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch \
            file://0006-pacemaker-do-not-use-libgnutls-config.patch \
            file://set-OCF_ROOT_DIR-to-libdir-ocf.patch \
+           file://0007-Make-the-testing-infrastructure-optional.patch \
            file://volatiles \
            file://tmpfiles \
           "
@@ -45,6 +46,7 @@ EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
                  --with-ais \
                  --without-heartbeat \
                  --disable-pretty \
+                 --disable-tests \
                 "
 
 do_install_append() {
-- 
2.7.4


