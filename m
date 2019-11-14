Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F302EE00E57; Wed, 13 Nov 2019 17:50:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8A7E00E4B
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:45 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1ni7h014463
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:44 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:44 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:54 +0800
Message-ID: <20191114014901.22862-13-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 12/19] selinux-python: uprev to 2.9 (20190315)
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

* Switch to python3

* Drop patches:
  fix-TypeError-for-seobject.py.patch
  process-ValueError-for-sepolicy-seobject.patch

* Rebase patches

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python.inc   | 62 +++++++++----------
 .../fix-TypeError-for-seobject.py.patch       | 30 ---------
 .../fix-sepolicy-install-path.patch           |  8 +--
 ...ess-ValueError-for-sepolicy-seobject.patch | 47 --------------
 .../selinux/selinux-python_2.8.bb             |  7 ---
 .../selinux/selinux-python_2.9.bb             |  7 +++
 6 files changed, 40 insertions(+), 121 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
 delete mode 100644 recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
 delete mode 100644 recipes-security/selinux/selinux-python_2.8.bb
 create mode 100644 recipes-security/selinux/selinux-python_2.9.bb

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index 8b34bff..5e27781 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -6,60 +6,54 @@ SELinux utilities audit2allow, chcat, semanage ..."
 SECTION = "base"
 LICENSE = "GPLv2+"
 
-SRC_URI += "file://fix-sepolicy-install-path.patch \
-            file://fix-TypeError-for-seobject.py.patch \
-            file://process-ValueError-for-sepolicy-seobject.patch \
-"
+SRC_URI += "file://fix-sepolicy-install-path.patch"
 
-inherit python-dir
+inherit python3-dir
 
-DEPENDS += "python-native libsepol"
+DEPENDS += "python3 libsepol"
 RDEPENDS_${BPN}-audit2allow += "\
-        python-core \
-        python-textutils \
+        python3-core \
         libselinux-python \
         ${BPN}-sepolgen \
 "
 RDEPENDS_${BPN}-chcat += "\
-        python-core \
-        python-codecs \
-        python-shell \
-        python-stringold \
-        python-unixadmin \
+        python3-core \
+        python3-codecs \
+        python3-shell \
+        python3-stringold \
+        python3-unixadmin \
         libselinux-python \
         ${BPN} \
 "
 RDEPENDS_${BPN} += "\
-        python-core \
-        python-codecs \
-        python-io \
-        python-ipy \
-        python-re \
-        python-stringold \
-        python-syslog \
-        python-unixadmin \
+        python3-core \
+        python3-codecs \
+        python3-io \
+        python3-ipy \
+        python3-stringold \
+        python3-syslog \
+        python3-unixadmin \
         libselinux-python \
         libsemanage-python \
         setools \
 "
 RDEPENDS_${BPN}-semanage += "\
-        python-core \
-        python-ipy \
-        python-compression \
-        python-xml \
-        python-misc \
+        python3-core \
+        python3-ipy \
+        python3-compression \
+        python3-xml \
+        python3-misc \
         libselinux-python \
         ${BPN} \
 "
 RDEPENDS_${BPN}-sepolicy += "\
-        python-argparse \
-        python-codecs \
-        python-core \
-        python-syslog \
+        python3-core \
+        python3-codecs \
+        python3-syslog \
         ${BPN} \
 "
 RDEPENDS_${BPN}-sepolgen-ifgen += "\
-        python \
+        python3-core \
         libselinux-python \
 "
 
@@ -96,7 +90,7 @@ FILES_${PN}-sepolgen += "\
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolgen* \
         ${localstatedir}/lib/sepolgen/perm_map \
 "
-# Map to policycoreutils-python in 2.6
+
 FILES_${PN} += "\
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy*.egg-info \
@@ -104,9 +98,11 @@ FILES_${PN} += "\
 "
 
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
+
 do_install() {
-        oe_runmake DESTDIR=${D} \
+        oe_runmake DESTDIR="${D}" \
                 LIBDIR="${libdir}" \
+                PYLIBVER='python${PYTHON_BASEVERSION}' \
                 PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
                 install
 }
diff --git a/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch b/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
deleted file mode 100644
index 62cdeee..0000000
--- a/recipes-security/selinux/selinux-python/fix-TypeError-for-seobject.py.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 98c2944ffa3e35095187e1df9ff33498bbd0fa54 Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Tue, 1 Apr 2014 02:53:36 -0400
-Subject: [PATCH] policycoreutils: fix TypeError for seobject.py
-
-File "/usr/lib64/python2.7/site-packages/seobject.py", line 109, in log
-  message += " sename=" + sename
-TypeError: cannot concatenate 'str' and 'NoneType' objects
-
-Uptream-Status: Pending
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-
----
- semanage/seobject.py | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/semanage/seobject.py b/semanage/seobject.py
-index 70fd192..23ab77e 100644
---- a/semanage/seobject.py
-+++ b/semanage/seobject.py
-@@ -146,7 +146,7 @@ except:
- 
-         def log(self, msg, name="", sename="", serole="", serange="", oldsename="", oldserole="", oldserange=""):
-             message = " %s name=%s" % (msg, name)
--            if sename != "":
-+            if sename != "" and sename != None:
-                 message += " sename=" + sename
-             if oldsename != "":
-                 message += " oldsename=" + oldsename
diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
index 6f68c94..30a19eb 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
@@ -1,4 +1,4 @@
-From c1aae6cc131371729f098e4b0aa02142a85b5890 Mon Sep 17 00:00:00 2001
+From e57022e3577770188ad3570005b7107a09cf3bb9 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 23 Sep 2013 21:17:59 +0800
 Subject: [PATCH] policycoreutils: fix install path for new pymodule sepolicy
@@ -13,10 +13,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 3 insertions(+), 1 deletion(-)
 
 diff --git a/sepolicy/Makefile b/sepolicy/Makefile
-index fb8a132..a6ee749 100644
+index 69f29fa..a18d1c3 100644
 --- a/sepolicy/Makefile
 +++ b/sepolicy/Makefile
-@@ -8,6 +8,8 @@ BASHCOMPLETIONDIR ?= $(PREFIX)/share/bash-completion/completions
+@@ -9,6 +9,8 @@ BASHCOMPLETIONDIR ?= $(PREFIX)/share/bash-completion/completions
  CFLAGS ?= -Wall -Werror -Wextra -W
  override CFLAGS += -DPACKAGE="policycoreutils" -DSHARED -shared
  
@@ -25,7 +25,7 @@ index fb8a132..a6ee749 100644
  BASHCOMPLETIONS=sepolicy-bash-completion.sh
  
  all: python-build
-@@ -26,7 +28,7 @@ test:
+@@ -27,7 +29,7 @@ test:
  	@$(PYTHON) test_sepolicy.py -v
  
  install:
diff --git a/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch b/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
deleted file mode 100644
index b0bcd1d..0000000
--- a/recipes-security/selinux/selinux-python/process-ValueError-for-sepolicy-seobject.patch
+++ /dev/null
@@ -1,47 +0,0 @@
-From 1a8bd0ca13746b5241af5736dee9a25ab360652b Mon Sep 17 00:00:00 2001
-From: Wenzong Fan <wenzong.fan@windriver.com>
-Date: Sun, 30 Mar 2014 22:25:59 -0400
-Subject: [PATCH] semanage: process ValueError for sepolicy, seobject
-
-The sepolicy, seobject modules raise many unprocessed ValueError, just
-process them in semanage to make the script proivdes error message but
-not error trace.
-
-Uptream-Status: Pending
-
-Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-
----
- semanage/semanage | 11 +++++++----
- 1 file changed, 7 insertions(+), 4 deletions(-)
-
-diff --git a/semanage/semanage b/semanage/semanage
-index 313537c..2977dd0 100644
---- a/semanage/semanage
-+++ b/semanage/semanage
-@@ -25,8 +25,14 @@
- 
- import traceback
- import argparse
--import seobject
- import sys
-+try:
-+    import seobject
-+    import sepolicy
-+except ValueError, e:
-+    print "Error: %s\n" % e
-+    sys.exit(1)
-+
- PROGNAME = "policycoreutils"
- try:
-     import gettext
-@@ -73,9 +79,6 @@ usage_interface_dict = {' --add': ('-t TYPE', '-r RANGE', 'interface'), ' --modi
- usage_boolean = "semanage boolean [-h] [-n] [-N] [-S STORE] ["
- usage_boolean_dict = {' --modify': ('(', '--on', '|', '--off', ')', 'boolean'), ' --list': ('-C',), '  --extract': ('',), ' --deleteall': ('',)}
- 
--import sepolicy
--
--
- class CheckRole(argparse.Action):
- 
-     def __call__(self, parser, namespace, value, option_string=None):
diff --git a/recipes-security/selinux/selinux-python_2.8.bb b/recipes-security/selinux/selinux-python_2.8.bb
deleted file mode 100644
index d63fdef..0000000
--- a/recipes-security/selinux/selinux-python_2.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "bd9850808203c76f07efd396bde790e3"
-SRC_URI[sha256sum] = "e69f5e24820cb247a3d881a9c90efba1e64d76af863c82fb81bc3b87ed71e238"
diff --git a/recipes-security/selinux/selinux-python_2.9.bb b/recipes-security/selinux/selinux-python_2.9.bb
new file mode 100644
index 0000000..250a99c
--- /dev/null
+++ b/recipes-security/selinux/selinux-python_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "e9dfedd1139dd9998f5a09abfb670454"
+SRC_URI[sha256sum] = "3650b5393b0d1790cac66db00e34f059aa91c23cfe3c2559676594e295d75fde"
-- 
2.17.1


