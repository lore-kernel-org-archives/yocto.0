Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACAC5E00B45; Tue,  4 Sep 2018 17:18:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CF92E00ADD
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 17:18:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w850IsEk016498
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 4 Sep 2018 17:18:54 -0700
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 4 Sep 2018 17:18:52 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <joe_macdonald@mentor.com>, <flihp@twobit.us>, <mark.hatle@windriver.com>, 
	<yocto@yoctoproject.org>
Date: Wed, 5 Sep 2018 08:18:18 +0800
Message-ID: <1536106707-30781-8-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
References: <1536106707-30781-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 07/16] policycoreutils: uprev to 2.8 (20180524)
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
X-List-Received-Date: Wed, 05 Sep 2018 00:18:57 -0000
Content-Type: text/plain

Remove unused patch:
policycoreutils-loadpolicy-symlink.patch

Add the following patches to change commands path for backward
compatibility:
policycoreutils-fix-fixfiles-install-path.patch
policycoreutils-fix-fixfiles-install-path.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc       |  8 +++---
 ...policycoreutils-fix-fixfiles-install-path.patch | 29 ++++++++++++++++++++++
 ...icycoreutils-fix-load_policy-install-path.patch | 29 ++++++++++++++++++++++
 .../policycoreutils-loadpolicy-symlink.patch       | 19 --------------
 recipes-security/selinux/policycoreutils_2.7.bb    |  8 ------
 recipes-security/selinux/policycoreutils_2.8.bb    |  8 ++++++
 6 files changed, 70 insertions(+), 31 deletions(-)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fix-fixfiles-install-path.patch
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fix-load_policy-install-path.patch
 delete mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
 delete mode 100644 recipes-security/selinux/policycoreutils_2.7.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.8.bb

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index b7cb510..854cf4d 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -9,6 +9,8 @@ LICENSE = "GPLv2+"
 
 SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)} \
             file://policycoreutils-fixfiles-de-bashify.patch \
+            file://policycoreutils-fix-fixfiles-install-path.patch \
+            file://policycoreutils-fix-load_policy-install-path.patch \
            "
 
 PAM_SRC_URI = "file://pam.d/newrole \
@@ -46,7 +48,6 @@ RDEPENDS_${BPN}-semodule += "\
 	libsemanage \
 "
 # static link to libsepol
-DEPENDS_${BPN}-semodule-deps += "libsepol"
 RDEPENDS_${BPN}-semodule-expand += "libsepol libselinux"
 RDEPENDS_${BPN}-semodule-link += "libsepol libselinux"
 RDEPENDS_${BPN}-semodule-package += "libsepol libselinux"
@@ -157,15 +158,14 @@ do_compile_prepend() {
 
 do_install_prepend() {
 	export PYTHON=python
-	export SEMODULE_PATH=${sbindir} SYSTEMDDIR=${D}/${systemd_unitdir}
 }
 
 do_install_class-native() {
 	for PCU_CMD in ${PCU_NATIVE_CMDS} ; do
 	     oe_runmake -C $PCU_CMD install \
 			DESTDIR="${D}" \
-			PREFIX="${D}/${prefix}" \
-			SBINDIR="${D}/${base_sbindir}"
+			PREFIX="${prefix}" \
+			SBINDIR="${base_sbindir}"
 	done
 }
 
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fix-fixfiles-install-path.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fix-fixfiles-install-path.patch
new file mode 100644
index 0000000..96d2075
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fix-fixfiles-install-path.patch
@@ -0,0 +1,29 @@
+From 0546ad883d98799972034f8e0fdc6ca2a7319b07 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 4 Sep 2018 14:14:45 +0800
+Subject: [PATCH] policycoreutils: fix fixfiles install path
+
+Change path from /usr/sbin to /sbin for backward compatibility
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ scripts/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/scripts/Makefile b/scripts/Makefile
+index afe5dc4..f7a9e34 100644
+--- a/scripts/Makefile
++++ b/scripts/Makefile
+@@ -1,6 +1,6 @@
+ # Installation directories.
+ PREFIX ?= /usr
+-SBINDIR ?= $(PREFIX)/sbin
++SBINDIR ?= /sbin
+ MANDIR ?= $(PREFIX)/share/man
+ 
+ .PHONY: all
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fix-load_policy-install-path.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fix-load_policy-install-path.patch
new file mode 100644
index 0000000..2136781
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fix-load_policy-install-path.patch
@@ -0,0 +1,29 @@
+From 46077df498b8bb54964506f03fd95390aaaaa392 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 4 Sep 2018 14:41:13 +0800
+Subject: [PATCH] policycoreutils: fix load_policy install path
+
+Change path from /usr/sbin to /sbin for backward compatibility
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ load_policy/Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/load_policy/Makefile b/load_policy/Makefile
+index 568d5d4..7fbd077 100644
+--- a/load_policy/Makefile
++++ b/load_policy/Makefile
+@@ -1,6 +1,6 @@
+ # Installation directories.
+ PREFIX ?= /usr
+-SBINDIR ?= $(PREFIX)/sbin
++SBINDIR ?= /sbin
+ MANDIR ?= $(PREFIX)/share/man
+ LOCALEDIR ?= $(DESTDIR)$(PREFIX)/share/locale
+ 
+-- 
+2.7.4
+
diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch b/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
deleted file mode 100644
index ef9936a..0000000
--- a/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
+++ /dev/null
@@ -1,19 +0,0 @@
-policycoreutils: Patch Makefile to get load_policy symlink right
-
-Setting DESTDIR in the policycoreutils do_install creates a bad
-symlink for load_policy. This patch fixes up the Makefile to
-create the symlink relative to DESTDIR.
-
-Signed-off-by: Philip Tricca <flihp@twobit.us>
-
---- a/load_policy/Makefile
-+++ b/load_policy/Makefile
-@@ -19,7 +19,7 @@ install: all
- 	test -d $(MANDIR)/man8 || install -m 755 -d $(MANDIR)/man8
- 	install -m 644 load_policy.8 $(MANDIR)/man8/
- 	-mkdir -p $(USRSBINDIR)
--	-ln -sf $(SBINDIR)/load_policy $(USRSBINDIR)/load_policy 
-+	-ln -sf $(subst $(DESTDIR),,$(SBINDIR))/load_policy $(USRSBINDIR)/load_policy 
- 
- clean:
- 	-rm -f $(TARGETS) *.o 
diff --git a/recipes-security/selinux/policycoreutils_2.7.bb b/recipes-security/selinux/policycoreutils_2.7.bb
deleted file mode 100644
index 78bf031..0000000
--- a/recipes-security/selinux/policycoreutils_2.7.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-include selinux_20170804.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "65311b66ae01f7b7ad7c2ea7401b68ed"
-SRC_URI[sha256sum] = "0a1b8a4a323b854981c6755ff025fe98a0f1cff307f109abb260f0490f13e4f4"
-
diff --git a/recipes-security/selinux/policycoreutils_2.8.bb b/recipes-security/selinux/policycoreutils_2.8.bb
new file mode 100644
index 0000000..85f6ff0
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils_2.8.bb
@@ -0,0 +1,8 @@
+include selinux_20180524.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "da5ceb9c7e1e6f8c573731031b91cffe"
+SRC_URI[sha256sum] = "986553a235f27bee7ad7c2b7c35ea51eb2ee68e2cf03b661b1585de101bc1099"
+
-- 
2.7.4


