Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.6963.1586850285620557547
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Apr 2020 00:44:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: yi.zhao@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 03E7iifx008515
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 14 Apr 2020 00:44:44 -0700 (PDT)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 14 Apr
 2020 00:44:44 -0700
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <joe@deserted.net>, <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH 12/16] selinux-python: upgrade to 3.0 (20191204)
Date: Tue, 14 Apr 2020 15:41:54 +0800
Message-ID: <20200414074158.32058-12-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414074158.32058-1-yi.zhao@windriver.com>
References: <20200414074158.32058-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

Refresh fix-sepolicy-install-path.patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python.inc   |  3 +--
 .../fix-sepolicy-install-path.patch           | 23 ++++++-------------
 .../selinux/selinux-python_2.9.bb             |  7 ------
 .../selinux/selinux-python_3.0.bb             |  7 ++++++
 4 files changed, 15 insertions(+), 25 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-python_2.9.bb
 create mode 100644 recipes-security/selinux/selinux-python_3.0.bb

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index 5e27781..e690ac5 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -8,7 +8,7 @@ LICENSE = "GPLv2+"
 
 SRC_URI += "file://fix-sepolicy-install-path.patch"
 
-inherit python3-dir
+inherit python3native
 
 DEPENDS += "python3 libsepol"
 RDEPENDS_${BPN}-audit2allow += "\
@@ -101,7 +101,6 @@ EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 
 do_install() {
         oe_runmake DESTDIR="${D}" \
-                LIBDIR="${libdir}" \
                 PYLIBVER='python${PYTHON_BASEVERSION}' \
                 PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
                 install
diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
index 30a19eb..527e02c 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
@@ -1,36 +1,27 @@
-From e57022e3577770188ad3570005b7107a09cf3bb9 Mon Sep 17 00:00:00 2001
+From e8fdfdf96a84209118deff7782cf82f8187af6c5 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 23 Sep 2013 21:17:59 +0800
 Subject: [PATCH] policycoreutils: fix install path for new pymodule sepolicy
 
-Uptream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- sepolicy/Makefile | 4 +++-
- 1 file changed, 3 insertions(+), 1 deletion(-)
+ sepolicy/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/sepolicy/Makefile b/sepolicy/Makefile
-index 69f29fa..a18d1c3 100644
+index 69f29fa..b474d80 100644
 --- a/sepolicy/Makefile
 +++ b/sepolicy/Makefile
-@@ -9,6 +9,8 @@ BASHCOMPLETIONDIR ?= $(PREFIX)/share/bash-completion/completions
- CFLAGS ?= -Wall -Werror -Wextra -W
- override CFLAGS += -DPACKAGE="policycoreutils" -DSHARED -shared
- 
-+PYLIBVER ?= $(shell python -c 'import sys;print "python%d.%d" % sys.version_info[0:2]')
-+
- BASHCOMPLETIONS=sepolicy-bash-completion.sh
- 
- all: python-build
-@@ -27,7 +29,7 @@ test:
+@@ -27,7 +27,7 @@ test:
  	@$(PYTHON) test_sepolicy.py -v
  
  install:
 -	$(PYTHON) setup.py install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR)`
-+	$(PYTHON) setup.py install --prefix=$(PREFIX) --install-lib $(DESTDIR)$(LIBDIR)/$(PYLIBVER)/site-packages
++	$(PYTHON) setup.py install --prefix=$(PREFIX) --root=$(DESTDIR) --install-lib=$(PYTHONLIBDIR) --no-compile
  	[ -d $(DESTDIR)$(BINDIR) ] || mkdir -p $(DESTDIR)$(BINDIR)
  	install -m 755 sepolicy.py $(DESTDIR)$(BINDIR)/sepolicy
  	(cd $(DESTDIR)$(BINDIR); ln -sf sepolicy sepolgen)
diff --git a/recipes-security/selinux/selinux-python_2.9.bb b/recipes-security/selinux/selinux-python_2.9.bb
deleted file mode 100644
index 250a99c..0000000
--- a/recipes-security/selinux/selinux-python_2.9.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20190315.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "e9dfedd1139dd9998f5a09abfb670454"
-SRC_URI[sha256sum] = "3650b5393b0d1790cac66db00e34f059aa91c23cfe3c2559676594e295d75fde"
diff --git a/recipes-security/selinux/selinux-python_3.0.bb b/recipes-security/selinux/selinux-python_3.0.bb
new file mode 100644
index 0000000..8222d28
--- /dev/null
+++ b/recipes-security/selinux/selinux-python_3.0.bb
@@ -0,0 +1,7 @@
+require selinux_20191204.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "aa018c9b1b26034f84f3f427adac08be"
+SRC_URI[sha256sum] = "43c08fa881ccc64251d396b1ac6c56b354bf98421b4ec937d54a8db190135494"
-- 
2.17.1

