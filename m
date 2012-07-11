Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC3C6E00347
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:52:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2012 10:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191364488"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.253])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2012 10:52:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 18:51:59 +0100
Message-Id: <bc4c30fe5e82bd861f21051e83520012118daf27.1342029029.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon] [PATCH 3/4] samba: merge with meta-oe
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
X-List-Received-Date: Wed, 11 Jul 2012 17:52:08 -0000

Merge this recipe with the current version from meta-oe. This brings the
following improvements:

* Fix a configure failure due to python host contamination
* Split some components out to their own packages
* Tidy up some cruft left over from the OE-Classic recipe

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-connectivity/samba/samba-basic.inc |   12 ++++--------
 recipes-connectivity/samba/samba_3.5.6.bb  |   18 +++++++-----------
 2 files changed, 11 insertions(+), 19 deletions(-)

diff --git a/recipes-connectivity/samba/samba-basic.inc b/recipes-connectivity/samba/samba-basic.inc
index 362762a..f0a9bd7 100644
--- a/recipes-connectivity/samba/samba-basic.inc
+++ b/recipes-connectivity/samba/samba-basic.inc
@@ -8,15 +8,11 @@ EXTRA_OECONF += "\
         --without-ldap \
         --without-krb5"
 
-PACKAGES =+ "libsmbclient libsmbclient-dev cifs cifs-doc swat"
-
-RCONFLICTS_${PN} = "samba-ads"
-RCONFLICTS_libsmbclient = "libsmbclient-ads"
-RCONFLICTS_libsmbclient-dev = "libsmbclient-ads-dev"
-RCONFLICTS_cifs = "cifs-ads"
-RCONFLICTS_cifs-doc = "cifs-ads-doc"
-RCONFLICTS_swat = "swat-ads"
+PACKAGES =+ "libnetapi libtdb libsmbsharemodes libsmbclient libsmbclient-dev cifs cifs-doc swat"
 
+FILES_libnetapi = "${libdir}/libnetapi.so.*"
+FILES_libsmbsharemodes = "${libdir}/libsmbsharemodes.so.*"
+FILES_libtdb = "${libdir}/libtdb.so.*"
 FILES_cifs = "${base_sbindir}/mount.cifs ${base_sbindir}/umount.cifs"
 FILES_cifs-doc = "${mandir}/man8/mount.cifs.8 ${mandir}/man8/umount.cifs.8"
 FILES_libsmbclient = "${libdir}/libsmbclient.so.*"
diff --git a/recipes-connectivity/samba/samba_3.5.6.bb b/recipes-connectivity/samba/samba_3.5.6.bb
index a76eabb..6b617ef 100644
--- a/recipes-connectivity/samba/samba_3.5.6.bb
+++ b/recipes-connectivity/samba/samba_3.5.6.bb
@@ -3,20 +3,19 @@ require samba-basic.inc
 LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://../COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
-S = "${WORKDIR}/samba-${PV}/source3"
-
-# 3.3.0 and newer will upgrade your tdb database to a
-# new version that you can not downgrade to use with older
-# releases. More testing will happen before this is removed
-# should there be further issues. Appears to work though :)
-DEFAULT_PREFERENCE = "-1"
+PR = "r1"
 
 SRC_URI += "file://config-h.patch \
             file://tdbheaderfix.patch;patchdir=.."
 
-PR = "r0"
+SRC_URI[md5sum] = "bf6c09ea497a166df8bd672db1d8da8f"
+SRC_URI[sha256sum] = "466410868375d19a286ac3fc5d9f3c267ce359189f8e0d76e72ec10bd54247da"
+
+S = "${WORKDIR}/samba-${PV}/source3"
 
 EXTRA_OECONF += "\
+	ac_cv_path_PYTHON=/not/exist \
+	ac_cv_path_PYTHON_CONFIG=/not/exist \
 	SMB_BUILD_CC_NEGATIVE_ENUM_VALUES=yes \
 	samba_cv_CC_NEGATIVE_ENUM_VALUES=yes \
 	linux_getgrouplist_ok=no \
@@ -36,9 +35,6 @@ do_compile () {
 	base_do_compile
 }
 
-SRC_URI[md5sum] = "bf6c09ea497a166df8bd672db1d8da8f"
-SRC_URI[sha256sum] = "466410868375d19a286ac3fc5d9f3c267ce359189f8e0d76e72ec10bd54247da"
-
 pkg_postinst_${PN} () {
     if [ "x$D" != "x" ] ; then
         exit 1
-- 
1.7.9.5


