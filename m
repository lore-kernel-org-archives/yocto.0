Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1610.1587623994767857459
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 23:39:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: changqing.li@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A53BE01A4A; Wed, 22 Apr 2020 23:39:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F460E01A0A
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 23:39:53 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03N6dqPb011198
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 23:39:52 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Wed, 22 Apr 2020 23:39:39 -0700
From: "Changqing Li" <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-selinux][PATCH] libselinux-python: Fix one invalid link
Date: Thu, 23 Apr 2020 14:39:38 +0800
Message-ID: <1587623978-277654-1-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

when host arch and target arch are different, the extension
suffix of host is different with target one, so there will
be a invalid link.  Fix by update the way to create the link.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 recipes-security/selinux/libselinux-python_3.0.bb  |  1 +
 ...PYCEXT-and-rely-on-the-installed-file-nam.patch | 52 ++++++++++++++++++++++
 2 files changed, 53 insertions(+)
 create mode 100644 recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch

diff --git a/recipes-security/selinux/libselinux-python_3.0.bb b/recipes-security/selinux/libselinux-python_3.0.bb
index e024a22..2b5438d 100644
--- a/recipes-security/selinux/libselinux-python_3.0.bb
+++ b/recipes-security/selinux/libselinux-python_3.0.bb
@@ -16,5 +16,6 @@ SRC_URI += "\
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
         file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch \
         file://0001-Makefile-fix-python-modules-install-path-for-multili.patch \
+        file://0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch \
         "
 S = "${WORKDIR}/libselinux-${PV}"
diff --git a/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch b/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
new file mode 100644
index 0000000..b7cd59d
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-Do-not-use-PYCEXT-and-rely-on-the-installed-file-nam.patch
@@ -0,0 +1,52 @@
+From 0d4da8093bc2ef92b7c6f7fd1f4804f6ebc6cb56 Mon Sep 17 00:00:00 2001
+From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+Date: Fri, 25 Oct 2019 13:37:14 +0200
+Subject: [PATCH] Do not use PYCEXT, and rely on the installed file name
+
+PYCEXT is computed by asking the Python intrepreter what is the
+file extension used for native Python modules.
+
+Unfortunately, when cross-compiling, the host Python doesn't give the
+proper result: it gives the result matching the build machine, and not
+the target machine. Due to this, the symlink has an incorrect name,
+and doesn't point to the .so file that was actually built/installed.
+
+To address this and keep things simple, this patch just changes the ln
+invocation to rely on the name of the _selinux*.so Python module that
+was installed.
+
+[Upstream: https://github.com/SELinuxProject/selinux/pull/184]
+Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+Upstream-Status: Denied [https://patchwork.kernel.org/patch/11212405/]
+
+[Refreshed for 3.0]
+Signed-off-by: Changqing Li <changqing.li@windriver.com>
+---
+ src/Makefile | 3 +--
+ 1 file changed, 1 insertion(+), 2 deletions(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index a384a10..82adf82 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -15,7 +15,6 @@ INCLUDEDIR ?= $(PREFIX)/include
+ PYINC ?= $(shell $(PKG_CONFIG) --cflags $(PYPREFIX))
+ PYLIBS ?= $(shell $(PKG_CONFIG) --libs $(PYPREFIX))
+ PYTHONLIBDIR ?= $(shell $(PYTHON) -c "from distutils.sysconfig import *; print(get_python_lib(plat_specific=1, prefix='$(PREFIX)'))")
+-PYCEXT ?= $(shell $(PYTHON) -c 'import imp;print([s for s,m,t in imp.get_suffixes() if t == imp.C_EXTENSION][0])')
+ RUBYINC ?= $(shell $(RUBY) -e 'puts "-I" + RbConfig::CONFIG["rubyarchhdrdir"] + " -I" + RbConfig::CONFIG["rubyhdrdir"]')
+ RUBYLIBS ?= $(shell $(RUBY) -e 'puts "-L" + RbConfig::CONFIG["libdir"] + " -L" + RbConfig::CONFIG["archlibdir"] + " " + RbConfig::CONFIG["LIBRUBYARG_SHARED"]')
+ RUBYINSTALL ?= $(shell $(RUBY) -e 'puts RbConfig::CONFIG["vendorarchdir"]')
+@@ -175,7 +174,7 @@ install: all
+ install-pywrap: pywrap
+ 	$(PYTHON) setup.py install --prefix=$(PREFIX) --root=$(DESTDIR) --install-lib=$(PYTHONLIBDIR)
+ 	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__.py
+-	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) $(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
++	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux*.so $(DESTDIR)$(PYTHONLIBDIR)/
+ 
+ install-rubywrap: rubywrap
+ 	test -d $(DESTDIR)$(RUBYINSTALL) || install -m 755 -d $(DESTDIR)$(RUBYINSTALL) 
+-- 
+2.24.1
+
-- 
2.7.4

