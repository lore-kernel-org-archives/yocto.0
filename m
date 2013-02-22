Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF5BE0146C
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 05:59:40 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2013 05:59:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,715,1355126400"; d="scan'208";a="266226856"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.142])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2013 05:59:39 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Feb 2013 13:59:33 +0000
Message-Id: <b63488f1212173ad6e2d36676c3851328042a891.1361541447.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 2/4] webmin: tidy up recipe
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
X-List-Received-Date: Fri, 22 Feb 2013 13:59:40 -0000

* Move packaging definitions to the end
* Set SUMMARY instead of DESCRIPTION
* Remove EXCLUDE_FROM_SHLIBS and override of split_and_strip_files since
  these are now taken care of by allarch.bbclass
* Reindent SRC_URI

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-extended/webmin/webmin_1.620.bb |   51 ++++++++++++++-----------------
 1 file changed, 23 insertions(+), 28 deletions(-)

diff --git a/recipes-extended/webmin/webmin_1.620.bb b/recipes-extended/webmin/webmin_1.620.bb
index 59c0e38..d7145e4 100644
--- a/recipes-extended/webmin/webmin_1.620.bb
+++ b/recipes-extended/webmin/webmin_1.620.bb
@@ -1,27 +1,21 @@
-DESCRIPTION = "Web-based administration interface"
-HOMEPAGE="http://www.webmin.com"
+SUMMARY = "Web-based administration interface"
+HOMEPAGE = "http://www.webmin.com"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=0373ac9f611e542ddebe1ec6394afc3c"
 
-# FIXME: some of this should be figured out automatically
-RDEPENDS_${PN} += "perl perl-module-socket perl-module-exporter perl-module-exporter-heavy perl-module-carp perl-module-strict"
-RDEPENDS_${PN} += "perl-module-warnings perl-module-xsloader perl-module-posix perl-module-autoloader"
-RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
-RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
-
 SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
-          file://setup.sh \
-          file://init-exclude.patch \
-          file://net-generic.patch \
-          file://remove-startup-option.patch \
-          file://disable-version-check.patch \
-          file://nfs-export.patch \
-          file://exports-lib.pl.patch \
-          file://mount-excludefs.patch \
-          file://samba-config-fix.patch \
-          file://proftpd-config-fix.patch \
-          file://net-lib.pl.patch \
-          file://media-tomb.patch"
+           file://setup.sh \
+           file://init-exclude.patch \
+           file://net-generic.patch \
+           file://remove-startup-option.patch \
+           file://disable-version-check.patch \
+           file://nfs-export.patch \
+           file://exports-lib.pl.patch \
+           file://mount-excludefs.patch \
+           file://samba-config-fix.patch \
+           file://proftpd-config-fix.patch \
+           file://net-lib.pl.patch \
+           file://media-tomb.patch"
 
 SRC_URI[md5sum] = "e93bc5057a5b7d7e31ecb2bb228d7044"
 SRC_URI[sha256sum] = "3d36153406d8e5d3dcaeadba34dfb5cdbc4060b75c38339174ac97b2277f284b"
@@ -71,9 +65,6 @@ do_configure() {
     sed -i "s/find_pid_command=.*/find_pid_command=pidof NAME/" config-generic-linux
 }
 
-INITSCRIPT_NAME = "webmin"
-INITSCRIPT_PARAMS = "start 99 5 3 2 . stop 10 0 1 6 ."
-
 do_install() {
     install -d ${D}${sysconfdir}
     install -d ${D}${sysconfdir}/webmin
@@ -110,6 +101,15 @@ do_install() {
     ${S}/../setup.sh
 }
 
+INITSCRIPT_NAME = "webmin"
+INITSCRIPT_PARAMS = "start 99 5 3 2 . stop 10 0 1 6 ."
+
+# FIXME: some of this should be figured out automatically
+RDEPENDS_${PN} += "perl perl-module-socket perl-module-exporter perl-module-exporter-heavy perl-module-carp perl-module-strict"
+RDEPENDS_${PN} += "perl-module-warnings perl-module-xsloader perl-module-posix perl-module-autoloader"
+RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
+RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
+
 PACKAGES_DYNAMIC += "webmin-module-*"
 RRECOMMENDS_${PN} += "webmin-module-system-status"
 
@@ -134,11 +134,6 @@ python populate_packages_prepend() {
 }
 
 # Time-savers
-EXCLUDE_FROM_SHLIBS = "1"
-split_and_strip_files() {
-    :
-}
-
 package_do_pkgconfig() {
     :
 }
-- 
1.7.10.4


