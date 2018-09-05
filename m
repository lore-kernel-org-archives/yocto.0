Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A67A5E00AB3; Tue,  4 Sep 2018 17:19:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4C85E00B77
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:19:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w850J6JJ026664
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:19:06 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:19:05 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:22 +0800
Message-ID: <1536106707-30781-12-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 11/16] selinux-python: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:19:11 -0000
Content-Type: text/plain

Rebase patch:
fix-sepolicy-install-path.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python.inc        |  2 +-
 .../selinux-python/fix-sepolicy-install-path.patch | 23 ++++++++++++----------
 recipes-security/selinux/selinux-python_2.7.bb     |  7 -------
 recipes-security/selinux/selinux-python_2.8.bb     |  7 +++++++
 4 files changed, 21 insertions(+), 18 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-python_2.7.bb
 create mode 100644 recipes-security/selinux/selinux-python_2.8.bb

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index 2a5d657..c774de4 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -102,7 +102,7 @@ FILES_${PN} += "\
 EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
 do_install() {
         oe_runmake DESTDIR=${D} \
-                LIBDIR="${D}${libdir}" \
+                LIBDIR="${libdir}" \
                 PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
                 install
 }
diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
index 1d54231..6f68c94 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
@@ -1,4 +1,4 @@
-From 69e8697cd2ae48710ff8190bad3e61d2fd115b99 Mon Sep 17 00:00:00 2001
+From c1aae6cc131371729f098e4b0aa02142a85b5890 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 23 Sep 2013 21:17:59 +0800
 Subject: [PATCH] policycoreutils: fix install path for new pymodule sepolicy
@@ -7,16 +7,16 @@ Uptream-Status: Pending
 
 Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
-
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
  sepolicy/Makefile | 4 +++-
  1 file changed, 3 insertions(+), 1 deletion(-)
 
 diff --git a/sepolicy/Makefile b/sepolicy/Makefile
-index 5a56e6c..82c3e36 100644
+index fb8a132..a6ee749 100644
 --- a/sepolicy/Makefile
 +++ b/sepolicy/Makefile
-@@ -12,6 +12,8 @@ SHAREDIR ?= $(PREFIX)/share/sandbox
+@@ -8,6 +8,8 @@ BASHCOMPLETIONDIR ?= $(PREFIX)/share/bash-completion/completions
  CFLAGS ?= -Wall -Werror -Wextra -W
  override CFLAGS += -DPACKAGE="policycoreutils" -DSHARED -shared
  
@@ -25,12 +25,15 @@ index 5a56e6c..82c3e36 100644
  BASHCOMPLETIONS=sepolicy-bash-completion.sh
  
  all: python-build
-@@ -30,7 +32,7 @@ test:
+@@ -26,7 +28,7 @@ test:
  	@$(PYTHON) test_sepolicy.py -v
  
  install:
--	$(PYTHON) setup.py install `test -n "$(DESTDIR)" && echo --root $(DESTDIR)`
-+	$(PYTHON) setup.py install --install-lib $(LIBDIR)/$(PYLIBVER)/site-packages
- 	[ -d $(BINDIR) ] || mkdir -p $(BINDIR)
- 	install -m 755 sepolicy.py $(BINDIR)/sepolicy
- 	(cd $(BINDIR); ln -sf sepolicy sepolgen)
+-	$(PYTHON) setup.py install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR)`
++	$(PYTHON) setup.py install --prefix=$(PREFIX) --install-lib $(DESTDIR)$(LIBDIR)/$(PYLIBVER)/site-packages
+ 	[ -d $(DESTDIR)$(BINDIR) ] || mkdir -p $(DESTDIR)$(BINDIR)
+ 	install -m 755 sepolicy.py $(DESTDIR)$(BINDIR)/sepolicy
+ 	(cd $(DESTDIR)$(BINDIR); ln -sf sepolicy sepolgen)
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/selinux-python_2.7.bb b/recipes-security/selinux/selinux-python_2.7.bb
deleted file mode 100644
index f98be5f..0000000
--- a/recipes-security/selinux/selinux-python_2.7.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "b118229d34a6aec34471c3c2c9cac172"
-SRC_URI[sha256sum] = "4217cb965ecda96c91e15ffcc2e7ddd13ecc2bf5631100f3cd072a7616f140ed"
diff --git a/recipes-security/selinux/selinux-python_2.8.bb b/recipes-security/selinux/selinux-python_2.8.bb
new file mode 100644
index 0000000..d63fdef
--- /dev/null
+++ b/recipes-security/selinux/selinux-python_2.8.bb
@@ -0,0 +1,7 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "bd9850808203c76f07efd396bde790e3"
+SRC_URI[sha256sum] = "e69f5e24820cb247a3d881a9c90efba1e64d76af863c82fb81bc3b87ed71e238"
-- 
2.7.4


