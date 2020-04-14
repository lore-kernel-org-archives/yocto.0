Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web10.6800.1586850198387792898
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:43:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7hH4L007725
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:43:17 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:43:16 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 05/16] libselinux-python: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:47 +0800
Message-ID: <20200414074158.32058-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

* Inherit python3native as the libselinux uses python distutils to install
  selinux python bindings now.
* Add a patch to fix python modules install path for multilib.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/libselinux-python.inc             |  9 +++---
 ...python_2.9.bb => libselinux-python_3.0.bb} |  8 ++++--
 ...hon-modules-install-path-for-multili.patch | 28 +++++++++++++++++++
 3 files changed, 38 insertions(+), 7 deletions(-)
 rename recipes-security/selinux/{libselinux-python_2.9.bb => libselinux-python_3.0.bb} (61%)
 create mode 100644 recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch

diff --git a/recipes-security/selinux/libselinux-python.inc b/recipes-security/selinux/libselinux-python.inc
index 6a64473..3760fd8 100644
--- a/recipes-security/selinux/libselinux-python.inc
+++ b/recipes-security/selinux/libselinux-python.inc
@@ -7,9 +7,9 @@ LICENSE = "PD"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/libselinux:"
 
-inherit python3-dir
+inherit python3native
 
-DEPENDS += "python3 swig-native"
+DEPENDS += "python3 swig-native libpcre libsepol"
 RDEPENDS_${PN} += "libselinux python3-core python3-shell"
 
 def get_policyconfigarch(d):
@@ -24,6 +24,7 @@ EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsep
 EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
 
 FILES_${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
+INSANE_SKIP_${PN} = "dev-so"
 
 do_compile() {
     oe_runmake pywrap -j1 \
@@ -34,7 +35,7 @@ do_compile() {
 
 do_install() {
     oe_runmake install-pywrap \
-            PYCEXT='.so' \
+            DESTDIR=${D} \
             PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-            PYTHONLIBDIR='${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages'
+            PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages'
 }
diff --git a/recipes-security/selinux/libselinux-python_2.9.bb b/recipes-security/selinux/libselinux-python_3.0.bb
similarity index 61%
rename from recipes-security/selinux/libselinux-python_2.9.bb
rename to recipes-security/selinux/libselinux-python_3.0.bb
index 8e3aae1..e024a22 100644
--- a/recipes-security/selinux/libselinux-python_2.9.bb
+++ b/recipes-security/selinux/libselinux-python_3.0.bb
@@ -1,4 +1,4 @@
-SELINUX_RELEASE = "20190315"
+SELINUX_RELEASE = "20191204"
 
 SRC_URI = "https://github.com/SELinuxProject/selinux/releases/download/${SELINUX_RELEASE}/libselinux-${PV}.tar.gz"
 
@@ -6,13 +6,15 @@ require ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "bb449431b6ed55a0a0496dbc366d6e31"
-SRC_URI[sha256sum] = "1bccc8873e449587d9a2b2cf253de9b89a8291b9fbc7c59393ca9e5f5f4d2693"
+SRC_URI[md5sum] = "b387a66f087b6d97713570e85ec89d89"
+SRC_URI[sha256sum] = "2ea2b30f671dae9d6b1391cbe8fb2ce5d36a3ee4fb1cd3c32f0d933c31b82433"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch \
+        file://0001-Makefile-fix-python-modules-install-path-for-multili.patch \
         "
 S = "${WORKDIR}/libselinux-${PV}"
diff --git a/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
new file mode 100644
index 0000000..f0fee23
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-Makefile-fix-python-modules-install-path-for-multili.patch
@@ -0,0 +1,28 @@
+From 930514c1b93335ccf6d70adf46ca7e3f8183603d Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Mon, 13 Apr 2020 12:44:23 +0800
+Subject: [PATCH] Makefile: fix python modules install path for multilib
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ src/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/Makefile b/src/Makefile
+index b0ce2c8..a384a10 100644
+--- a/src/Makefile
++++ b/src/Makefile
+@@ -173,7 +173,7 @@ install: all
+ 	ln -sf --relative $(DESTDIR)$(SHLIBDIR)/$(LIBSO) $(DESTDIR)$(LIBDIR)/$(TARGET)
+ 
+ install-pywrap: pywrap
+-	$(PYTHON) setup.py install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR)`
++	$(PYTHON) setup.py install --prefix=$(PREFIX) --root=$(DESTDIR) --install-lib=$(PYTHONLIBDIR)
+ 	install -m 644 $(SWIGPYOUT) $(DESTDIR)$(PYTHONLIBDIR)/selinux/__init__.py
+ 	ln -sf --relative $(DESTDIR)$(PYTHONLIBDIR)/selinux/_selinux$(PYCEXT) $(DESTDIR)$(PYTHONLIBDIR)/_selinux$(PYCEXT)
+ 
+-- 
+2.7.4
+
-- 
2.17.1

