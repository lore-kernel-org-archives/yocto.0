Return-Path: <Randy.MacLeod@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED160E00C2F
	for <yocto@yoctoproject.org>; Sat, 19 Apr 2014 09:37:21 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3JGbJ7Y010588
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 19 Apr 2014 09:37:20 -0700 (PDT)
Received: from fidler.corp.ad.wrs.com (128.224.20.137) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Sat, 19 Apr 2014 09:37:19 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 19 Apr 2014 12:37:18 -0400
Message-ID: <1397925438-10398-1-git-send-email-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 1.8.4.1
MIME-Version: 1.0
Subject: [PATCH] Use BPN in SRC_URI to enable multilib builds
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
X-List-Received-Date: Sat, 19 Apr 2014 16:37:24 -0000
Content-Type: text/plain

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 recipes-security/libcap-ng/libcap-ng_0.7.3.bb   | 2 +-
 recipes-security/libseccomp/libseccomp_2.1.1.bb | 2 +-
 recipes-security/nikto/nikto_2.1.5.bb           | 2 +-
 recipes-security/nmap/nmap_6.25.bb              | 2 +-
 recipes-security/pinentry/pinentry_0.8.3.bb     | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
index ef70207..91ee58b 100644
--- a/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
+++ b/recipes-security/libcap-ng/libcap-ng_0.7.3.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "http://people.redhat.com/sgrubb/libcap-ng/index.html"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/${PN}-${PV}.tar.gz"
+SRC_URI = "http://people.redhat.com/sgrubb/libcap-ng/${BPN}-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "610afb774f80a8032b711281df126283"
 SRC_URI[sha256sum] = "5ca441c8d3a1e4cfe8a8151907977662679457311ccaa7eaac91447c33a35bb1"
diff --git a/recipes-security/libseccomp/libseccomp_2.1.1.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
index 27fa259..bd97a87 100644
--- a/recipes-security/libseccomp/libseccomp_2.1.1.bb
+++ b/recipes-security/libseccomp/libseccomp_2.1.1.bb
@@ -4,7 +4,7 @@ SECTION = "security"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
-SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${PN}-${PV}.tar.gz \
+SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${BPN}-${PV}.tar.gz \
            file://compiler.patch \
            file://0001-tests-create-install-tests-target.patch \
            file://0002-tests-install-python-tests-if-appropriate.patch \
diff --git a/recipes-security/nikto/nikto_2.1.5.bb b/recipes-security/nikto/nikto_2.1.5.bb
index 4609717..b78a65c 100644
--- a/recipes-security/nikto/nikto_2.1.5.bb
+++ b/recipes-security/nikto/nikto_2.1.5.bb
@@ -6,7 +6,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 RDEPENDS_${PN} = "perl libnet-ssleay-perl perl-module-getopt-long perl-module-time-local perl-module-io-socket nikto-doc"
 
-SRC_URI = "http://cirt.net/nikto/${PN}-${PV}.tar.gz \
+SRC_URI = "http://cirt.net/nikto/${BPN}-${PV}.tar.gz \
            file://location.patch"
 
 SRC_URI[md5sum] = "efcc98a918becb77471ee9a5df0a7b1e"
diff --git a/recipes-security/nmap/nmap_6.25.bb b/recipes-security/nmap/nmap_6.25.bb
index aff5c63..db5f9b9 100644
--- a/recipes-security/nmap/nmap_6.25.bb
+++ b/recipes-security/nmap/nmap_6.25.bb
@@ -5,7 +5,7 @@ LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 FILES_${PN} += "${target_datadir}/ncat"
 
-SRC_URI = "http://nmap.org/dist/${PN}-${PV}.tar.bz2 \
+SRC_URI = "http://nmap.org/dist/${BPN}-${PV}.tar.bz2 \
            file://lua.patch"
 
 SRC_URI[md5sum] = "fcc80f94ff3adcb11eedf91092ea6f5e"
diff --git a/recipes-security/pinentry/pinentry_0.8.3.bb b/recipes-security/pinentry/pinentry_0.8.3.bb
index 0043c23..d681a6c 100644
--- a/recipes-security/pinentry/pinentry_0.8.3.bb
+++ b/recipes-security/pinentry/pinentry_0.8.3.bb
@@ -4,7 +4,7 @@ LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 DEPENDS = "glib-2.0 ncurses"
 
-SRC_URI = "ftp://ftp.gnupg.org/gcrypt/pinentry/${PN}-${PV}.tar.bz2"
+SRC_URI = "ftp://ftp.gnupg.org/gcrypt/pinentry/${BPN}-${PV}.tar.bz2"
 
 SRC_URI[md5sum] = "2ae681cbca0d9fb774b2c90b11ebf56c"
 SRC_URI[sha256sum] = "568b0b09b50b2388a4f94d704d5bcb28718ecd4654ed1acc43ab1f97d921a0ad"
-- 
1.8.4.1


