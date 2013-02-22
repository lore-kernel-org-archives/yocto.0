Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 979ABE01468
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2013 05:59:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2013 05:59:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,715,1355126400"; d="scan'208";a="266226849"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.142])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2013 05:59:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Feb 2013 13:59:32 +0000
Message-Id: <6ba036cf7fd8d8455c86889dc59361010c6b6724.1361541447.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1361541447.git.paul.eggleton@linux.intel.com>
References: <cover.1361541447.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 1/4] webmin: update to 1.620
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
X-List-Received-Date: Fri, 22 Feb 2013 13:59:39 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../webmin/files/disable-version-check.patch       |   25 +++++++++++++-------
 .../webmin/{webmin_1.590.bb => webmin_1.620.bb}    |    6 ++---
 2 files changed, 18 insertions(+), 13 deletions(-)
 rename recipes-extended/webmin/{webmin_1.590.bb => webmin_1.620.bb} (97%)

diff --git a/recipes-extended/webmin/files/disable-version-check.patch b/recipes-extended/webmin/files/disable-version-check.patch
index 585303f..a9ee405 100644
--- a/recipes-extended/webmin/files/disable-version-check.patch
+++ b/recipes-extended/webmin/files/disable-version-check.patch
@@ -1,18 +1,24 @@
-# Disable OS version check in status screen, since it is not able to
-# accurately detect the correct distro/version at the moment
-#
-# Upstream-status: Inappropriate
-#
-# Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---- webmin-1.570.orig/webmin/webmin-lib.pl
-+++ webmin-1.570/webmin/webmin-lib.pl
-@@ -1055,17 +1055,18 @@ my %miniserv;
+Disable OS version check in status screen
+
+The code is not able to accurately detect the correct distro/version at
+the moment.
+
+Upstream-status: Inappropriate
+
+Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
+
+diff --git a/webmin/webmin-lib.pl b/webmin/webmin-lib.pl
+index 57a37f7..838b944 100755
+--- a/webmin/webmin-lib.pl
++++ b/webmin/webmin-lib.pl
+@@ -1059,18 +1059,19 @@ my %miniserv;
  &load_theme_library();	# So that UI functions work
  
  # Need OS upgrade
 -my %realos = &detect_operating_system(undef, 1);
 -if (($realos{'os_version'} ne $gconfig{'os_version'} ||
 -     $realos{'os_type'} ne $gconfig{'os_type'}) &&
+-    $realos{'os_version'} && $realos{'os_type'} &&
 -    &foreign_available("webmin")) {
 -	push(@notifs, 
 -		&ui_form_start("$gconfig{'webprefix'}/webmin/fix_os.cgi").
@@ -25,6 +31,7 @@
 +#my %realos = &detect_operating_system(undef, 1);
 +#if (($realos{'os_version'} ne $gconfig{'os_version'} ||
 +#     $realos{'os_type'} ne $gconfig{'os_type'}) &&
++#    $realos{'os_version'} && $realos{'os_type'} &&
 +#    &foreign_available("webmin")) {
 +#	push(@notifs, 
 +#		&ui_form_start("$gconfig{'webprefix'}/webmin/fix_os.cgi").
diff --git a/recipes-extended/webmin/webmin_1.590.bb b/recipes-extended/webmin/webmin_1.620.bb
similarity index 97%
rename from recipes-extended/webmin/webmin_1.590.bb
rename to recipes-extended/webmin/webmin_1.620.bb
index c2d593a..59c0e38 100644
--- a/recipes-extended/webmin/webmin_1.590.bb
+++ b/recipes-extended/webmin/webmin_1.620.bb
@@ -9,8 +9,6 @@ RDEPENDS_${PN} += "perl-module-warnings perl-module-xsloader perl-module-posix p
 RDEPENDS_${PN} += "perl-module-fcntl perl-module-tie-hash perl-module-vars perl-module-time-local perl-module-config perl-module-constant"
 RDEPENDS_${PN} += "perl-module-file perl-module-file-glob perl-module-file-copy perl-module-sdbm perl-module-sdbm-file perl-module-timelocal perl-module-feature"
 
-PR = "r1"
-
 SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://setup.sh \
           file://init-exclude.patch \
@@ -25,8 +23,8 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
           file://net-lib.pl.patch \
           file://media-tomb.patch"
 
-SRC_URI[md5sum] = "815005ed7f208dcfbda5308b446779c2"
-SRC_URI[sha256sum] = "07b06612a8bc864388d86b55ec9a9adba0fa71ec60cc66d87c0e58280264182d"
+SRC_URI[md5sum] = "e93bc5057a5b7d7e31ecb2bb228d7044"
+SRC_URI[sha256sum] = "3d36153406d8e5d3dcaeadba34dfb5cdbc4060b75c38339174ac97b2277f284b"
 
 inherit allarch perlnative update-rc.d
 
-- 
1.7.10.4


