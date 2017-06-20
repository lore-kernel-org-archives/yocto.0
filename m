Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4E9AE00B76; Mon, 19 Jun 2017 19:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 764BEE00AD0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 19:22:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5K2MToF008825
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 19:22:29 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Mon, 19 Jun 2017 19:22:29 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Jun 2017 10:22:27 +0800
Message-ID: <20170620022227.16210-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH v2] pacemaker: update to 1.1.16
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
X-List-Received-Date: Tue, 20 Jun 2017 02:22:34 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* update the licenses and checksum
* fix PN -> BPN for multilib builds
* add PACKAGECONFIG for systemd and libsmtp
* add fix for libgnutls

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 ...006-pacemaker-do-not-use-libgnutls-config.patch | 31 ++++++++++++++++++++++
 .../{pacemaker_1.1.15.bb => pacemaker_1.1.16.bb}   | 22 ++++++++-------
 2 files changed, 44 insertions(+), 9 deletions(-)
 create mode 100755 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.15.bb => pacemaker_1.1.16.bb} (84%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
new file mode 100755
index 0000000..433aa99
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
@@ -0,0 +1,31 @@
+commit bb26b7c290473af988aa9d4132ef55ca907091e6
+Author: Joe Slater <jslater@windriver.com>
+Date:   Mon Mar 11 15:47:54 2013 -0700
+
+    pacemaker: do not use libgnutls-config
+
+    Do not try to use libgnutls-config when configuring.
+    It has been deprecated and we do not supply it.  If a
+    host version is found, bad things can happen.
+
+Upstream-Status: Inappropriate [OE specific]
+
+Signed-off-by: Joe Slater <jslater@windriver.com>
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
+
+--- a/configure.ac
++++ b/configure.ac
+@@ -1427,9 +1427,9 @@ dnl ====================================
+ AC_CHECK_HEADERS(gnutls/gnutls.h)
+ AC_CHECK_HEADERS(security/pam_appl.h pam/pam_appl.h)
+ 
+-dnl GNUTLS library: Attempt to determine by 'libgnutls-config' program.
+-dnl If no 'libgnutls-config', try traditional autoconf means.
+-AC_PATH_PROGS(LIBGNUTLS_CONFIG, libgnutls-config)
++dnl libgnutls-config has been deprecated, so we use pkg-config
++
++LIBGNUTLS_CONFIG="pkg-config gnutls"
+ 
+ if test -n "$LIBGNUTLS_CONFIG"; then
+ 	AC_MSG_CHECKING(for gnutls header flags)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
similarity index 84%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
index 7dfbc26..cc1dd3d 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -8,29 +8,33 @@ when related resources fail and can be configured to periodically \
 check resource health."
 HOMEPAGE = "http://www.clusterlabs.org"
 
-LICENSE = "GPLv2+ & LGPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=6adca3b36477cc77e04376f9a40df32c \
-                    file://COPYING.LIB;md5=243b725d71bb5df4a1e5920b344b86ad \
-                   "
+LICENSE = "GPLv2+ & LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=19a64afd3a35d044a80579d7aafc30ff"
+
 DEPENDS = "corosync libxslt openais libxml2 gnutls resource-agents libqb python-native"
 
-SRC_URI = "https://github.com/ClusterLabs/${PN}/archive/Pacemaker-${PV}.zip \
+SRC_URI = "https://github.com/ClusterLabs/${BPN}/archive/Pacemaker-${PV}.zip \
            file://0001-pacemaker-fix-xml-config.patch \
            file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch \
            file://0003-pacemaker-fix-header-defs-lookup.patch \
            file://0004-pacemaker-do-not-build-help.patch \
            file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch \
+           file://0006-pacemaker-do-not-use-libgnutls-config.patch \
            file://fix_missing_qb_array.patch \
            file://volatiles \
            file://tmpfiles \
           "
-SRC_URI[md5sum] = "def7902672872a6f43581b694eb34a4b"
-SRC_URI[sha256sum] = "0191037508b73a364c157892258bab72184384ebb854ff5233e84941fe014f5e"
+SRC_URI[md5sum] = "6f60f733823d31acbef4556fb749c457"
+SRC_URI[sha256sum] = "2642264b27c584eff5747a2a34c7f2bff13d52741e4e5cc70f14b2b6cd1fe7d5"
 
 inherit autotools-brokensep pkgconfig systemd python-dir useradd
 
 S="${WORKDIR}/pacemaker-Pacemaker-${PV}"
 
+PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
+PACKAGECONFIG[systemd] = "--enable-systemd,--disable-systemd,systemd"
+PACKAGECONFIG[libesmtp] = "--with-esmtp=yes,--with-esmtp=no,libesmtp"
+
 EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
                  --disable-fatal-warnings \
                  --with-ais \
@@ -41,9 +45,9 @@ EXTRA_OECONF += "STAGING_INCDIR=${STAGING_INCDIR} \
 do_install_append() {
     install -d ${D}${sysconfdir}/default
     install -d ${D}${sysconfdir}/default/volatiles
-    install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/06_${PN}
+    install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/06_${BPN}
     install -d ${D}${sysconfdir}/tmpfiles.d
-    install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
+    install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${BPN}.conf
 
     # Don't package some files
     find ${D} -name "*.pyo" -exec rm {} \;
-- 
2.11.0


