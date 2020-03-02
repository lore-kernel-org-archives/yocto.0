Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.15179.1583160496705977538
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2020 06:48:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: kai.kang@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E75B4E01365; Mon,  2 Mar 2020 06:48:15 -0800 (PST)
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
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E627AE00C5B
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2020 06:48:13 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com [147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 022ElqUs020399
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 2 Mar 2020 06:48:02 -0800
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
 14.3.487.0; Mon, 2 Mar 2020 06:47:41 -0800
From: "kai" <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Subject: [meta-security][PATCH] sssd: fix for ldblibdir and systemd etc
Date: Mon, 2 Mar 2020 22:47:37 +0800
Message-ID: <20200302144737.5186-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Fix sssd issue for ldblibdir, systemd, pam etc.

* fix ldblibdir which is not calculated right for cross compile
* create directory /var/log/sssd which is required by sssd daemon
* disable building python2 binding
* fix pam module path
* update systemd configure options and service files

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../sssd/files/fix-ldblibdir.patch            | 25 +++++++++++
 recipes-security/sssd/files/volatiles.99_sssd |  1 +
 recipes-security/sssd/sssd_1.16.4.bb          | 43 ++++++++++++++++---
 3 files changed, 62 insertions(+), 7 deletions(-)
 create mode 100644 recipes-security/sssd/files/fix-ldblibdir.patch
 create mode 100644 recipes-security/sssd/files/volatiles.99_sssd

diff --git a/recipes-security/sssd/files/fix-ldblibdir.patch b/recipes-security/sssd/files/fix-ldblibdir.patch
new file mode 100644
index 0000000..e350baf
--- /dev/null
+++ b/recipes-security/sssd/files/fix-ldblibdir.patch
@@ -0,0 +1,25 @@
+When calculate value of ldblibdir, it checks whether the directory of
+$ldblibdir exists. If not, it assigns ldblibdir with ${libdir}/ldb. It is not
+suitable for cross compile. Fix it that only re-assign ldblibdir when its value
+is empty.
+
+Upstream-Status: Inappropriate [cross compile specific]
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+ src/external/libldb.m4 | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/external/libldb.m4 b/src/external/libldb.m4
+index c400add..5e5f06d 100644
+--- a/src/external/libldb.m4
++++ b/src/external/libldb.m4
+@@ -19,7 +19,7 @@ if test x"$with_ldb_lib_dir" != x; then
+     ldblibdir=$with_ldb_lib_dir
+ else
+     ldblibdir="`$PKG_CONFIG --variable=modulesdir ldb`"
+-    if ! test -d $ldblibdir; then
++    if test -z $ldblibdir; then
+         ldblibdir="${libdir}/ldb"
+     fi
+ fi
diff --git a/recipes-security/sssd/files/volatiles.99_sssd b/recipes-security/sssd/files/volatiles.99_sssd
new file mode 100644
index 0000000..2a82413
--- /dev/null
+++ b/recipes-security/sssd/files/volatiles.99_sssd
@@ -0,0 +1 @@
+d root root 0750 /var/log/sssd none
diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index c381c32..22d80d7 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -8,13 +8,16 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
 DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
 
-SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
-            file://sssd.conf "
+SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
+           file://sssd.conf \
+           file://volatiles.99_sssd \
+           file://fix-ldblibdir.patch \
+           "
 
 SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
 SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f3bf959"
 
-inherit autotools pkgconfig gettext python3-dir features_check
+inherit autotools pkgconfig gettext python3-dir features_check systemd
 
 REQUIRED_DISTRO_FEATURES = "pam"
 
@@ -38,11 +41,17 @@ PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
 PACKAGECONFIG[nscd] = "--with-nscd=${sbindir}, --with-nscd=no "
 PACKAGECONFIG[nl] = "--with-libnl, --with-libnl=no, libnl"
-PACKAGECONFIG[systemd] = "--with-systemdunitdir=${systemd_unitdir}/system/, --with-systemdunitdir="
+PACKAGECONFIG[systemd] = "--with-initscript=systemd,--with-initscript=sysv"
 PACKAGECONFIG[http] = "--with-secrets, --without-secrets, apache2"
 PACKAGECONFIG[curl] = "--with-secrets --with-kcm, --without-secrets --without-kcm, curl"
 
-EXTRA_OECONF += "--disable-cifs-idmap-plugin --without-nfsv4-idmapd-plugin --without-ipa-getkeytab"
+EXTRA_OECONF += " \
+    --disable-cifs-idmap-plugin \
+    --without-nfsv4-idmapd-plugin \
+    --without-ipa-getkeytab \
+    --without-python2-bindings \
+    --enable-pammoddir=${base_libdir}/security \
+"
 
 do_configure_prepend() {
     mkdir -p ${AUTOTOOLS_AUXDIR}/build
@@ -57,6 +66,12 @@ do_install () {
     rmdir --ignore-fail-on-non-empty "${D}/${bindir}"
     install -d ${D}/${sysconfdir}/${BPN}
     install -m 600 ${WORKDIR}/${BPN}.conf ${D}/${sysconfdir}/${BPN}
+    install -D -m 644 ${WORKDIR}/volatiles.99_sssd ${D}/${sysconfdir}/default/volatiles/99_sssd
+
+    if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        echo "d /var/log/sssd 0750 - - - -" > ${D}${sysconfdir}/tmpfiles.d/sss.conf
+    fi
 
     # Remove /var/run as it is created on startup
     rm -rf ${D}${localstatedir}/run
@@ -74,10 +89,24 @@ CONFFILES_${PN} = "${sysconfdir}/${BPN}/${BPN}.conf"
 
 INITSCRIPT_NAME = "sssd"
 INITSCRIPT_PARAMS = "start 02 5 3 2 . stop 20 0 1 6 ."
-SYSTEMD_SERVICE_${PN} = "${BPN}.service"
+SYSTEMD_SERVICE_${PN} = " \
+    sssd-autofs.service \
+    sssd-autofs.socket \
+    sssd-ifp.service \
+    sssd-nss.service \
+    sssd-nss.socket \
+    sssd-pam-priv.socket \
+    sssd-pam.service \
+    sssd-pam.socket \
+    sssd-secrets.service \
+    sssd-secrets.socket \
+    sssd.service \
+    sssd-sudo.service \
+    sssd-sudo.socket \
+"
 SYSTEMD_AUTO_ENABLE = "disable"
 
-FILES_${PN} += "${libdir} ${datadir} /run ${libdir}/*.so* "
+FILES_${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss.so"
 FILES_${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
 
 # The package contains symlinks that trip up insane
-- 
2.17.1

