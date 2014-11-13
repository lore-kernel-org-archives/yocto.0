Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA71CE008C3; Thu, 13 Nov 2014 10:17:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33C2DE00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 10:17:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Nov 2014 10:16:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,379,1413270000"; d="scan'208";a="636522764"
Received: from alimon-thinkpad-w540.zpn.intel.com ([10.219.4.154])
	by orsmga002.jf.intel.com with ESMTP; 13 Nov 2014 10:16:06 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Nov 2014 12:16:58 -0600
Message-Id: <1415902618-5947-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH] maintainers.inc: remove utf-8 characters due to package reporting system not handling utf-8 in sqlite database
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
X-List-Received-Date: Thu, 13 Nov 2014 18:17:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 30 +++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 62bb57d..0c1da37 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -28,7 +28,7 @@
 # Please keep this list in alphabetical order.
 #
 RECIPE_MAINTAINER_pn-acl = "Chong Lu <Chong.Lu@windriver.com>"
-RECIPE_MAINTAINER_pn-acpid = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-acpid = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-adt-installer = "Jessica Zhang <jessica.zhang@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-lib = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-alsa-state = "Cristian Iorga <cristian.iorga@intel.com>"
@@ -38,7 +38,7 @@ RECIPE_MAINTAINER_pn-alsa-utils-alsaconf = "Cristian Iorga <cristian.iorga@intel
 RECIPE_MAINTAINER_pn-apmd = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-apr = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-apr-util = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-apt = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-apt = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-aspell = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-atk = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-at = "Saul Wold <sgw@linux.intel.com>"
@@ -143,7 +143,7 @@ RECIPE_MAINTAINER_pn-docbook-sgml-dtd-4.5-native = "Paul Eggleton <paul.eggleton
 RECIPE_MAINTAINER_pn-docbook-sgml-dtd = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-docbook-utils = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dosfstools = "Paul Eggleton <paul.eggleton@linux.intel.com>"
-RECIPE_MAINTAINER_pn-dpkg = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-dpkg = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dri2proto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-dropbear = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dtc = "Saul Wold <sgw@linux.intel.com>"
@@ -261,7 +261,7 @@ RECIPE_MAINTAINER_pn-iproute2 = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-iptables = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-iputils = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-irda-utils = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-jpeg = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-jpeg = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-json-glib = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-kbd = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-kbproto = "Ross Burton <ross.burton@intel.com>"
@@ -277,7 +277,7 @@ RECIPE_MAINTAINER_pn-ldconfig-native = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-leafpad = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-less = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-liba52 = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-libacpi = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-libacpi = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libaio = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-libarchive = "Paul Barker <paul@paulbarker.me.uk>"
 RECIPE_MAINTAINER_pn-libart-lgpl = "Ross Burton <ross.burton@intel.com>"
@@ -415,7 +415,7 @@ RECIPE_MAINTAINER_pn-lrzsz = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-lsbinitscripts = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-lsbtest = "Yi Zhao <yi.zhao@windriver.com>"
 RECIPE_MAINTAINER_pn-lsb = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-lsof = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-lsof = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ltp = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-lttng-modules = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-lttng-tools = "Richard Purdie <richard.purdie@linuxfoundation.org>"
@@ -440,7 +440,7 @@ RECIPE_MAINTAINER_pn-matchbox-session = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-terminal = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-matchbox-wm = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-mc = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-mc = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-mdadm = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-menu-cache = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-mesa-demos = "Saul Wold <sgw@linux.intel.com>"
@@ -537,7 +537,7 @@ RECIPE_MAINTAINER_pn-piglit = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-pigz = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pinentry = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-pixman = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-pkgconfig = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-pkgconfig = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-pm-utils = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-pointercal = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-poky-feed-config-opkg = "Saul Wold <sgw@linux.intel.com>"
@@ -608,7 +608,7 @@ RECIPE_MAINTAINER_pn-rxvt-unicode = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sato-screenshot = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sbc = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-screen = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-screen = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-scrnsaverproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-sed = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-setserial = "Saul Wold <sgw@linux.intel.com>"
@@ -623,7 +623,7 @@ RECIPE_MAINTAINER_pn-shutdown-desktop = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-slang = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_MAINTAINER_pn-socat = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-speex = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-sqlite3 = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-sqlite3 = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-squashfs-tools = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-startup-notification = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-stat = "Chen Qi <Qi.Chen@windriver.com>"
@@ -665,8 +665,8 @@ RECIPE_MAINTAINER_pn-tzdata = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-ubootchart = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-u-boot-fw-utils = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-u-boot-mkimage = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-udev-extraconf = "Aníbal Limón <anibal.limon@linux.intel.com>"
-RECIPE_MAINTAINER_pn-udev = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-udev-extraconf = "Anibal Limon <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-udev = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-unifdef = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-unzip = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-update-rc.d = "Saul Wold <sgw@linux.intel.com>"
@@ -725,7 +725,7 @@ RECIPE_MAINTAINER_pn-xf86-video-vmware = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xf86vidmodeproto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xhost = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xineramaproto = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-xinetd = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-xinetd = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xinit = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xinput = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xinput-calibrator = "Ross Burton <ross.burton@intel.com>"
@@ -736,12 +736,12 @@ RECIPE_MAINTAINER_pn-xmodmap = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xorg-minimal-fonts = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xprop = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xproto = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-xrandr = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-xrandr = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xrestop = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-nodm-init = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xf86-config = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xserver-xorg = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-xset = "Aníbal Limón <anibal.limon@linux.intel.com>"
+RECIPE_MAINTAINER_pn-xset = "Anibal Limon <anibal.limon@linux.intel.com>"
 RECIPE_MAINTAINER_pn-xtrans = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xtscal = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-xvideo-tests = "Cristian Iorga <cristian.iorga@intel.com>"
-- 
1.9.1


