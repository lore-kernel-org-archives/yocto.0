Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84600E002A6
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2012 14:04:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Aug 2012 14:04:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="176693818"
Received: from wrk.jf.intel.com ([10.7.202.67])
	by orsmga001.jf.intel.com with ESMTP; 06 Aug 2012 14:04:30 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Aug 2012 14:05:15 -0700
Message-Id: <1344287116-7750-1-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon] [PATCH 1/2] proftpd: update package to 1.3.4b
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 06 Aug 2012 21:04:30 -0000

The contrib directory now contains its own Makefile which is
used during installation. It was required to pass in the DESTDIR
variable.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/proftpd/files/contrib.patch |   25 ++++++++++++
 recipes-extended/proftpd/proftpd_1.3.3c.bb   |   53 -------------------------
 recipes-extended/proftpd/proftpd_1.3.4b.bb   |   54 ++++++++++++++++++++++++++
 3 files changed, 79 insertions(+), 53 deletions(-)
 create mode 100644 recipes-extended/proftpd/files/contrib.patch
 delete mode 100644 recipes-extended/proftpd/proftpd_1.3.3c.bb
 create mode 100644 recipes-extended/proftpd/proftpd_1.3.4b.bb

diff --git a/recipes-extended/proftpd/files/contrib.patch b/recipes-extended/proftpd/files/contrib.patch
new file mode 100644
index 0000000..d97cd69
--- /dev/null
+++ b/recipes-extended/proftpd/files/contrib.patch
@@ -0,0 +1,25 @@
+DESTDIR needs to be passed through to the contrib Makefile
+
+Upstream-Status: Pending
+
+Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
+---
+ Makefile.in |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index 5b2e683..ee72fe1 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -120,7 +120,7 @@ install-modules: $(DESTDIR)$(libexecdir) $(DESTDIR)$(sysconfdir)
+ 	test -z "$(SHARED_MODULE_OBJS)" -a -z "$(SHARED_MODULE_DIRS)" -a -z "$(STATIC_MODULE_DIRS)" || (cd modules/ && $(MAKE) install)
+ 
+ install-utils: $(DESTDIR)$(sbindir) $(DESTDIR)$(bindir)
+-	cd contrib/ && $(MAKE) install-utils
++	cd contrib/ && $(MAKE) DESTDIR=${DESTDIR} install-utils
+ 	$(INSTALL_BIN)  ftpcount $(DESTDIR)$(bindir)/ftpcount
+ 	$(INSTALL_BIN)  ftpdctl  $(DESTDIR)$(bindir)/ftpdctl
+ 	$(INSTALL_SBIN) ftpscrub $(DESTDIR)$(sbindir)/ftpscrub
+-- 
+1.7.9.5
+
diff --git a/recipes-extended/proftpd/proftpd_1.3.3c.bb b/recipes-extended/proftpd/proftpd_1.3.3c.bb
deleted file mode 100644
index 8de80fc..0000000
--- a/recipes-extended/proftpd/proftpd_1.3.3c.bb
+++ /dev/null
@@ -1,53 +0,0 @@
-DESCRIPTION = "Secure ftp daemon"
-SECTION = "console/network"
-
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=fdedcde17b1ffd967d86c20fe0ac158a"
-
-PR = "r0"
-
-SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${PN}-${PV}.tar.gz \
-	file://make.patch \
-	file://basic.conf.patch \
-	"
-
-SRC_URI[md5sum] = "4f2c554d6273b8145095837913ba9e5d"
-SRC_URI[sha256sum] = "44be095ed063df93278928cf665ad7b9b38e2c8d0cca97fb51307ec3a390a591"
-
-EXTRA_OECONF = "ac_cv_func_setpgrp_void=yes ac_cv_func_setgrent_void=yes --disable-cap"
-LDFLAGS += "-Llib"
-PARALLEL_MAKE = ""
-
-do_configure () {
-	 ./configure \
-		   --disable-auth-pam \
-                   --build=${BUILD_SYS} \
-                   --host=${HOST_SYS} \
-                   --target=${TARGET_SYS} \
-                   --prefix=/usr \
-		   --sysconfdir=/etc \
-		   --sharedstatedir=/com \
-		   --localstatedir=/var \
-                   ${EXTRA_OECONF} \
-                   $@;
-}
-
-do_install () {
-    oe_runmake DESTDIR=${D} install
-}
-
-pkg_postinst () {
-    if [ "x$D" != "x" ] ; then
-        exit 1
-    fi
-
-    # more chown's might be needed
-    chown root:root /usr/sbin/proftpd
-
-    # create the ftp user
-    username='ftp'
-    addgroup ${username}
-    adduser --disabled-password ${username} --ingroup ${username}
-    mkdir -p /home/${username}/pub/
-    chown -R ftp:ftp /home/${username}/pub
-}
diff --git a/recipes-extended/proftpd/proftpd_1.3.4b.bb b/recipes-extended/proftpd/proftpd_1.3.4b.bb
new file mode 100644
index 0000000..b7e201b
--- /dev/null
+++ b/recipes-extended/proftpd/proftpd_1.3.4b.bb
@@ -0,0 +1,54 @@
+DESCRIPTION = "Secure ftp daemon"
+SECTION = "console/network"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fb0d1484d11915fa88a6a7702f1dc184"
+
+PR = "r0"
+
+SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${PN}-${PV}.tar.gz \
+	file://make.patch \
+	file://basic.conf.patch \
+	file://contrib.patch \
+	"
+
+SRC_URI[md5sum] = "0871e0b93c9c3c88ca950b6d9a04aed2"
+SRC_URI[sha256sum] = "9f659585cea90fc6af34a0ffae4a90e4ed37abe92dbd9b6c311f95a436c961cb"
+
+EXTRA_OECONF = "ac_cv_func_setpgrp_void=yes ac_cv_func_setgrent_void=yes --disable-cap"
+LDFLAGS += "-Llib"
+PARALLEL_MAKE = ""
+
+do_configure () {
+	 ./configure \
+		   --disable-auth-pam \
+                   --build=${BUILD_SYS} \
+                   --host=${HOST_SYS} \
+                   --target=${TARGET_SYS} \
+                   --prefix=/usr \
+		   --sysconfdir=/etc \
+		   --sharedstatedir=/com \
+		   --localstatedir=/var \
+                   ${EXTRA_OECONF} \
+                   $@;
+}
+
+do_install () {
+    oe_runmake DESTDIR=${D} install
+}
+
+pkg_postinst () {
+    if [ "x$D" != "x" ] ; then
+        exit 1
+    fi
+
+    # more chown's might be needed
+    chown root:root /usr/sbin/proftpd
+
+    # create the ftp user
+    username='ftp'
+    addgroup ${username}
+    adduser --disabled-password ${username} --ingroup ${username}
+    mkdir -p /home/${username}/pub/
+    chown -R ftp:ftp /home/${username}/pub
+}
-- 
1.7.9.5


