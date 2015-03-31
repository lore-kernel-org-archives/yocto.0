Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91BDCE00837; Mon, 30 Mar 2015 17:11:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B412E00779
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 17:11:53 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 30 Mar 2015 17:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,497,1422950400"; d="scan'208";a="548649322"
Received: from bjmaher-mobl.ger.corp.intel.com (HELO fuath.ger.corp.intel.com)
	([10.252.8.134])
	by orsmga003.jf.intel.com with ESMTP; 30 Mar 2015 17:11:50 -0700
From: Beth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Mar 2015 01:11:25 +0100
Message-Id: <1427760685-31493-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] distro_alias.inc: update/sort alias information.
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
X-List-Received-Date: Tue, 31 Mar 2015 00:11:58 -0000

Added new package data, and cleaned up whitespace.

I've also corrected some packaged data (replacement-tar from
my reading of the recipe is the tar normally found in distros).

One issue this patch exposed st I haven't had a chance to track
down is that when you attempt to get distrodata from
gcc-crosssdk-initial-x86_64. The produced .csv in tmp/log
is missing the Distro information. bitbake -e
shows that DISTRO_PN_ALIAS isn't even getting set in this case.

My guess here is that something is happening with the "_"
along the way, I've just not found it yet.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc | 41 +++++++++++++++++++++----
 1 file changed, 35 insertions(+), 6 deletions(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 48c1d92..2c35c28 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -1,6 +1,6 @@
 #
 # This is a list for tracking status of package relative to Major
-# distributions such as Fedora, Ubuntu, Debian, ... The package 
+# distributions such as Fedora, Ubuntu, Debian, ... The package
 # name is the major distribution equivalent to the name used in oe-core
 #
 # The format is as a bitbake variable override for each recipe
@@ -54,6 +54,7 @@ DISTRO_PN_ALIAS_pn-core-image-base = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-clutter = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-directfb = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-full-cmdline = "OE-Core"
+DISTRO_PN_ALIAS_pn-core-image-kernel-dev = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-lsb = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-lsb-dev = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-lsb-qt3 = "OE-Core"
@@ -67,14 +68,19 @@ DISTRO_PN_ALIAS_pn-core-image-rt-sdk = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-dev = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-sato-sdk = "OE-Core"
+DISTRO_PN_ALIAS_pn-core-image-testmaster = "OE-Core"
+DISTRO_PN_ALIAS_pn-core-image-testmaster-initramfs = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-weston = "OE-Core"
 DISTRO_PN_ALIAS_pn-core-image-x11 = "OE-Core"
 DISTRO_PN_ALIAS_pn-cross-localedef = "OSPDT"
 DISTRO_PN_ALIAS_pn-cryptodev-linux = "OE-Core"
+DISTRO_PN_ALIAS_pn-cryptodev-module = "OE-Core"
+DISTRO_PN_ALIAS_pn-cryptodev-tests = "OE-Core"
 DISTRO_PN_ALIAS_pn-cwautomacros = "OSPDT upstream=http://cwautomacros.berlios.de/"
 DISTRO_PN_ALIAS_pn-damageproto = "Meego=xorg-x11-proto-damageproto"
 DISTRO_PN_ALIAS_pn-db = "Debian=db5.1 Ubuntu=db5.1"
 DISTRO_PN_ALIAS_pn-dbus-ptest = "Fedora=dbus Ubuntu=dbus"
+DISTRO_PN_ALIAS_pn-dbus-test = "Fedora=dbus Ubuntu=dbus"
 DISTRO_PN_ALIAS_pn-dbus-wait = "OpenedHand"
 DISTRO_PN_ALIAS_pn-depmodwrapper-cross = "OE-Core"
 DISTRO_PN_ALIAS_pn-directfb-examples = "Debian=directfb Fedora=directfb"
@@ -85,6 +91,8 @@ DISTRO_PN_ALIAS_pn-docbook-dsssl-stylesheets = "Fedora=docbook-style-dsssl Ubunt
 DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-3.1 = "Fedora=docbook-dtds Mandriva=docbook-dtd31-sgml"
 DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-4.1 = "Fedora=docbook-dtds Mandriva=docbook-dtd41-sgml"
 DISTRO_PN_ALIAS_pn-docbook-sgml-dtd-4.5 = "Fedora=docbook-dtds Mandriva=docbook-dtd42-sgml"
+DISTRO_PN_ALIAS_pn-docbook-xml-dtd4 = "Ubuntu=docbook-xml Fedora=docbook-dtds"
+DISTRO_PN_ALIAS_pn-docbook-xml-dtd4-native = "Ubuntu=docbook-xml Fedora=docbook-dtds"
 DISTRO_PN_ALIAS_pn-dri2proto = "Meego=xorg-x11-proto-dri2proto"
 DISTRO_PN_ALIAS_pn-dropbear = "Debian=dropbear Ubuntu=dropbear"
 DISTRO_PN_ALIAS_pn-dtc = "Fedora=dtc Ubuntu=dtc"
@@ -112,14 +120,21 @@ DISTRO_PN_ALIAS_pn-gail = "Fedora=gail Ubuntu=libgail-3-0"
 DISTRO_PN_ALIAS_pn-gaku = "OpenedHand"
 DISTRO_PN_ALIAS_pn-galago-daemon = "Debian=galago-daemon Ubuntu=galago-daemon"
 DISTRO_PN_ALIAS_pn-gcc-cross-initial = "OE-Core"
+DISTRO_PN_ALIAS_pn-gcc-cross-initial-i586 = "OE-Core"
 DISTRO_PN_ALIAS_pn-gcc-crosssdk-initial = "OE-Core"
+DISTRO_PN_ALIAS_pn-gcc-crosssdk-initial-x86_64 = "OE-Core"
 DISTRO_PN_ALIAS_pn-gccmakedep = "Mandriva=gccmakedep Ubuntu=xutils-dev"
 DISTRO_PN_ALIAS_pn-gcc-runtime = "Ubuntu=gcc Fedora=gcc"
+DISTRO_PN_ALIAS_pn-gcc-sanitizers = "Ubuntu=gcc Fedora=gcc"
+DISTRO_PN_ALIAS_pn-gcc-source = "Ubuntu=gcc Fedora=gcc"
 DISTRO_PN_ALIAS_pn-gconf-dbus = "Meego=GConf-dbus"
 DISTRO_PN_ALIAS_pn-gdk-pixbuf = "Debian=libgdk-pixbuf2.0 Fedora=gdk-pixbuf"
 DISTRO_PN_ALIAS_pn-gdk-pixbuf-csource = "Debian=libgdk-pixbuf2.0-0 Fedora=gdk-pixbuf2"
 DISTRO_PN_ALIAS_pn-gettext-minimal = "Debian=gettext Fedora=gettext"
 DISTRO_PN_ALIAS_pn-glib-2.0 = "Meego=glib2 Fedora=glib2 OpenSuSE=glib2 Ubuntu=glib2.0 Mandriva=glib2.0 Debian=glib2.0"
+DISTRO_PN_ALIAS_pn-glibc-locale = "OpenSuSE=glibc-locale Fedora=glibc-devel"
+DISTRO_PN_ALIAS_pn-glibc-mtrace = "Fedora=glibc-utils Ubuntu=libc-dev-bin"
+DISTRO_PN_ALIAS_pn-glibc-scripts = "Fedora=glibc Ubuntu=libc-bin"
 DISTRO_PN_ALIAS_pn-glproto = "Meego=xorg-x11-proto-glproto"
 DISTRO_PN_ALIAS_pn-gnome-desktop-testing = "Debian=gnome-desktop-testing Fedora=gnome-desktop-testing"
 DISTRO_PN_ALIAS_pn-gnu-config = "OpenedHand"
@@ -131,10 +146,11 @@ DISTRO_PN_ALIAS_pn-gst-fluendo-mp3 = "Debian=gstreamer0.10-fluendo-mp3 Ubuntu=gs
 DISTRO_PN_ALIAS_pn-gst-fluendo-mpegdemux = "Ubuntu=gstreamer0.10-fluendo-mpegdemux Debian=gstreamer0.10-fluendo-mpegdemux"
 DISTRO_PN_ALIAS_pn-gst-meta-base = "Meego=gstreamer Fedora=gstreamer OpenSuSE=gstreamer Ubuntu=gstreamer0.10 Mandriva=gstreamer0.10 Debian=gstreamer0.10"
 DISTRO_PN_ALIAS_pn-gst-openmax = "OSPDT upstream=http://cgit.freedesktop.org/gstreamer/gst-openmax"
+DISTRO_PN_ALIAS_pn-gst-player = "Ubuntu=gst-player Fedora=gstreamer-player"
 DISTRO_PN_ALIAS_pn-gst-plugin-bluetooth = "Ubuntu=libgstreamer-plugins-base Fedora=gstreamer-plugins-base"
 DISTRO_PN_ALIAS_pn-gst-plugins-bad = "Fedora=gstreamer-plugins-bad-free OpenSuSE=gstreamer-plugins-bad Debian=gst-plugins-bad0.10"
 DISTRO_PN_ALIAS_pn-gst-plugins-base = "Meego=gst-plugins-base Fedora=gstreamer-plugins-base OpenSuSE=gstreamer-plugins-base Ubuntu=gst-plugins-base0.10 Mandriva=gstreamer0.10-plugins-base Debian=gst-plugins-base0.10"
-DISTRO_PN_ALIAS_pn-gst-plugins-gl = "Debian=gstreamer0.10-plugins-gl OpenSuSE=gstreamer-0_10-plugins-gl" 
+DISTRO_PN_ALIAS_pn-gst-plugins-gl = "Debian=gstreamer0.10-plugins-gl OpenSuSE=gstreamer-0_10-plugins-gl"
 DISTRO_PN_ALIAS_pn-gst-plugins-good = "Meego=gst-plugins-good Fedora=gstreamer-plugins-good OpenSuSE=gstreamer-plugins-good Ubuntu=gst-plugins-good0.10 Mandriva=gstreamer0.10-plugins-good Debian=gst-plugins-good0.10"
 DISTRO_PN_ALIAS_pn-gst-plugins-ugly = "OpenSuSE=gstreamer-plugins-ugly Mandriva=gstreamer0.10-plugins-ugly Debian=gst-plugins-ugly0.10"
 DISTRO_PN_ALIAS_pn-gstreamer1.0 = "Debian=gstreamer1.0 Ubuntu=gstreamer1.0"
@@ -142,6 +158,7 @@ DISTRO_PN_ALIAS_pn-gstreamer1.0-meta-base = "Meego=gstreamer Fedora=gstreamer Op
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-bad = "Debian=gstreamer1.0-plugins-bad Ubuntu=gstreamer1.0-plugins-bad"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-base = "Debian=gstreamer1.0-plugins-base Ubuntu=gstreamer1.0-plugins-base"
 DISTRO_PN_ALIAS_pn-gstreamer1.0-plugins-good = "Debian=gstreamer1.0-plugins-good Ubuntu=gstreamer1.0-plugins-bad"
+DISTRO_PN_ALIAS_pn-gstreamer1.0-rtsp-server = "Ubuntu=gstreamer0.10-rtsp Fedora=gstreamer-rtsp"
 DISTRO_PN_ALIAS_pn-gstreamer = "Debian=gstreamer1.0 Ubuntu=gstreamer1.0"
 DISTRO_PN_ALIAS_pn-gtk+ = "Meego=gtk2 Fedora=gtk2 OpenSuSE=gtk2 Ubuntu=gtk+2.0 Mandriva=gtk+2.0 Debian=gtk+2.0"
 DISTRO_PN_ALIAS_pn-gtk+3 = "Ubuntu=gtk+3.0 Debian=gtk+3.0 Fedora=gtk3"
@@ -169,6 +186,7 @@ DISTRO_PN_ALIAS_pn-iproute2 = "OSPDT"
 DISTRO_PN_ALIAS_pn-jpeg = "OpenSuSE=libjpeg Ubuntu=libjpeg62"
 DISTRO_PN_ALIAS_pn-kbproto = "Meego=xorg-x11-proto-kbproto Ubuntu=x11proto-kb-dev Debian=x11proto-kb-dev"
 DISTRO_PN_ALIAS_pn-kconfig-frontends = "OSPDT"
+DISTRO_PN_ALIAS_pn-kernel-devsrc = "Debian=linux-base Ubuntu=linux"
 DISTRO_PN_ALIAS_pn-kernelshark = "Mandriva=kernelshark Ubuntu=kernelshark"
 DISTRO_PN_ALIAS_pn-kern-tools-native = "Windriver"
 DISTRO_PN_ALIAS_pn-keymaps = "OE-Core"
@@ -272,6 +290,7 @@ DISTRO_PN_ALIAS_pn-menu-cache = "OSPDT"
 DISTRO_PN_ALIAS_pn-mesa = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-mesa-gl = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 DISTRO_PN_ALIAS_pn-mesa-glsl = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
+DISTRO_PN_ALIAS_pn-meta-environment-extsdk-qemux86 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-environment-i586 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-environment-qemux86 = "OE-Core"
 DISTRO_PN_ALIAS_pn-meta-environment-qemux86-64 = "OE-Core"
@@ -291,6 +310,12 @@ DISTRO_PN_ALIAS_pn-msynctool = "OpenSuse=msynctool Mandriva=msynctool"
 DISTRO_PN_ALIAS_pn-mtd-utils = "Debian=mtd-utils Ubuntu=mtd-utils"
 DISTRO_PN_ALIAS_pn-mx-1.0 = "Ubuntu=mx Debian=mx Fedora=mx"
 DISTRO_PN_ALIAS_pn-n450-audio = "Intel"
+DISTRO_PN_ALIAS_pn-nativesdk-buildtools-perl-dummy = "OE-Core"
+DISTRO_PN_ALIAS_pn-nativesdk-gcc-sanitizers = "Ubuntu=gcc Fedora=gcc"
+DISTRO_PN_ALIAS_pn-nativesdk-glibc-initial = "Fedora=glibc Ubuntu=libc-bin"
+DISTRO_PN_ALIAS_pn-nativesdk-glibc-locale = "OpenSuSE=glibc-locale Fedora=glibc-devel"
+DISTRO_PN_ALIAS_pn-nativesdk-libgcc-initial  = "Debian=libgcc4 Ubuntu=libgcc1 OpenSuSE=libgcc46"
+DISTRO_PN_ALIAS_pn-nativesdk-tar-replacement-native = "Fedora=tar Ubuntu=tar"
 DISTRO_PN_ALIAS_pn-neard = "Intel"
 DISTRO_PN_ALIAS_pn-network-suspend-scripts = "OE-Core"
 DISTRO_PN_ALIAS_pn-nfs-export-root = "OpenedHand"
@@ -300,13 +325,15 @@ DISTRO_PN_ALIAS_pn-ocf-linux = "OSPDT"
 DISTRO_PN_ALIAS_pn-ofono = "Debian=ofono Ubuntu=ofono"
 DISTRO_PN_ALIAS_pn-oh-puzzles = "OpenedHand"
 DISTRO_PN_ALIAS_pn-opkg = "OSPDT upstream=http://svn.openmoko.org/trunk/src/tar"
+DISTRO_PN_ALIAS_pn-opkg-arch-config = "OE-Core"
 DISTRO_PN_ALIAS_pn-opkg-collateral = "OE-Core"
-DISTRO_PN_ALIAS_pn-opkg-config-base = "OE-Core"
-DISTRO_PN_ALIAS_pn-opkg-nogpg = "OSPDT upstream=http://svn.openmoko.org/trunk/src/tar"
-DISTRO_PN_ALIAS_pn-opkg-utils = "OSPDT upstream=http://svn.openmoko.org/trunk/src/target/opkg/"
+DISTRO_PN_ALIAS_pn-opkg-keyrings = "OSPDT upstream=git://git.yoctoproject.org/opkg-utils"
+DISTRO_PN_ALIAS_pn-opkg-nogpg = "OSPDT upstream=git://git.yoctoproject.org/opkg-utils"
+DISTRO_PN_ALIAS_pn-opkg-utils = "OSPDT upstream=git://git.yoctoproject.org/opkg-utils"
 DISTRO_PN_ALIAS_pn-oprofile = "Debian=oprofile Fedora=oprofile"
 DISTRO_PN_ALIAS_pn-oprofileui = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
 DISTRO_PN_ALIAS_pn-oprofileui-server = "Fedora=oprofileui Ubuntu=oprofile-gui Debian=oprofile-gui"
+DISTRO_PN_ALIAS_pn-os-release = "OE-Core"
 DISTRO_PN_ALIAS_pn-owl-video = "OpenedHand"
 DISTRO_PN_ALIAS_pn-packagegroup-base = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-core = "OE-Core"
@@ -424,9 +451,10 @@ DISTRO_PN_ALIAS_pn-systemd-systemdctl = "Fedora=systemd Ubuntu=systemd"
 DISTRO_PN_ALIAS_pn-systemtap-uprobes = "Ubuntu=systemtap Debian=systemtap"
 DISTRO_PN_ALIAS_pn-sysvinit-inittab = "OE-Core"
 DISTRO_PN_ALIAS_pn-table = "Intel"
-DISTRO_PN_ALIAS_pn-tar-replacement = "OE-Core"
+DISTRO_PN_ALIAS_pn-tar-replacement = "Fedora=tar Ubuntu=tar"
 DISTRO_PN_ALIAS_pn-tcf-agent = "Windriver upstream=http://www.eclipse.org/dsdp/tm/"
 DISTRO_PN_ALIAS_pn-telepathy-python = "Debian=telepathy-python Ubuntu=telepathy-python"
+DISTRO_PN_ALIAS_pn-texinfo-dummy-native = "OE-Core"
 DISTRO_PN_ALIAS_pn-tiny-init = "OSPDT"
 DISTRO_PN_ALIAS_pn-tinylogin = "Debian=busybox Ubuntu=busybox Mandriva=busybox"
 DISTRO_PN_ALIAS_pn-trace-cmd = "Mandriva=trace-cmd Ubuntu=trace-cmd"
@@ -441,6 +469,7 @@ DISTRO_PN_ALIAS_pn-u-boot-mkimage = "Ubuntu=uboot-mkimage Debian=uboot-mkimage"
 DISTRO_PN_ALIAS_pn-udev-extraconf = "OE-Core"
 DISTRO_PN_ALIAS_pn-unfs3 = "Debian=unfs3 Fedora=unfs3"
 DISTRO_PN_ALIAS_pn-unfs-server = "OE-Core"
+DISTRO_PN_ALIAS_pn-uninative-tarball = "OE-Core"
 DISTRO_PN_ALIAS_pn-update-alternatives-dpkg = "Opensuse=update-alternatives Mandriva=update-alternatives"
 DISTRO_PN_ALIAS_pn-update-rc.d = "OE-Core"
 DISTRO_PN_ALIAS_pn-usbinit = "OE-Core"
-- 
1.9.1

-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


