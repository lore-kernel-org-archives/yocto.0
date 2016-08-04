Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE6F3E00E68; Thu,  4 Aug 2016 02:38:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C564E00E68
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 02:38:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u749cAN1025346
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 4 Aug 2016 02:38:10 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Thu, 4 Aug 2016 02:38:09 -0700
From: <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Thu, 4 Aug 2016 17:38:02 +0800
Message-ID: <20160804093802.10139-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.2.368.g08bb350
In-Reply-To: <20160804093802.10139-1-kai.kang@windriver.com>
References: <20160804093802.10139-1-kai.kang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH] libvirt: upgrade 1.3.2 -> 1.3.5
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
X-List-Received-Date: Thu, 04 Aug 2016 09:38:14 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Upgrade libvirt  from 1.3.2 to 1.3.5.

* update checksums and remove PR
* remove trailing whitespace
* remove backport patch 0001-fix-crash-in-getAllDomainStats.patch
* update context of patches
* remove libvirtd.socket from SYSTEMD_SERVICE which doesn't exist anymore
* install test data which ptest requires

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../0001-to-fix-build-error.patch                  |  0
 recipes-extended/libvirt/libvirt-python.inc        |  5 +-
 .../0001-fix-crash-in-getAllDomainStats.patch      | 57 ----------------------
 ...vert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch | 16 ++++--
 .../libvirt/libvirt/install-missing-file.patch     | 12 ++++-
 recipes-extended/libvirt/libvirt/runptest.patch    | 34 +++++++------
 .../libvirt/{libvirt_1.3.2.bb => libvirt_1.3.5.bb} | 10 ++--
 7 files changed, 47 insertions(+), 87 deletions(-)
 rename recipes-extended/libvirt/{libvirt-1.3.2 => libvirt-1.3.5}/0001-to-fix-build-error.patch (100%)
 delete mode 100644 recipes-extended/libvirt/libvirt/0001-fix-crash-in-getAllDomainStats.patch
 rename recipes-extended/libvirt/{libvirt_1.3.2.bb => libvirt_1.3.5.bb} (97%)

diff --git a/recipes-extended/libvirt/libvirt-1.3.2/0001-to-fix-build-error.patch b/recipes-extended/libvirt/libvirt-1.3.5/0001-to-fix-build-error.patch
similarity index 100%
rename from recipes-extended/libvirt/libvirt-1.3.2/0001-to-fix-build-error.patch
rename to recipes-extended/libvirt/libvirt-1.3.5/0001-to-fix-build-error.patch
diff --git a/recipes-extended/libvirt/libvirt-python.inc b/recipes-extended/libvirt/libvirt-python.inc
index 405d5f7..7fcce43 100644
--- a/recipes-extended/libvirt/libvirt-python.inc
+++ b/recipes-extended/libvirt/libvirt-python.inc
@@ -17,10 +17,9 @@ FILES_${PN}-python = "${bindir}/* ${libdir}/* ${libdir}/${PYTHON_DIR}/*"
 
 SRC_URI += "http://libvirt.org/sources/python/libvirt-python-${PV}.tar.gz;name=libvirt_python"
 SRC_URI += "file://libvirt_api_xml_path.patch;patchdir=../libvirt-python-${PV}"
-SRC_URI += "file://0001-fix-crash-in-getAllDomainStats.patch;patchdir=../libvirt-python-${PV}"
 
-SRC_URI[libvirt_python.md5sum] = "ed018c714d7ddbe93221c796dff283ed"
-SRC_URI[libvirt_python.sha256sum] = "6d35ae9e7801573393b9c92471f39e6700d479f10b641df81d041b469f160bf8"
+SRC_URI[libvirt_python.md5sum] = "4dbd7ef9ee9c4dea5887b5b31eb04529"
+SRC_URI[libvirt_python.sha256sum] = "a0508a57637fd18a3584fb9d2322fb172f65708c9db16e0438a70eb0f36fa5c2"
 
 export LIBVIRT_API_PATH = "${S}/docs/libvirt-api.xml"
 export LIBVIRT_CFLAGS = "-I${S}/include"
diff --git a/recipes-extended/libvirt/libvirt/0001-fix-crash-in-getAllDomainStats.patch b/recipes-extended/libvirt/libvirt/0001-fix-crash-in-getAllDomainStats.patch
deleted file mode 100644
index 0583a94..0000000
--- a/recipes-extended/libvirt/libvirt/0001-fix-crash-in-getAllDomainStats.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From e9c4e2abffef007a28112ebb40a9586b0128f10b Mon Sep 17 00:00:00 2001
-From: Pavel Hrdina <phrdina@redhat.com>
-Date: Mon, 18 Apr 2016 16:53:50 +0200
-Subject: [PATCH] fix crash in getAllDomainStats
-
-Upstream-Status: Backport
-
-Commits 1d39dbaf and 827ed9b4 broke the libvirt-python API by removing
-virDomainRef() and virDomainFree().  virDomainStatsRecordListFree() will
-free that domain pointer and later when virDomain (python object) call
-its destructor and tries to free that same pointer again.
-
-Resolves: https://bugzilla.redhat.com/show_bug.cgi?id=1326839
-
-Signed-off-by: Pavel Hrdina <phrdina@redhat.com>
----
- libvirt-override.c | 8 +++++++-
- 1 file changed, 7 insertions(+), 1 deletion(-)
-
-diff --git a/libvirt-override.c b/libvirt-override.c
-index 4640ed5..2de95ce 100644
---- a/libvirt-override.c
-+++ b/libvirt-override.c
-@@ -8381,6 +8381,7 @@ convertDomainStatsRecord(virDomainStatsRecordPtr *records,
-     PyObject *py_retval;
-     PyObject *py_record;
-     PyObject *py_record_stats = NULL;
-+    virDomainPtr dom = NULL;
-     size_t i;
- 
-     if (!(py_retval = PyList_New(nrecords)))
-@@ -8392,9 +8393,12 @@ convertDomainStatsRecord(virDomainStatsRecordPtr *records,
- 
-         VIR_PY_LIST_SET_GOTO(py_retval, i, py_record, error);
- 
-+        dom = records[i]->dom;
-+        virDomainRef(dom);
-         VIR_PY_TUPLE_SET_GOTO(py_record, 0,
--                              libvirt_virDomainPtrWrap(records[i]->dom),
-+                              libvirt_virDomainPtrWrap(dom),
-                               error);
-+        dom = NULL;
- 
-         if (!(py_record_stats = getPyVirTypedParameter(records[i]->params,
-                                                        records[i]->nparams)))
-@@ -8406,6 +8410,8 @@ convertDomainStatsRecord(virDomainStatsRecordPtr *records,
-     return py_retval;
- 
-  error:
-+    if (dom)
-+        virDomainFree(dom);
-     Py_XDECREF(py_retval);
-     return NULL;
- }
--- 
-2.8.1
-
diff --git a/recipes-extended/libvirt/libvirt/Revert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch b/recipes-extended/libvirt/libvirt/Revert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch
index 16c3a16..02ddf68 100644
--- a/recipes-extended/libvirt/libvirt/Revert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch
+++ b/recipes-extended/libvirt/libvirt/Revert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch
@@ -1,3 +1,9 @@
+Upstream-Status: Inappropriate [configuration]
+
+Update context for version 1.3.5.
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
 From dd915e7f70e676aea93f750c75d16ce646e71e4b Mon Sep 17 00:00:00 2001
 From: Mark Asselstine <mark.asselstine@windriver.com>
 Date: Wed, 9 Sep 2015 11:52:44 -0400
@@ -24,20 +30,20 @@ diff --git a/daemon/Makefile.am b/daemon/Makefile.am
 index 2dbe81b..41ea2db 100644
 --- a/daemon/Makefile.am
 +++ b/daemon/Makefile.am
-@@ -445,7 +445,7 @@ endif ! LIBVIRT_INIT_SCRIPT_UPSTART
+@@ -449,7 +449,7 @@ endif ! LIBVIRT_INIT_SCRIPT_UPSTART
  
  if LIBVIRT_INIT_SCRIPT_SYSTEMD
  
 -SYSTEMD_UNIT_DIR = $(prefix)/lib/systemd/system
 +SYSTEMD_UNIT_DIR = /lib/systemd/system
- BUILT_SOURCES += libvirtd.service libvirtd.socket
+ BUILT_SOURCES += libvirtd.service
  
- install-init-systemd: install-sysconfig libvirtd.service libvirtd.socket
+ install-init-systemd: install-sysconfig libvirtd.service
 diff --git a/src/Makefile.am b/src/Makefile.am
 index a316b4d..d271291 100644
 --- a/src/Makefile.am
 +++ b/src/Makefile.am
-@@ -2594,7 +2594,7 @@ EXTRA_DIST += \
+@@ -2633,7 +2633,7 @@ EXTRA_DIST += \
  if WITH_LIBVIRTD
  if LIBVIRT_INIT_SCRIPT_SYSTEMD
  
@@ -50,7 +56,7 @@ diff --git a/tools/Makefile.am b/tools/Makefile.am
 index b3227a7..0e58f73 100644
 --- a/tools/Makefile.am
 +++ b/tools/Makefile.am
-@@ -356,7 +356,7 @@ libvirt-guests.init: libvirt-guests.init.in libvirt-guests.sh
+@@ -380,7 +380,7 @@ libvirt-guests.init: libvirt-guests.init.in libvirt-guests.sh
  
  
  EXTRA_DIST += libvirt-guests.service.in
diff --git a/recipes-extended/libvirt/libvirt/install-missing-file.patch b/recipes-extended/libvirt/libvirt/install-missing-file.patch
index f6f6e25..ecd4a87 100644
--- a/recipes-extended/libvirt/libvirt/install-missing-file.patch
+++ b/recipes-extended/libvirt/libvirt/install-missing-file.patch
@@ -1,3 +1,11 @@
+Upstream-Status: Inapproriate
+
+This patch is for ptest, so it is inapproriate to send to upstream.
+
+Update context for 1.3.5.
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
 From 0780181a3285511f166487a54ebc231fc657edfe Mon Sep 17 00:00:00 2001
 From: Catalin Enache <catalin.enache@windriver.com>
 Date: Mon, 25 Jul 2016 16:38:51 +0300
@@ -14,10 +22,10 @@ diff --git a/tests/Makefile.am b/tests/Makefile.am
 index 02e0dd8..187fbca 100644
 --- a/tests/Makefile.am
 +++ b/tests/Makefile.am
-@@ -155,6 +155,7 @@ EXTRA_DIST =		\
+@@ -170,6 +170,7 @@ EXTRA_DIST =		\
  	xml2vmxdata
  
- test_helpers = commandhelper ssh test_conf
+ test_helpers = commandhelper ssh virconftest
 +test_misc =
  test_programs = virshtest sockettest \
  	nodeinfotest virbuftest \
diff --git a/recipes-extended/libvirt/libvirt/runptest.patch b/recipes-extended/libvirt/libvirt/runptest.patch
index a33f569..b7609a8 100644
--- a/recipes-extended/libvirt/libvirt/runptest.patch
+++ b/recipes-extended/libvirt/libvirt/runptest.patch
@@ -1,14 +1,18 @@
+Update context for 1.3.5.
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
 Add 'install-ptest' rule.
 Change TESTS_ENVIRONMENT to allow running outside build dir.
 
 Signed-off-by: Mihaela Sendrea <mihaela.sendrea@enea.com>
 Upstream-status: Pending
-
-Index: libvirt-1.2.4/tests/Makefile.am
-===================================================================
---- libvirt-1.2.4.orig/tests/Makefile.am
-+++ libvirt-1.2.4/tests/Makefile.am
-@@ -31,9 +31,11 @@
+---
+diff --git a/tests/Makefile.am b/tests/Makefile.am
+index 0c4ad3c..bb4e31a 100644
+--- a/tests/Makefile.am
++++ b/tests/Makefile.am
+@@ -33,11 +33,13 @@ INCLUDES = \
  	-I$(top_srcdir)/src/conf \
  	$(GETTEXT_CPPFLAGS)
  
@@ -16,13 +20,17 @@ Index: libvirt-1.2.4/tests/Makefile.am
 +
  AM_CFLAGS = \
 -	-Dabs_builddir="\"$(abs_builddir)\"" \
+-	-Dabs_topbuilddir="\"$(abs_topbuilddir)\"" \
 -	-Dabs_srcdir="\"$(abs_srcdir)\"" \
+-	-Dabs_topsrcdir="\"$(abs_topsrcdir)\"" \
 +	-Dabs_builddir="\"$(PTEST_DIR)/tests\"" \
++	-Dabs_topbuilddir="\"$(PTEST_DIR)\"" \
 +	-Dabs_srcdir="\"$(PTEST_DIR)/tests\"" \
++	-Dabs_topsrcdir="\"$(PTEST_DIR)\"" \
  	$(LIBXML_CFLAGS) \
-	$(LIBNL_CFLAGS) \
+ 	$(LIBNL_CFLAGS) \
  	$(GNUTLS_CFLAGS) \
-@@ -48,7 +50,7 @@
+@@ -62,7 +64,7 @@ QEMULIB_LDFLAGS = \
  
  if WITH_DRIVER_MODULES
  INCLUDES += \
@@ -31,15 +39,12 @@ Index: libvirt-1.2.4/tests/Makefile.am
  endif WITH_DRIVER_MODULES
  
  PROBES_O =
-@@ -409,20 +411,19 @@
+@@ -483,17 +485,15 @@ TESTS = $(test_programs) \
  # Also, BSD sh doesn't like 'a=b b=$$a', so we can't use an
  # intermediate shell variable, but must do all the expansion in make
  
 -lv_abs_top_builddir=$(shell cd '$(top_builddir)' && pwd)
- path_add = $(subst :,$(PATH_SEPARATOR),\
--	$(subst !,$(lv_abs_top_builddir)/,!daemon:!tools:!tests))
-+	$(subst !,$(PTEST_DIR)/,!daemon:!tools:!tests))
- 
+-
  VIR_TEST_EXPENSIVE ?= $(VIR_TEST_EXPENSIVE_DEFAULT)
  TESTS_ENVIRONMENT =				\
 -  abs_top_builddir=$(lv_abs_top_builddir)	\
@@ -52,14 +57,13 @@ Index: libvirt-1.2.4/tests/Makefile.am
 +  abs_builddir="$(PTEST_DIR)/tests"           \
 +  abs_srcdir="$(PTEST_DIR)/tests"             \
 +  CONFIG_HEADER="$(PTEST_DIR)/config.h"       \
-   PATH="$(path_add)$(PATH_SEPARATOR)$$PATH"	\
    SHELL="$(SHELL)"				\
 -  LIBVIRT_DRIVER_DIR="$(lv_abs_top_builddir)/src/.libs" \
 +  LIBVIRT_DRIVER_DIR="$(PTEST_DIR)/src/.libs" \
    LIBVIRT_AUTOSTART=0				\
    LC_ALL=C					\
    VIR_TEST_EXPENSIVE=$(VIR_TEST_EXPENSIVE)	\
-@@ -1137,5 +1138,51 @@
+@@ -1388,5 +1388,51 @@ else ! WITH_CIL
  EXTRA_DIST += objectlocking.ml
  endif ! WITH_CIL
  
diff --git a/recipes-extended/libvirt/libvirt_1.3.2.bb b/recipes-extended/libvirt/libvirt_1.3.5.bb
similarity index 97%
rename from recipes-extended/libvirt/libvirt_1.3.2.bb
rename to recipes-extended/libvirt/libvirt_1.3.5.bb
index b11f514..f4a8f38 100644
--- a/recipes-extended/libvirt/libvirt_1.3.2.bb
+++ b/recipes-extended/libvirt/libvirt_1.3.5.bb
@@ -5,7 +5,6 @@ LICENSE_${PN}-ptest = "GPLv2+ & LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://COPYING.LESSER;md5=4b54a1fd55a448865a0b32d41598759d"
 SECTION = "console/tools"
-PR = "r1"
 
 DEPENDS = "bridge-utils gnutls libxml2 lvm2 avahi parted curl libpcap util-linux e2fsprogs pm-utils \
 	   iptables dnsmasq readline libtasn1 libxslt-native"
@@ -36,8 +35,8 @@ SRC_URI = "http://libvirt.org/sources/libvirt-${PV}.tar.gz;name=libvirt \
            file://install-missing-file.patch \
           "
 
-SRC_URI[libvirt.md5sum] = "b48b06bbc7efbe9973ed0f3f223d6da2"
-SRC_URI[libvirt.sha256sum] = "e3c6fc2683178660b371efb3ac7a1103a3f4b78efac7ffe560bc5917974ccf05"
+SRC_URI[libvirt.md5sum] = "f9dc1e63d559eca50ae0ee798a4c6c6d"
+SRC_URI[libvirt.sha256sum] = "93a23c44eb431da46c9458f95a66e29c9b98e37515d44b6be09e75b35ec94ac8"
 
 inherit autotools gettext update-rc.d pkgconfig ptest systemd
 
@@ -137,7 +136,6 @@ INITSCRIPT_PARAMS_${PN}-libvirtd = "defaults 72"
 
 SYSTEMD_PACKAGES = "${PN}-libvirtd"
 SYSTEMD_SERVICE_${PN}-libvirtd = " \
-    libvirtd.socket \
     libvirtd.service \
     virtlockd.service \
     libvirt-guests.service \
@@ -249,7 +247,7 @@ do_install_append() {
 	     >> ${D}${sysconfdir}/default/volatiles/99_libvirt
 
 	# Add hook support for libvirt
-	mkdir -p ${D}/etc/libvirt/hooks 
+	mkdir -p ${D}/etc/libvirt/hooks
 
 	# remove .la references to our working diretory
 	for i in `find ${D}${libdir} -type f -name *.la`; do
@@ -270,6 +268,8 @@ do_compile_ptest() {
 do_install_ptest() {
 	oe_runmake -C tests install-ptest
 
+	find ${S}/tests -maxdepth 1 -type d -exec cp -r {} ${D}${PTEST_PATH}/tests/ \;
+
 	# remove .la files for ptest, they aren't required and can trigger QA errors
 	for i in `find ${D}${PTEST_PATH} -type f -name *.la`; do
                 rm -f $i
-- 
2.9.2.368.g08bb350


