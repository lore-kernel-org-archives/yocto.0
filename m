Return-Path: <emilia.maria.silvia.ciobanu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36EB6E01528
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 04:17:10 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Jul 2013 04:16:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,734,1367996400"; d="scan'208";a="336014724"
Received: from ema-vostro-460.rb.intel.com ([10.237.105.147])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2013 04:16:54 -0700
From: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2013 14:24:39 +0300
Message-Id: <1374665079-11266-1-git-send-email-emilia.maria.silvia.ciobanu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH v2] package_reges.inc: Add/Update REGEX and PRSPV variable
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
X-List-Received-Date: Wed, 24 Jul 2013 11:17:13 -0000

The PRSPV variable is used for the packages:
	* zip
	* unzip
	* docbook-sgml-dtd-3.1-native
	* docbook-sgml-dtd-4.1-native

The REGEX variable has been added/changed for the following packages:
	* btrfs-tools
	* bjam-native
	* build-appliance-image
	* mpeg2dec
	* mpfr-native
	* nativesdk-mpfr
	* xf86-video-omap
	* remake

Signed-off-by: Emilia Ciobanu <emilia.maria.silvia.ciobanu@intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc |   20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 42d17e5..1572729 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -24,11 +24,13 @@ REGEX_URI_pn-beecrypt-native = "http://sourceforge.net/projects/beecrypt/files/b
 REGEX_pn-beecrypt-native = "[hH][rR][eE][fF]=\"/projects/beecrypt/files/beecrypt/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_pn-bdwgc = "[hH][rR][eE][fF]=\"gc\-(?P<pver>((\d+[a-z]?[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-bjam-native = "http://sourceforge.net/projects/boost/files/boost/"
+REGEX_pn-bjam-native = "[hH][rR][eE][fF]=\"/projects/boost/files/boost/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-blktool = "ftp://ftp.debian.org/debian/pool/main/b/blktool/"
 REGEX_pn-blktool = "[hH][rR][eE][fF]=\"ftp://ftp.debian.org:21/debian/pool/main/b/blktool/blktool_(?P<pver>((\d+[\.\-_]*)+))\.(diff|orig\.tar)\.gz\""
 REGEX_URI_pn-boost = "http://sourceforge.net/projects/boost/files/boost/"
 REGEX_pn-boost = "[hH][rR][eE][fF]=\"/projects/boost/files/boost/(?P<pver>((\d+[\.\-_]*)+))/\""
-REGEX_pn-btrfs-tools = "(\d+(\.\d+)*(\-rc\d+)*)"
+REGEX_pn-btrfs-tools = "(?P<pver>(\d+(\.\d+)*(\-rc\d+)*))"
+REGEX_pn-build-appliance-image = "(?P<pver>([0-9][\.|_]?)+)$"
 REGEX_pn-chkconfig-alternatives-native = "chkconfig\-(?P<pver>((\d+[\.\-_]*)+))"
 REGEX_URI_pn-chrpath = "http://alioth.debian.org/frs/?group_id=31052"
 REGEX_pn-chrpath = "[hH][rR][eE][fF]=\"/frs/download.php/file/\d+/chrpath-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
@@ -165,13 +167,13 @@ REGEX_pn-minicom = "[hH][rR][eE][fF]=\"/frs/download.php/file/\d+/minicom\-(?P<p
 REGEX_URI_pn-mingetty = "http://sourceforge.net/projects/mingetty/files/mingetty"
 REGEX_pn-mingetty = "[hH][rR][eE][fF]=\"/projects/mingetty/files/mingetty/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-mpeg2dec = "http://libmpeg2.sourceforge.net/downloads.html"
-REGEX_pn-mpeg2dec = "[hH][rR][eE][fF]=\"/files/mpeg2dec-(?P<pver>((\d+[\.\-_]*)+)).tar.gz""
+REGEX_pn-mpeg2dec = "[hH][rR][eE][fF]=\"/files/mpeg2dec-(?P<pver>((\d+[\.\-_]*)+)).tar.gz\""
 REGEX_URI_pn-mpfr = "http://ftp.gnu.org/gnu/mpfr/"
 REGEX_pn-mpfr = "[hH][rR][eE][fF]=\"mpfr-(?P<pver>((\d+[\.\-_]*)+)).tar.gz""
 REGEX_URI_pn-mpfr-native = "http://ftp.gnu.org/gnu/mpfr/"
-REGEX_pn-mpfr-native = "[hH][rR][eE][fF]=\"mpfr-(?P<pver>((\d+[\.\-_]*)+)).tar.gz""
+REGEX_pn-mpfr-native = "[hH][rR][eE][fF]=\"mpfr-(?P<pver>((\d+[\.\-_]*)+)).tar.gz\""
 REGEX_URI_pn-nativesdk-mpfr = "http://ftp.gnu.org/gnu/mpfr/"
-REGEX_pn-nativesdk-mpfr = "[hH][rR][eE][fF]=\"mpfr-(?P<pver>((\d+[\.\-_]*)+)).tar.gz""
+REGEX_pn-nativesdk-mpfr = "[hH][rR][eE][fF]=\"mpfr-(?P<pver>((\d+[\.\-_]*)+)).tar.gz\""
 REGEX_URI_pn-nfs-utils = "http://sourceforge.net/projects/nfs/files/nfs-utils/"
 REGEX_pn-nfs-utils = "[hH][rR][eE][fF]=\"/projects/nfs/files/nfs-utils/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-ocf-linux = "http://sourceforge.net/projects/ocf-linux/files/ocf-linux/"
@@ -244,8 +246,10 @@ REGEX_URI_pn-tzdata = "ftp://ftp.iana.org/tz/releases/"
 REGEX_pn-tzdata = "[hH][rR][eE][fF]=\"ftp://ftp.iana.org:21/tz/releases/tzdata(?P<pver>((\d+[a-z])+))\.tar\.gz\""
 REGEX_URI_pn-unzip = "http://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/UnZip%206.0/"
 REGEX_pn-unzip = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip(?P<pver>(\d+))\.tar\.gz/download\""
+PRSPV_pn-unzip = "${@d.getVar('PV',1).replace('.','')}"
 REGEX_URI_pn-unzip-native = "http://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/UnZip%206.0/"
 REGEX_pn-unzip-native = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/infozip/files/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip(?P<pver>(\d+))\.tar\.gz/download\""
+PRSPV_pn-unzip-native = "${@d.getVar('PV',1).replace('.','')}"
 REGEX_URI_pn-v86d = "http://dev.gentoo.org/~spock/projects/uvesafb/archive/"
 REGEX_pn-v86d = "[hH][rR][eE][fF]=\"v86d\-(?P<pver>((\d+[\.]*)+))\.tar\.bz2\""
 REGEX_URI_pn-watchdog = "http://sourceforge.net/projects/watchdog/files/watchdog/"
@@ -255,16 +259,18 @@ REGEX_pn-wireless-tools = "[hH][rR][eE][fF]=\"wireless_tools\.(?P<pver>(\d+))\.t
 REGEX_URI_pn-x11vnc = "http://sourceforge.net/projects/libvncserver/files/x11vnc/"
 REGEX_pn-x11vnc = "[hH][rR][eE][fF]=\"/projects/libvncserver/files/x11vnc/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_pn-xdg-utils = "[hH][rR][eE][fF]=\"xdg\-utils\-(?P<pver>((\d+[\.\-_]*)+))\.(tar\.gz|tgz)\""
-REGEX_pn-xf86-video-omap = "\d+\.(\d\.?)*"
+REGEX_pn-xf86-video-omap = "(?P<pver>(\d+\.(\d\.?)*))"
 REGEX_URI_pn-zip = "http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/"
 REGEX_pn-zip = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/zip(?P<pver>(\d+))\.tar\.gz/download\""
+PRSPV_pn-zip = "${@d.getVar('PV',1).replace('.','')}"
 REGEX_URI_pn-zip-native = "http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/"
 REGEX_pn-zip-native = "[hH][rR][eE][fF]=\"http://sourceforge.net/projects/infozip/files/Zip%203.x%20%28latest%29/3.0/zip(?P<pver>(\d+))\.tar\.gz/download\""
+PRSPV_pn-zip-native = "${@d.getVar('PV',1).replace('.','')}"
 REGEX_URI_pn-msmtp = "http://sourceforge.net/projects/msmtp/files/msmtp/"
 REGEX_pn-msmtp = "[hH][rR][eE][fF]=\"/projects/msmtp/files/msmtp/(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-docbook-dsssl-stylesheets-native = "http://sourceforge.net/projects/docbook/files/docbook-dsssl/"
 REGEX_pn-docbook-dsssl-stylesheets-native = "[hH][rR][eE][fF]=\"/projects/docbook/files/docbook-dsssl/(?P<pver>((\d+[\.\-_]*)+))/\""
-REGEX_pn-remake = "(\d+\.(\d+\.)*\d*(\+dbg\-\d+(\.\d+)*)*)"
+REGEX_pn-remake = "(?P<pver>(\d+\.(\d+\.)*\d*(\+dbg\-\d+(\.\d+)*)*))"
 REGEX_URI_pn-libical = "http://sourceforge.net/projects/libical/files/libical/"
 REGEX_pn-libical = "[hH][rR][eE][fF]=\"/projects/libical/files/libical/libical-(?P<pver>((\d+[\.\-_]*)+))/\""
 REGEX_URI_pn-telepathy-mission-control = "http://telepathy.freedesktop.org/releases/telepathy-mission-control/"
@@ -316,7 +322,9 @@ REGEX_pn-cmake = "[hH][rR][eE][fF]=\"cmake\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\
 REGEX_pn-cmake-native = "[hH][rR][eE][fF]=\"cmake\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-nativeesdk-cmake = "[hH][rR][eE][fF]=\"cmake\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_URI_pn-docbook-sgml-dtd-3.1-native = "http://docbook.org/sgml/3.1/"
+PRSPV_pn-docbook-sgml-dtd-3.1-native = "${@d.getVar('PV',1).replace('.','')}"
 REGEX_URI_pn-docbook-sgml-dtd-4.1-native = "http://docbook.org/sgml/4.1/"
+PRSPV_pn-docbook-sgml-dtd-4.1-native = "${@d.getVar('PV',1).replace('.','')}"
 REGEX_URI_pn-docbook-sgml-dtd-4.5-native = "http://docbook.org/sgml/4.5/"
 REGEX_pn-libxml2 = "[hH][rR][eE][fF]=\"ftp://xmlsoft.org:21/libxml2/libxml2\-(?P<pver>((\d+[\.\-_]*)+))\.tar\.gz\""
 REGEX_pn-python-setuptools = "[hH][rR][eE][fF]=\"setuptools\-(?P<pver>((\d+([a-z]\d+)?[\.\-_]*)+))\.(tar\.gz|\.zip)\""
-- 
1.7.9.5


