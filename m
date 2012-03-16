Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5077AE013BA
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 10:06:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Mar 2012 10:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="118401948"
Received: from unknown (HELO localhost) ([10.255.12.16])
	by orsmga001.jf.intel.com with ESMTP; 16 Mar 2012 10:06:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 16 Mar 2012 10:05:38 -0700
Message-Id: <db1a393cb07ce45e84c1a08f42541f175b4b0f49.1331917459.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <a68d07d9d1d6af674d8389c47bdc6b88776538ae.1331917459.git.dvhart@linux.intel.com>
References: <a68d07d9d1d6af674d8389c47bdc6b88776538ae.1331917459.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1331917459.git.dvhart@linux.intel.com>
References: <cover.1331917459.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 2/2] distro-tracking: Remove trailing whitespace
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
X-List-Received-Date: Fri, 16 Mar 2012 17:06:25 -0000

Remove all trailing whitespace from the distro tracking text.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Saul Wold <sgw@linux.intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |  286 ++++++++++----------
 1 files changed, 143 insertions(+), 143 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 6a43bb6..cff4cba 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -116,7 +116,7 @@ RECIPE_MAINTAINER_pn-minicom = "Dongxiao Xu <dongxiao.xu@intel.com>"
 RECIPE_STATUS_pn-patch = "green"
 RECIPE_LATEST_VERIONS_pn-patch = "2.6.1"
 RECIPE_LAST_UPDATE_pn-patch = "Dec 7, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-patch = "Nov 16, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-patch = "Nov 16, 2011"
 RECIPE_MAINTAINER_pn-patch = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-python-imaging = "green"
@@ -376,7 +376,7 @@ RECIPE_LAST_UPDATE_pn-gdbm = "Nov 28, 2011"
 RECIPE_MAINTAINER_pn-gdbm = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_INTEL_SECTION_pn-gdbm = "base libs"
 
-RECIPE_STATUS_pn-pth = "yellow"   
+RECIPE_STATUS_pn-pth = "yellow"
 # custom do_configure
 RECIPE_LAST_UPDATE_pn-pth = "Mar 14, 2008"
 RECIPE_MAINTAINER_pn-pth = "Saul Wold <sgw@linux.intel.com>"
@@ -384,7 +384,7 @@ RECIPE_LATEST_VERSION_pn-pth = "2.0.7"
 RECIPE_INTEL_SECTION_pn-pth = "base libs"
 RECIPE_LATEST_RELEASE_DATE_pn-pth = "Jun 01, 2006"
 
-RECIPE_STATUS_pn-python-pycurl = "yellow" 
+RECIPE_STATUS_pn-python-pycurl = "yellow"
 # several exports to work with python
 RECIPE_LAST_UPDATE_pn-python-pycurl = "Mar 25, 2010"
 RECIPE_DEPENDENCY_CHECK_pn-python-pycurl = "not done"
@@ -425,7 +425,7 @@ RECIPE_INTEL_SECTION_pn-libnl = "base libs"
 RECIPE_LATEST_RELEASE_DATE_pn-libnl = "Oct 01, 2010"
 RECIPE_NO_UPDATE_REASON_pn-libnl = "libnl-3.2.2 is incompatible with libnl2, so no Upgrade"
 
-RECIPE_STATUS_pn-zlib = "yellow" 
+RECIPE_STATUS_pn-zlib = "yellow"
 # local config scripts
 RECIPE_LATEST_VERSION_pn-zlib = "1.2.5"
 RECIPE_LATEST_RELEASE_DATE_pn-zlib = "Mar 01, 2010"
@@ -541,7 +541,7 @@ RECIPE_LATEST_VERSION_pn-popt = "1.16"
 RECIPE_INTEL_SECTION_pn-popt = "base libs"
 RECIPE_LATEST_RELEASE_DATE_pn-popt = "May 01, 2010"
 
-RECIPE_STATUS_pn-sqlite3 = "green"   
+RECIPE_STATUS_pn-sqlite3 = "green"
 # need upgrade
 RECIPE_LATEST_VERSION_pn-sqlite3 = "3.7.10"
 RECIPE_LATEST_RELEASE_DATE_pn-sqlite3 = "Jan 16, 2012"
@@ -563,7 +563,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libpthread-stubs = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-libpthread-stubs = "Oct 01, 2009"
 RECIPE_COMMENTS_pn-libpthread-stubs = "0.1: Nov 01, 2006, 0.2: 09/2009, 0.3: 10/2009"
 
-RECIPE_STATUS_pn-attr = "yellow"   
+RECIPE_STATUS_pn-attr = "yellow"
 # the recipe is quite hacky
 RECIPE_LAST_UPDATE_pn-attr = "Jul 7, 2010"
 RECIPE_MAINTAINER_pn-attr = "Saul Wold <sgw@linux.intel.com>"
@@ -571,7 +571,7 @@ RECIPE_LATEST_VERSION_pn-attr = "2.4.44"
 RECIPE_INTEL_SECTION_pn-attr = "base libs"
 RECIPE_LATEST_RELEASE_DATE_pn-attr = "Aug 01, 2009"
 
-RECIPE_STATUS_pn-libcap = "yellow"   
+RECIPE_STATUS_pn-libcap = "yellow"
 # hand crafted Makefiles
 RECIPE_LATEST_VERSION_pn-libcap = "2.22"
 RECIPE_LATEST_RELEASE_DATE_pn-libcap = "Jan 01, 2010"
@@ -598,7 +598,7 @@ RECIPE_LATEST_VERSION_pn-libnfsidmap = "0.24"
 RECIPE_INTEL_SECTION_pn-libnfsidmap = "base libs"
 RECIPE_LATEST_RELEASE_DATE_pn-libnfsidmap = "Dec 01, 2010"
 
-RECIPE_STATUS_pn-acl = "yellow"   
+RECIPE_STATUS_pn-acl = "yellow"
 # hacky as attr
 RECIPE_LAST_UPDATE_pn-acl = "Jul 29, 2010"
 RECIPE_MAINTAINER_pn-acl = "Saul Wold <sgw@linux.intel.com>"
@@ -609,7 +609,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-acl = "4 months"
 RECIPE_LATEST_RELEASE_DATE_pn-acl = "Nov 01, 2009"
 RECIPE_COMMENTS_pn-acl = ""
 
-RECIPE_STATUS_pn-tcp-wrappers = "yellow"    
+RECIPE_STATUS_pn-tcp-wrappers = "yellow"
 # custom build system
 RECIPE_DEPENDENCY_CHECK_pn-tcp-wrappers = "done"
 RECIPE_LAST_UPDATE_pn-tcp-wrappers = "Aug 11, 2010"
@@ -682,7 +682,7 @@ RECIPE_COMMENTS_pn-dbus-wait = "o-hand project"
 RECIPE_LAST_UPDATE_pn-dbus-wait = "Aug 12, 2010"
 RECIPE_MAINTAINER_pn-dbus-wait= "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-e2fsprogs = "yellow" 
+RECIPE_STATUS_pn-e2fsprogs = "yellow"
 # patch comment
 RECIPE_DEPENDENCY_CHECK_pn-e2fsprogs = "not done"
 RECIPE_LATEST_VERSION_pn-e2fsprogs = "1.42"
@@ -741,7 +741,7 @@ RECIPE_COMMENTS_pn-initscripts = "local scripts follow OE-Core's MIT license"
 RECIPE_LAST_UPDATE_pn-initscripts = "Jul 21, 2006"
 RECIPE_MAINTAINER_pn-initscripts = "Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-keymaps = "green" 
+RECIPE_STATUS_pn-keymaps = "green"
 RECIPE_DEPENDENCY_CHECK_pn-keymaps = "not done"
 RECIPE_LATEST_VERSION_pn-keymaps = "1.0"
 RECIPE_PATCH_pn-keymaps = "many local keymap files"
@@ -762,7 +762,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-modutils-initscripts = "n/a"
 RECIPE_COMMENTS_pn-modutils-initscripts = "local scripts follow OE-Core's MIT license"
 RECIPE_MAINTAINER_pn-modutils-initscripts = "Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-opkg-collateral = "green" 
+RECIPE_STATUS_pn-opkg-collateral = "green"
 RECIPE_DEPENDENCY_CHECK_pn-opkg-collateral = "not done"
 RECIPE_LATEST_VERSION_pn-opkg-collateral = "1.0"
 RECIPE_PATCH_pn-opkg-collateral = "local"
@@ -969,7 +969,7 @@ RECIPE_COMMENTS_pn-base-passwd = ""
 RECIPE_LAST_UPDATE_pn-base-passwd = "Jul 6, 2010"
 RECIPE_MAINTAINER_pn-base-passwd = "Scott Garman <scott.a.garman@intel.com>"
 
-RECIPE_STATUS_pn-apmd = "green" 
+RECIPE_STATUS_pn-apmd = "green"
 RECIPE_DEPENDENCY_CHECK_pn-apmd = "not done"
 RECIPE_LATEST_VERSION_pn-apmd = "3.2.2-14"
 RECIPE_NO_OF_PATCHES_pn-apmd = "3"
@@ -1434,7 +1434,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-time = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-time = "Jul 01, 1996"
 RECIPE_COMMENTS_pn-time = ""
 
-RECIPE_STATUS_pn-bzip2 = "yellow"  
+RECIPE_STATUS_pn-bzip2 = "yellow"
 # local config scripts
 RECIPE_LAST_UPDATE_pn-bzip2 = "Nov 3, 2010"
 RECIPE_MAINTAINER_pn-bzip2 = "Shane Wang <shane.wang@intel.com>"
@@ -1515,7 +1515,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-bash = "10 months"
 RECIPE_LATEST_RELEASE_DATE_pn-bash = "Dec 01, 2009"
 RECIPE_COMMENTS_pn-bash = ""
 
-RECIPE_STATUS_pn-syslinux = "yellow"    
+RECIPE_STATUS_pn-syslinux = "yellow"
 # need mangling on LDFLAGS
 RECIPE_LAST_UPDATE_pn-syslinux = "Nov 16, 2010"
 RECIPE_MAINTAINER_pn-syslinux = "Darren Hart <dvhart@linux.intel.com>"
@@ -1573,7 +1573,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-gconf-dbus = "n/a"
 RECIPE_COMMENTS_pn-gconf-dbus = "difficult to identify official site and current status"
 RECIPE_MANUAL_CHECK_DATE_pn-gconf-dbus = "Jul 01, 2011"
 
-RECIPE_STATUS_pn-elfutils ="green" 
+RECIPE_STATUS_pn-elfutils ="green"
 # no update needed
 RECIPE_LAST_UPDATE_pn-elfutils = "Jul 16, 2010"
 RECIPE_MAINTAINER_pn-elfutils = "Shane Wang <shane.wang@intel.com>"
@@ -1654,10 +1654,10 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-rsync = "7 months"
 RECIPE_LATEST_RELEASE_DATE_pn-rsync = "Dec 01, 2009"
 RECIPE_COMMENTS_pn-rsync = ""
 
-RECIPE_STATUS_pn-nfs-utils = "yellow"   
+RECIPE_STATUS_pn-nfs-utils = "yellow"
 # no auto stage
 RECIPE_LAST_UPDATE_pn-nfs-utils = "Nov 9, 2010"
-RECIPE_DEPENDENCY_CHECK_pn-nfs-utils = "done"  
+RECIPE_DEPENDENCY_CHECK_pn-nfs-utils = "done"
 # still missing libwrap, libgss, libtirpc
 RECIPE_LATEST_VERSION_pn-nfs-utils = "1.2.5"
 RECIPE_PATCH_pn-nfs-utils+nfs-utils-1.0.6-uclibc.patch = "uclibc missing some functions"
@@ -1725,7 +1725,7 @@ RECIPE_INTEL_SECTION_pn-avahi-ui = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-avahi-ui = "3 month"
 RECIPE_COMMENTS_pn-avahi-ui = ""
 
-RECIPE_STATUS_pn-js = "yellow"    
+RECIPE_STATUS_pn-js = "yellow"
 # may not work for platforms other than 32bit x86
 RECIPE_LAST_UPDATE_pn-js = "Jul 5, 2010"
 RECIPE_MAINTAINER_pn-js = "Saul Wold <sgw@linux.intel.com>"
@@ -1792,7 +1792,7 @@ RECIPE_MAINTAINER_pn-dhcp = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_INTEL_SECTION_pn-dhcp = "base utils"
 RECIPE_COMMENTS_pn-dhcp = "several major release, others are 3.1.3, 4.0.2-P1, need to identify"
 
-RECIPE_STATUS_pn-v86d = "yellow"   
+RECIPE_STATUS_pn-v86d = "yellow"
 # self written configure
 RECIPE_LAST_UPDATE_pn-v86d = "Oct 11, 2011"
 RECIPE_MAINTAINER_pn-v86d = "Joshua Lock <josh@linux.intel.com>"
@@ -1804,7 +1804,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-v86d = "Feb 25, 2011"
 RECIPE_COMMENTS_pn-v86d = "contains code under other licenses"
 DISTRO_PN_ALIAS_pn-v86d = "Debian=v86d Ubuntu=v86d"
 
-RECIPE_STATUS_pn-udev = "yellow"   
+RECIPE_STATUS_pn-udev = "yellow"
 # needs to delete old versions
 RECIPE_LAST_UPDATE_pn-udev = "Dec 7, 2010"
 RECIPE_MAINTAINER_pn-udev = "Joshua Lock <josh@linux.intel.com>"
@@ -1828,7 +1828,7 @@ RECIPE_COMMENTS_pn-tzdata = ""
 DISTRO_PN_ALIAS_pn-tzcode = "OSPDT"
 
 
-RECIPE_STATUS_pn-tinylogin = "yellow"    
+RECIPE_STATUS_pn-tinylogin = "yellow"
 # replaced, place holder for tracking
 RECIPE_LAST_UPDATE_pn-tinylogin = "Jul 21, 2006"
 RECIPE_MAINTAINER_pn-tinylogin = "Zhai Edwin <edwin.zhai@intel.com>"
@@ -1842,7 +1842,7 @@ RECIPE_COMMENTS_pn-tinylogin = "merged into busybox"
 RECIPE_MANUAL_CHECK_DATE_pn-tinylogin = "Dec 24, 2011"
 DISTRO_PN_ALIAS_pn-tinylogin = "Debian=busybox Ubuntu=busybox Mandriva=busybox"
 
-RECIPE_STATUS_pn-rpm = "red"   
+RECIPE_STATUS_pn-rpm = "red"
 # need upgrade
 RECIPE_LAST_UPDATE_pn-rpm = "Aug 20, 2010"
 RECIPE_MAINTAINER_pn-rpm = "Joshua Lock <joshua.lock@intel.com>"
@@ -1879,7 +1879,7 @@ RECIPE_INTEL_SECTION_pn-usbutils = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-usbutils = "2 months"
 RECIPE_COMMENTS_pn-usbutils = "No update on kernel.org"
 
-RECIPE_STATUS_pn-pciutils = "yellow"    
+RECIPE_STATUS_pn-pciutils = "yellow"
 # custom build system, several hacks
 RECIPE_LAST_UPDATE_pn-pciutils = "Jan 22, 2012"
 RECIPE_MAINTAINER_pn-pciutils = "Zhai Edwin <edwin.zhai@intel.com>"
@@ -1921,13 +1921,13 @@ RECIPE_LAST_UPDATE_pn-sysstat = "Dec 27, 2011"
 RECIPE_MANUAL_CHECK_DATE_pn-sysstat = "Feb 26, 2012"
 RECIPE_MAINTAINER_pn-sysstat = "Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-sysklogd = "red"    
+RECIPE_STATUS_pn-sysklogd = "red"
 # need upgrade
 RECIPE_LAST_UPDATE_pn-sysklogd = "Aug 27, 2010"
 RECIPE_MAINTAINER_pn-sysklogd = "Joshua Lock <josh@linux.intel.com>"
 RECIPE_LATEST_VERSION_pn-sysklogd = "1.5"
 
-RECIPE_STATUS_pn-gawk = "red"    
+RECIPE_STATUS_pn-gawk = "red"
 # need upgrade
 RECIPE_LAST_UPDATE_pn-gawk = "Jul 5, 2011"
 RECIPE_MAINTAINER_pn-gawk = "Shane Wang <shane.wang@intel.com>"
@@ -2108,7 +2108,7 @@ RECIPE_LAST_UPDATE_pn-qemu-helper-nativesdk = "Sep 17, 2009"
 RECIPE_MAINTAINER_pn-qemu-helper-nativesdk = "Scott Garman <scott.a.garman@intel.com>"
 
 RECIPE_STATUS_pn-at = "green"
-RECIPE_DEPENDENCY_CHECK_pn-at = "not done" 
+RECIPE_DEPENDENCY_CHECK_pn-at = "not done"
 RECIPE_LATEST_VERSION_pn-at = "3.1.12"
 RECIPE_INTEL_SECTION_pn-at = "base"
 RECIPE_NO_OF_PATCHES_pn-at = "3"
@@ -2139,7 +2139,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-cronie = "Jun 27, 2011"
 RECIPE_LAST_UPDATE_pn-cronie = "Aug 16, 2011"
 RECIPE_MAINTAINER_pn-cronie = "Dexuan Cui <dexuan.cui@intel.com>"
 
-RECIPE_STATUS_pn-grep = "green" 
+RECIPE_STATUS_pn-grep = "green"
 RECIPE_DEPENDENCY_CHECK_pn-grep = "not done"
 RECIPE_LATEST_VERSION_pn-grep = "2.9"
 RECIPE_INTEL_SECTION_pn-grep = "base"
@@ -2149,7 +2149,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-grep = "Jun 01, 2011"
 RECIPE_LAST_UPDATE_pn-grep = "Oct 25, 2011"
 RECIPE_MAINTAINER_pn-grep = "Scott Garman <scott.a.garman@intel.com>"
 
-RECIPE_STATUS_pn-openssh = "green" 
+RECIPE_STATUS_pn-openssh = "green"
 RECIPE_DEPENDENCY_CHECK_pn-openssh = "not done"
 RECIPE_LATEST_VERSION_pn-openssh = "5.9p1"
 RECIPE_INTEL_SECTION_pn-openssh = "base"
@@ -2159,7 +2159,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-openssh = "Sep 01, 2011"
 RECIPE_LAST_UPDATE_pn-openssh = "Oct 25, 2011"
 RECIPE_MAINTAINER_pn-openssh = "Scott Garman <scott.a.garman@intel.com>"
 
-RECIPE_STATUS_pn-tar = "green" 
+RECIPE_STATUS_pn-tar = "green"
 RECIPE_DEPENDENCY_CHECK_pn-tar = "not done"
 RECIPE_LATEST_VERSION_pn-tar = "1.26"
 RECIPE_INTEL_SECTION_pn-tar = "base"
@@ -2170,7 +2170,7 @@ RECIPE_LAST_UPDATE_pn-tar = "Jun 5, 2011"
 RECIPE_MANUAL_CHECK_DATE_pn-tar = "Nov 14, 2011"
 RECIPE_MAINTAINER_pn-tar = "Scott Garman <scott.a.garman@intel.com>"
 
-RECIPE_STATUS_pn-lrzsz="yellow" 
+RECIPE_STATUS_pn-lrzsz="yellow"
 # patch investigation needed.
 RECIPE_LATEST_VERSION_pn-lrzsz="0.12.20"
 RECIPE_NO_OF_PATCHES_pn-lrzsz="3"
@@ -2180,7 +2180,7 @@ RECIPE_LAST_UPDATE_pn-lrzsz = "Jul 21, 2006"
 RECIPE_MANUAL_CHECK_DATE_pn-lrzsz = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-lrzsz = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-wireless-tools="yellow" 
+RECIPE_STATUS_pn-wireless-tools="yellow"
 # patch investigation needed
 RECIPE_LATEST_VERSION_pn-wireless-tools="29"
 RECIPE_NO_OF_PATCHES_pn-wireless-tools="3"
@@ -2190,7 +2190,7 @@ RECIPE_LAST_UPDATE_pn-wireless-tools = "Oct 19, 2007"
 RECIPE_MANUAL_CHECK_DATE_pn-wireless-tools = "Dec 24, 2011"
 RECIPE_MAINTAINER_pn-wireless-tools = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-bluez-dtl1-workaround="yellow" 
+RECIPE_STATUS_pn-bluez-dtl1-workaround="yellow"
 # LICENSE double check
 RECIPE_LATEST_VERSION_pn-bluez-dtl1-workaround="1.0"
 RECIPE_NO_OF_PATCHES_pn-bluez-dtl1-workaround="0"
@@ -2448,7 +2448,7 @@ RECIPE_LATEST_VERSION_pn-libetpan = "1.0"
 RECIPE_LAST_UPDATE_pn-libetpan = "May 13, 2008"
 RECIPE_MAINTAINER_pn-libetpan = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-hostap-utils="yellow" 
+RECIPE_STATUS_pn-hostap-utils="yellow"
 # patch investigation needed; hostap-utils.inc is only included by one bb file.
 RECIPE_LATEST_VERSION_pn-hostap-utils="0.4.7"
 RECIPE_NO_OF_PATCHES_pn-hostap-utils="1"
@@ -2680,7 +2680,7 @@ RECIPE_LATEST_VERSION_pn-core-image-sato-sdk-directdisk = "1.0"
 RECIPE_MAINTAINER_pn-core-image-sato-sdk-directdisk = "Dongxiao Xu <dongxiao.xu@intel.com>"
 DISTRO_PN_ALIAS_pn-core-image-sato-sdk-directdisk = "OE-Core"
 
-RECIPE_STATUS_pn-liba52="yellow" 
+RECIPE_STATUS_pn-liba52="yellow"
 # patch investigation needed
 DISTRO_PN_ALIAS_pn-liba52 = "Mandriva=a52dec Debian=a52dec"
 RECIPE_LATEST_VERSION_pn-liba52="0.7.4"
@@ -2691,7 +2691,7 @@ RECIPE_LAST_UPDATE_pn-liba52 = "Sep 1, 2006"
 RECIPE_MANUAL_CHECK_DATE_pn-liba52 = "Jan 30, 2011"
 RECIPE_MAINTAINER_pn-liba52 = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-libid3tag="yellow" 
+RECIPE_STATUS_pn-libid3tag="yellow"
 # patch investigation needed
 RECIPE_LATEST_VERSION_pn-libid3tag="0.15.1b"
 RECIPE_NO_OF_PATCHES_pn-libid3tag="1"
@@ -3076,102 +3076,102 @@ DISTRO_PN_ALIAS_pn-ldconfig-native = "Ubuntu=libc-bin Fedora=glibc"
 
 RECIPE_LATEST_VERSION_pn-gcc="4.6.2+git"
 RECIPE_LAST_UPDATE_pn-gcc = "May 1, 2011"
-RECIPE_MANUAL_CHECK_DATE_pn-gcc = "Feb 01, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-gcc = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-gcc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-gcc-runtime = "Ubuntu=gcc Fedora=gcc"
 
 RECIPE_LATEST_VERSION_pn-libgcc = "4.6.2+git"
 RECIPE_LAST_UPDATE_pn-libgcc = "May 1, 2011"
-RECIPE_MANUAL_CHECK_DATE_pn-libgcc = "Jan 10, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-libgcc = "Jan 10, 2012"
 DISTRO_PN_ALIAS_pn-libgcc = "Debian=libgcc4 Ubuntu=libgcc1 OpenSuSE=libgcc46"
 
 RECIPE_LATEST_VERSION_pn-gcc-runtime = "4.6.2+git"
 RECIPE_LAST_UPDATE_pn-gcc-runtime = "May 1, 2011"
-RECIPE_MANUAL_CHECK_DATE_pn-gcc-runtime = "Jan 10, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-gcc-runtime = "Jan 10, 2012"
 
-RECIPE_STATUS_pn-autoconf="red" 
+RECIPE_STATUS_pn-autoconf="red"
 RECIPE_LATEST_VERSION_pn-autoconf="2.68"
 RECIPE_LAST_UPDATE_pn-autoconf = "Jan 29, 2010"
 RECIPE_NO_UPDATE_REASON_pn-autoconf="seeing rpm issue with the 2.68 version, a bug is open"
 RECIPE_MAINTAINER_pn-autoconf = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-automake="green" 
+RECIPE_STATUS_pn-automake="green"
 RECIPE_LATEST_VERSION_pn-automake="1.11.1"
 RECIPE_LAST_UPDATE_pn-automake = "Jan 29, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-automake = "Jul 06, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-automake = "Jul 06, 2011"
 RECIPE_MAINTAINER_pn-automake = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-bison="green" 
+RECIPE_STATUS_pn-bison="green"
 RECIPE_LATEST_VERSION_pn-bison="2.4.3"
 RECIPE_LAST_UPDATE_pn-bison = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-bison = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-diffstat="green" 
+RECIPE_STATUS_pn-diffstat="green"
 RECIPE_LATEST_VERSION_pn-diffstat="1.54"
 RECIPE_LAST_UPDATE_pn-diffstat = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-diffstat = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-distcc="green" 
+RECIPE_STATUS_pn-distcc="green"
 RECIPE_LATEST_VERSION_pn-distcc="2.18.3"
 RECIPE_LAST_UPDATE_pn-distcc = "Oct 28, 2006"
 RECIPE_MAINTAINER_pn-distcc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-distcc = "Debian=distcc Fedora=distcc"
 
-RECIPE_STATUS_pn-flex="green" 
+RECIPE_STATUS_pn-flex="green"
 RECIPE_LATEST_VERSION_pn-flex="2.5.35"
 RECIPE_LAST_UPDATE_pn-flex = "Jun 20, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-flex = "Feb 01, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-flex = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-flex = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-fstests="green"  
+RECIPE_STATUS_pn-fstests="green"
 RECIPE_LATEST_VERSION_pn-fstests="0.0+svnr426"
 DISTRO_PN_ALIAS_pn-fstests = "OpenedHand"
 RECIPE_LAST_UPDATE_pn-fstests = "Dec 7, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-fstests = "Jul 06, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-fstests = "Jul 06, 2011"
 RECIPE_MAINTAINER_pn-fstests = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-gdb="green" 
+RECIPE_STATUS_pn-gdb="green"
 RECIPE_LATEST_VERSION_pn-gdb="7.4"
 RECIPE_LAST_UPDATE_pn-gdb = "Feb 1, 2012"
-RECIPE_MANUAL_CHECK_DATE_pn-gdb = "Feb 01, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-gdb = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-gdb = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-intltool="green" 
+RECIPE_STATUS_pn-intltool="green"
 RECIPE_LATEST_VERSION_pn-intltool="0.40.6"
 RECIPE_LAST_UPDATE_pn-intltool = "Jun 21, 2010"
 RECIPE_MAINTAINER_pn-intltool = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libtool="green" 
+RECIPE_STATUS_pn-libtool="green"
 RECIPE_LATEST_VERSION_pn-libtool="2.4.2"
 RECIPE_LAST_UPDATE_pn-libtool = "Nov 28, 2011"
-RECIPE_MANUAL_CHECK_DATE_pn-libtool = "Nov 28, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-libtool = "Nov 28, 2011"
 RECIPE_MAINTAINER_pn-libtool = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-linux-libc-headers="green" 
+RECIPE_STATUS_pn-linux-libc-headers="green"
 DISTRO_PN_ALIAS_pn-linux-libc-headers = "Debian=linux-kernel-headers Ubuntu=linux-kernel-headers"
 RECIPE_LATEST_VERSION_pn-linux-libc-headers="2.6.36"
 RECIPE_LAST_UPDATE_pn-linux-libc-headers = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-linux-libc-headers = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-linux-libc-headers-yocto = "green" 
+RECIPE_STATUS_pn-linux-libc-headers-yocto = "green"
 DISTRO_PN_ALIAS_pn-linux-libc-headers-yocto = "Debian=linux-kernel-headers Ubuntu=linux-kernel-headers"
 RECIPE_LATEST_VERSION_pn-linux-libc-headers-yocto = "2.6.36"
 RECIPE_LAST_UPDATE_pn-linux-libc-headers-yocto = "Nov 8, 2010"
 RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-lsof="green" 
+RECIPE_STATUS_pn-lsof="green"
 RECIPE_LATEST_VERSION_pn-lsof="4.84"
 RECIPE_LAST_UPDATE_pn-lsof = "Nov 8, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-lsof = "Jul 06, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-lsof = "Jul 06, 2011"
 RECIPE_MAINTAINER_pn-lsof = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-make="green" 
+RECIPE_STATUS_pn-make="green"
 RECIPE_LATEST_VERSION_pn-make="3.82"
 RECIPE_LAST_UPDATE_pn-make = "Nov 8, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-make = "May 23, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-make = "May 23, 2011"
 RECIPE_MAINTAINER_pn-make = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-run-postinsts="green" 
+RECIPE_STATUS_pn-run-postinsts="green"
 # all local code
 RECIPE_LATEST_VERSION_pn-postinsts="1.0"
 RECIPE_MAINTAINER_pn-postinsts = "Nitin A Kamble <nitin.a.kamble@intel.com>"
@@ -3189,25 +3189,25 @@ RECIPE_MANUAL_CHECK_DATE_pn-btrfs-tools = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-btrfs-tools = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-btrfs-tools = "Debian=btrfs-tools Fedora=btrfs-progs"
 
-RECIPE_STATUS_pn-perl="green" 
+RECIPE_STATUS_pn-perl="green"
 RECIPE_LATEST_VERSION_pn-perl="5.14.2"
 RECIPE_LAST_UPDATE_pn-perl = "Oct 22, 2011"
 RECIPE_MANUAL_CHECK_DATE_pn-perl = "Nov 16, 2011"
 RECIPE_MAINTAINER_pn-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-prelink="green" 
+RECIPE_STATUS_pn-prelink="green"
 RECIPE_LATEST_VERSION_pn-prelink="1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00"
 RECIPE_LAST_UPDATE_pn-prelink = "Jan 13, 2012"
 RECIPE_MANUAL_CHECK_DATE_pn-prelink = "Jan 13, 2012"
 RECIPE_MAINTAINER_pn-prelink = "Mark Hatle <mark.hatle@windriver.com>"
 
-RECIPE_STATUS_pn-python-dbus="green" 
+RECIPE_STATUS_pn-python-dbus="green"
 RECIPE_LATEST_VERSION_pn-python-dbus="1.0.0"
 RECIPE_LAST_UPDATE_pn-python-dbus = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-python-dbus = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-python-dbus = "Ubuntu=python-dbus Debian=python-dbus Mandriva=python-dbus"
 
-RECIPE_STATUS_pn-python-gst="red" 
+RECIPE_STATUS_pn-python-gst="red"
 RECIPE_LATEST_VERSION_pn-python-gst="0.10.22"
 DISTRO_PN_ALIAS_pn-python-gst = "OpenSuSE=python-gstreamer Ubuntu=gst0.10-python Debian=gst0.10-python"
 RECIPE_LAST_UPDATE_pn-python-gst = "Nov 16, 2011"
@@ -3263,71 +3263,71 @@ RECIPE_MAINTAINER_pn-quilt = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 RECIPE_STATUS_pn-tcl="green"
 RECIPE_LATEST_VERSION_pn-tcl="8.5.11"
 RECIPE_LAST_UPDATE_pn-tcl = "Nov 16, 2011"
-RECIPE_MANUAL_CHECK_DATE_pn-tcl = "Feb 01, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-tcl = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-tcl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-unifdef="green" 
+RECIPE_STATUS_pn-unifdef="green"
 # poky local source files
 RECIPE_LATEST_VERSION_pn-unifdef="2.6.18+git"
 RECIPE_MAINTAINER_pn-unifdef = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-gnu-config="green" 
+RECIPE_STATUS_pn-gnu-config="green"
 RECIPE_LATEST_VERSION_pn-gnu-config="git"
 DISTRO_PN_ALIAS_pn-gnu-config = "OpenedHand"
 RECIPE_LAST_UPDATE_pn-gnu-config = "Nov 08, 2011"
-RECIPE_MANUAL_CHECK_DATE_pn-gnu-config = "Nov 16, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-gnu-config = "Nov 16, 2011"
 RECIPE_MAINTAINER_pn-gnu-config = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-mpfr="green"
 RECIPE_LATEST_VERSION_pn-mpfr="3.1.0"
-RECIPE_MANUAL_CHECK_DATE_pn-mpfr = "Jan 10, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-mpfr = "Jan 10, 2012"
 RECIPE_LAST_UPDATE_pn-mpfr = "Nov 15, 2011"
 RECIPE_MAINTAINER_pn-mpfr = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-gmp="green"
 RECIPE_LATEST_VERSION_pn-gmp="5.0.3"
 RECIPE_LAST_UPDATE_pn-gmp = "Feb 01, 2012"
-RECIPE_MANUAL_CHECK_DATE_pn-gmp = "Feb 01, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-gmp = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-gmp = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
 RECIPE_STATUS_pn-libmpc="green"
 RECIPE_LATEST_VERSION_pn-libmpc="0.8.2"
-RECIPE_MANUAL_CHECK_DATE_pn-libmpc = "Jan 25, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-libmpc = "Jan 25, 2011"
 RECIPE_MAINTAINER_pn-libmpc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 DISTRO_PN_ALIAS_pn-libmpc = "Fedora=libmpc OpenSuse=libmpc2"
 
-RECIPE_STATUS_pn-byacc="green" 
+RECIPE_STATUS_pn-byacc="green"
 RECIPE_LATEST_VERSION_pn-byacc="20120115"
-RECIPE_MANUAL_CHECK_DATE_pn-byacc = "Feb 01, 2012" 
+RECIPE_MANUAL_CHECK_DATE_pn-byacc = "Feb 01, 2012"
 RECIPE_LAST_UPDATE_pn-byacc = "Feb 01, 2012"
 RECIPE_MAINTAINER_pn-byacc = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libconvert-asn1-perl="green" 
+RECIPE_STATUS_pn-libconvert-asn1-perl="green"
 RECIPE_LATEST_VERSION_pn-libconvert-asn1-perl="0.22"
 RECIPE_NO_UPDATE_REASON_pn-libconvert-asn1-perl = "0.22 version does not build, so created a recipe for version 0.21"
 RECIPE_LAST_UPDATE_pn-libconvert-asn1-perl = "Aug 13, 2010"
 RECIPE_MAINTAINER_pn-libconvert-asn1-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-libxml-parser-perl="green" 
+RECIPE_STATUS_pn-libxml-parser-perl="green"
 RECIPE_LATEST_VERSION_pn-libxml-parser-perl="2.41"
 RECIPE_LAST_UPDATE_pn-libxml-parser-perl = "Oct 18, 2011"
 RECIPE_MAINTAINER_pn-libxml-parser-perl = "Nitin A Kamble <nitin.a.kamble@intel.com>"
 
-RECIPE_STATUS_pn-cmake-native="green" 
+RECIPE_STATUS_pn-cmake-native="green"
 RECIPE_LATEST_VERSION_pn-cmake-native="2.8.3"
 RECIPE_LATEST_RELEASE_DATE_pn-cmake-native="Nov 03, 2010"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-cmake-native="4 month"
 RECIPE_LAST_UPDATE_pn-cmake-native = "Nov 23, 2010"
 RECIPE_MAINTAINER_pn-cmake-native = "Dongxiao Xu <dongxiao.xu@intel.com>"
 
-RECIPE_STATUS_pn-m4="green" 
+RECIPE_STATUS_pn-m4="green"
 RECIPE_LATEST_VERSION_pn-m4="1.4.15"
 RECIPE_LAST_UPDATE_pn-m4 = "Nov 23, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-m4 = "Jul 06, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-m4 = "Jul 06, 2011"
 RECIPE_MAINTAINER_pn-m4="Nitin A Kamble <nitin.a.kamble@intel.com>"
 RECIPE_COMMENTS_pn-m4= "Dongxiao Xu <dongxiao.xu@intel.com> will own GPLv2 m4"
 
-RECIPE_STATUS_pn-owl-video = "green" 
+RECIPE_STATUS_pn-owl-video = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-owl-video = "not done"
 RECIPE_LATEST_VERSION_pn-owl-video = "0.0+svnr394"
@@ -3338,7 +3338,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-owl-video = "Jun 01, 2008"
 RECIPE_COMMENTS_pn-owl-video = ""
 RECIPE_MAINTAINER_pn-owl-video = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-xtscal = "green" 
+RECIPE_STATUS_pn-xtscal = "green"
 # no update needed
 DISTRO_PN_ALIAS_pn-xtscal = "OSPDT upstream=http://gpe.linuxtogo.org/download/source/"
 RECIPE_DEPENDENCY_CHECK_pn-xtscal = "not done"
@@ -3351,7 +3351,7 @@ RECIPE_COMMENTS_pn-xtscal = ""
 RECIPE_LAST_UPDATE_pn-xtscal = "Jul 21, 2006"
 RECIPE_MAINTAINER_pn-xtscal = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-xrestop = "green" 
+RECIPE_STATUS_pn-xrestop = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-xrestop = "not done"
 RECIPE_LATEST_VERSION_pn-xrestop = "0.4"
@@ -3376,7 +3376,7 @@ RECIPE_LAST_UPDATE_pn-pcmanfm = "Nov 19, 2010"
 RECIPE_MANUAL_CHECK_DATE_pn-pcmanfm = "Dec 24, 2011"
 RECIPE_MAINTAINER_pn-pcmanfm = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-oh-puzzles = "green" 
+RECIPE_STATUS_pn-oh-puzzles = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-oh-puzzles = "not done"
 RECIPE_LATEST_VERSION_pn-oh-puzzles = "0.1+svnr23"
@@ -3478,7 +3478,7 @@ RECIPE_LAST_UPDATE_pn-x11vnc = "Nov 30, 2010"
 RECIPE_MAINTAINER_pn-x11vnc = "Zhai Edwin <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-x11vnc = "Fedora=x11vnc Ubuntu=x11vnc"
 
-RECIPE_STATUS_pn-mkfontdir="green" 
+RECIPE_STATUS_pn-mkfontdir="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-mkfontdir="1.0.7"
 RECIPE_NO_OF_PATCHES_pn-mkfontdir="0"
@@ -3488,7 +3488,7 @@ RECIPE_LAST_UPDATE_pn-mkfontdir = "Feb 27, 2012"
 RECIPE_MAINTAINER_pn-mkfontdir="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-mkfontdir = "Mandriva=mkfontdir Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 
-RECIPE_STATUS_pn-mkfontscale="green" 
+RECIPE_STATUS_pn-mkfontscale="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-mkfontscale="1.10.0"
 RECIPE_LATEST_RELEASE_DATE_pn-mkfontscale="Feb 10, 2012"
@@ -3499,7 +3499,7 @@ RECIPE_INTEL_SECTION_pn-mkfontscale="graphic apps"
 RECIPE_MAINTAINER_pn-mkfontscale="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-mkfontscale = "Mandriva=mkfontscale Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 
-RECIPE_STATUS_pn-xauth="green" 
+RECIPE_STATUS_pn-xauth="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xauth="1.0.5"
 RECIPE_NO_OF_PATCHES_pn-xauth="0"
@@ -3509,7 +3509,7 @@ RECIPE_INTEL_SECTION_pn-xauth="graphic app"
 RECIPE_LAST_UPDATE_pn-xauth = "Nov 12, 2010"
 RECIPE_MAINTAINER_pn-xauth="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xdpyinfo="green" 
+RECIPE_STATUS_pn-xdpyinfo="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xdpyinfo="1.3.0"
 RECIPE_LATEST_RELEASE_DATE_pn-xdpyinfo="Oct 21, 2011"
@@ -3520,7 +3520,7 @@ RECIPE_INTEL_SECTION_pn-xdpyinfo="graphic app"
 RECIPE_MAINTAINER_pn-xdpyinfo="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xdpyinfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
 
-RECIPE_STATUS_pn-xhost="green" 
+RECIPE_STATUS_pn-xhost="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xhost="1.0.3"
 RECIPE_NO_OF_PATCHES_pn-xhost="0"
@@ -3531,7 +3531,7 @@ RECIPE_LAST_UPDATE_pn-xhost = "Jan 18, 2011"
 RECIPE_MAINTAINER_pn-xhost="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xhost = "Ubuntu=x11-xserver-utils Fedora=xorg-x11-server-utils"
 
-RECIPE_STATUS_pn-xinit="green" 
+RECIPE_STATUS_pn-xinit="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xinit="1.3.2"
 RECIPE_LATEST_RELEASE_DATE_pn-xinit="Jan 27, 2012"
@@ -3541,7 +3541,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xinit="4 monthes"
 RECIPE_INTEL_SECTION_pn-xinit="graphic app"
 RECIPE_MAINTAINER_pn-xinit="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xkbcomp="green" 
+RECIPE_STATUS_pn-xkbcomp="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xkbcomp="1.2.3"
 RECIPE_LATEST_RELEASE_DATE_pn-xkbcomp="Jun 21, 2011"
@@ -3552,7 +3552,7 @@ RECIPE_INTEL_SECTION_pn-xkbcomp="graphic app"
 RECIPE_MAINTAINER_pn-xkbcomp="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xkbcomp = "Ubuntu=x11-xkb-utils Fedora=xorg-x11-xkb-utils"
 
-RECIPE_STATUS_pn-xmodmap="green" 
+RECIPE_STATUS_pn-xmodmap="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xmodmap="1.0.5"
 RECIPE_NO_OF_PATCHES_pn-xmodmap="0"
@@ -3563,7 +3563,7 @@ RECIPE_LAST_UPDATE_pn-xmodmap = "Nov 12, 2010"
 RECIPE_MAINTAINER_pn-xmodmap="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xmodmap = "Meego=xorg-x11-utils-xmodmap Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils"
 
-RECIPE_STATUS_pn-xprop="green" 
+RECIPE_STATUS_pn-xprop="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xprop="1.2.1"
 RECIPE_LATEST_RELEASE_DATE_pn-xprop="Jun 29, 2011"
@@ -3574,7 +3574,7 @@ RECIPE_INTEL_SECTION_pn-xprop="graphic app"
 RECIPE_MAINTAINER_pn-xprop="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xprop = "Meego=xorg-x11-utils-xprop Fedora=xorg-x11-utils Ubuntu=x11-utils"
 
-RECIPE_STATUS_pn-xset="green" 
+RECIPE_STATUS_pn-xset="green"
 # no update needed
 DISTRO_PN_ALIAS_pn-xset = "Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils Debian=x11-xserver-utils Opensuse=xorg-x11"
 RECIPE_LATEST_VERSION_pn-xset="1.2.2"
@@ -3585,7 +3585,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xset="1 year"
 RECIPE_INTEL_SECTION_pn-xset="graphic app"
 RECIPE_MAINTAINER_pn-xset="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xwininfo="green" 
+RECIPE_STATUS_pn-xwininfo="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xwininfo="1.1.2"
 RECIPE_LATEST_RELEASE_DATE_pn-xwininfo="Jun 29, 2010"
@@ -3596,7 +3596,7 @@ RECIPE_INTEL_SECTION_pn-xwininfo="graphic app"
 RECIPE_MAINTAINER_pn-xwininfo="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xwininfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
 
-RECIPE_STATUS_pn-xrandr="green" 
+RECIPE_STATUS_pn-xrandr="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xrandr="1.3.5"
 RECIPE_LATEST_RELEASE_DATE_pn-xrandr="Jun 29, 2011"
@@ -3607,7 +3607,7 @@ RECIPE_INTEL_SECTION_pn-xrandr="graphic app"
 RECIPE_MAINTAINER_pn-xrandr="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xrandr = "Ubuntu=x11-xserver-utils Fedora=xorg-x11-server-utils"
 
-RECIPE_STATUS_pn-vte="green" 
+RECIPE_STATUS_pn-vte="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-vte="0.24.3"
 RECIPE_NO_OF_PATCHES_pn-vte="0"
@@ -3617,7 +3617,7 @@ RECIPE_INTEL_SECTION_pn-vte="graphic app"
 RECIPE_LAST_UPDATE_pn-vte = "Jul 19, 2010"
 RECIPE_MAINTAINER_pn-vte="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-qemugl="green" 
+RECIPE_STATUS_pn-qemugl="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-qemugl="0.0+git0+d888bbc723c00d197d34a39b5b7448660ec1b1c0"
 RECIPE_NO_OF_PATCHES_pn-qemugl="1"
@@ -3629,7 +3629,7 @@ RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because
 RECIPE_MAINTAINER_pn-qemugl="Saul Wold <sgw@linux.intel.com>"
 RECIPE_MANUAL_CHECK_DATE_pn-qemugl= "Feb 26, 2012"
 
-RECIPE_STATUS_pn-fotowall="green" 
+RECIPE_STATUS_pn-fotowall="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-fotowall="0.9"
 RECIPE_NO_OF_PATCHES_pn-fotowall="0"
@@ -3651,7 +3651,7 @@ RECIPE_LAST_UPDATE_pn-imake = "Nov 21, 2010"
 RECIPE_MAINTAINER_pn-imake = "Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-imake = "Mandriva=xutils Ubuntu=xutils"
 
-RECIPE_STATUS_pn-qt4-native = "green" 
+RECIPE_STATUS_pn-qt4-native = "green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-qt4-native = "4.8.0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-qt4-native = "3 months"
@@ -3684,7 +3684,7 @@ RECIPE_LAST_UPDATE_pn-qt4-x11-free = "Dec 15, 2011"
 RECIPE_MAINTAINER_pn-qt4-x11-free = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-qt4-x11-free = "Ubuntu=qt-x11-free Debian=qt-x11-free"
 
-RECIPE_STATUS_pn-quicky = "green" 
+RECIPE_STATUS_pn-quicky = "green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-quicky = "0.4"
 RECIPE_NO_OF_PATCHES_pn-quicky = "0"
@@ -3699,7 +3699,7 @@ DISTRO_PN_ALIAS_pn-quicky = "OSPDT"
 # distro tracking filed for X core packages
 #
 
-RECIPE_STATUS_pn-bigreqsproto="green" 
+RECIPE_STATUS_pn-bigreqsproto="green"
 # no update needed
 DISTRO_PN_ALIAS_pn-bigreqsproto = "Meego=xorg-x11-proto-bigreqsproto"
 RECIPE_LATEST_VERSION_pn-bigreqsproto="1.1.0"
@@ -3710,7 +3710,7 @@ RECIPE_INTEL_SECTION_pn-bigreqsproto="graphic core"
 RECIPE_LAST_UPDATE_pn-bigreqsproto = "Jan 18, 2011"
 RECIPE_MAINTAINER_pn-bigreqsproto="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-evieext="green" 
+RECIPE_STATUS_pn-evieext="green"
 # no update needed
 DISTRO_PN_ALIAS_pn-evieext = "Meego=xorg-x11-proto-evieext Debian=x11proto-evie"
 RECIPE_LATEST_VERSION_pn-evieext="1.1.0"
@@ -3721,7 +3721,7 @@ RECIPE_INTEL_SECTION_pn-evieext="graphic core"
 RECIPE_LAST_UPDATE_pn-evieext = "Feb 3, 2010"
 RECIPE_MAINTAINER_pn-evieext="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-libxxf86dga="green" 
+RECIPE_STATUS_pn-libxxf86dga="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-libxxf86dga="1.1.1"
 RECIPE_NO_OF_PATCHES_pn-libxxf86dga="0"
@@ -3731,19 +3731,19 @@ RECIPE_INTEL_SECTION_pn-libxxf86dga="graphic core"
 RECIPE_LAST_UPDATE_pn-libxxf86dga = "Nov 24, 2010"
 RECIPE_MAINTAINER_pn-libxxf86dga="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-x11-common="green" 
+RECIPE_STATUS_pn-x11-common="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-x11-common="0.1"
 RECIPE_NO_OF_PATCHES_pn-x11-common="0"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-x11-common="n/a" 
+RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-x11-common="n/a"
 # local file without release
-RECIPE_LATEST_RELEASE_DATE_pn-x11-common="Sep 22, 2008" 
+RECIPE_LATEST_RELEASE_DATE_pn-x11-common="Sep 22, 2008"
 # per poky git log
 RECIPE_INTEL_SECTION_pn-x11-common="graphic core"
 RECIPE_LAST_UPDATE_pn-x11-common = "Sep 22, 2008"
 RECIPE_MAINTAINER_pn-x11-common="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xf86-input-keyboard="green" 
+RECIPE_STATUS_pn-xf86-input-keyboard="green"
 # no update needed
 DISTRO_PN_ALIAS_pn-xf86-input-keyboard = "Meego=xorg-x11-drv-keyboard Fedora=xorg-x11-drv-keyboard Mandriva=x11-driver-input-keyboard Debian=xserver-xorg-input-keyboard"
 RECIPE_LATEST_VERSION_pn-xf86-input-keyboard="1.6.1"
@@ -3754,7 +3754,7 @@ RECIPE_INTEL_SECTION_pn-xf86-input-keyboard="graphic core"
 RECIPE_LAST_UPDATE_pn-xf86-input-keyboard = "Feb 02, 2012"
 RECIPE_MAINTAINER_pn-xf86-input-keyboard="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xf86-input-mouse="green" 
+RECIPE_STATUS_pn-xf86-input-mouse="green"
 # no update needed
 DISTRO_PN_ALIAS_pn-xf86-input-mouse = "Ubuntu=xserver-xorg-input-mouse Mandriva=x11-driver-input-mouse Debian=xserver-xorg-input-mouse"
 RECIPE_LATEST_VERSION_pn-xf86-input-mouse="1.7.1"
@@ -3765,7 +3765,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xf86-input-mouse="9 monthes"
 RECIPE_INTEL_SECTION_pn-xf86-input-mouse="graphic core"
 RECIPE_MAINTAINER_pn-xf86-input-mouse="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xf86-input-vmmouse="green" 
+RECIPE_STATUS_pn-xf86-input-vmmouse="green"
 # update needed
 DISTRO_PN_ALIAS_pn-xf86-input-vmmouse = "Fedora=xorg-x11-drv-vmmouse Ubuntu=xserver-xorg-input-vmmouse Mandriva=x11-driver-input-vmmouse Debian=xserver-xorg-input-vmmouse"
 RECIPE_LATEST_VERSION_pn-xf86-input-vmmouse="12.6.10"
@@ -3776,7 +3776,7 @@ RECIPE_INTEL_SECTION_pn-xf86-input-vmmouse="graphic core"
 RECIPE_LAST_UPDATE_pn-xf86-input-vmmouse = "Nov 12, 2010"
 RECIPE_MAINTAINER_pn-xf86-input-vmmouse="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-libdrm="green" 
+RECIPE_STATUS_pn-libdrm="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-libdrm = "2.4.31"
 RECIPE_LATEST_RELEASE_DATE_pn-libdrm = "Feb 06, 2012"
@@ -3786,7 +3786,7 @@ RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libdrm="1 month"
 RECIPE_INTEL_SECTION_pn-libdrm="graphic core"
 RECIPE_MAINTAINER_pn-libdrm="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-python-pycairo="green" 
+RECIPE_STATUS_pn-python-pycairo="green"
 # no upgrade needed
 RECIPE_LATEST_VERSION_pn-python-pycairo="1.10.0"
 RECIPE_LATEST_RELEASE_DATE_pn-python-pycairo="Apr 18, 2011"
@@ -3797,7 +3797,7 @@ RECIPE_INTEL_SECTION_pn-python-pycairo="graphic core"
 RECIPE_MAINTAINER_pn-python-pycairo="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-python-pycairo = "Meego=pycairo Fedora=pycairo Ubuntu=pycairo Debian=pycairo"
 
-RECIPE_STATUS_pn-libxfontcache="green" 
+RECIPE_STATUS_pn-libxfontcache="green"
 # no update neededd
 RECIPE_LATEST_VERSION_pn-libxfontcache="1.0.5"
 RECIPE_NO_OF_PATCHES_pn-libxfontcache="0"
@@ -3808,7 +3808,7 @@ RECIPE_LAST_UPDATE_pn-libxfontcache = "Jun 23, 2010"
 RECIPE_MAINTAINER_pn-libxfontcache="Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-libxfontcache = "Mandriva=libxfontcache Debian=libxfontcache"
 
-RECIPE_STATUS_pn-xf86-input-evdev="green" 
+RECIPE_STATUS_pn-xf86-input-evdev="green"
 # no update needed
 DISTRO_PN_ALIAS_pn-xf86-input-evdev = "Ubuntu=xserver-xorg-input-evdev Mandriva=x11-driver-input-evdev Debian=xserver-xorg-input-evdev Fedora=xorg-x11-drv-evdev Meego=xorg-x11-drv-evdev"
 RECIPE_LATEST_VERSION_pn-xf86-input-evdev="2.6.0"
@@ -3820,7 +3820,7 @@ RECIPE_LAST_UPDATE_pn-xf86-input-evdev = "Jan 18, 2011"
 RECIPE_MAINTAINER_pn-xf86-input-evdev="Saul Wold <sgw@linux.intel.com>"
 RECIPE_NO_UPDATE_REASON_pn-xf86-input-evdev = "Do not update to *99* unstable versions"
 
-RECIPE_STATUS_pn-xf86-video-vmware="green" 
+RECIPE_STATUS_pn-xf86-video-vmware="green"
 # no update needed
 DISTRO_PN_ALIAS_pn-xf86-video-vmware = "Debian=xserver-xorg-video-vmware Fedora=xorg-x11-drv-vmware Mandriva=x11-driver-video-vmware Ubuntu=xserver-xorg-video-vmware"
 RECIPE_LATEST_VERSION_pn-xf86-video-vmware="11.0.3"
@@ -3832,7 +3832,7 @@ RECIPE_LAST_UPDATE_pn-xf86-video-vmware = "Nov 12, 2010"
 RECIPE_MAINTAINER_pn-xf86-video-vmware="Saul Wold <sgw@linux.intel.com>"
 RECIPE_NO_UPDATE_REASON_pn-xf86-video-vmware = "Do not update to *99* unstable versions"
 
-RECIPE_STATUS_pn-xf86-video-vesa = "green" 
+RECIPE_STATUS_pn-xf86-video-vesa = "green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xf86-video-vesa = "2.3.0"
 RECIPE_NO_OF_PATCHES_pn-xf86-video-vesa = "0"
@@ -3843,7 +3843,7 @@ RECIPE_LAST_UPDATE_pn-xf86-video-vesa = "May 17, 2010"
 RECIPE_MAINTAINER_pn-xf86-video-vesa = "Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-xf86-video-vesa = "Debian=xserver-xorg-video-vesa Fedora=xorg-x11-drv-vesa Mandriva=x11-driver-video-vesa Ubuntu=xserver-xorg-video-vesa"
 
-RECIPE_STATUS_pn-cairo="green" 
+RECIPE_STATUS_pn-cairo="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-cairo="1.9.10"
 RECIPE_NO_UPDATE_REASON_pn-cairo="latest version is not stable release"
@@ -3854,7 +3854,7 @@ RECIPE_INTEL_SECTION_pn-cairo="graphic core"
 RECIPE_LAST_UPDATE_pn-cairo = "Jan 18, 2011"
 RECIPE_MAINTAINER_pn-cairo="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xserver-nodm-init="green" 
+RECIPE_STATUS_pn-xserver-nodm-init="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xserver-nodm-init="1.0"
 RECIPE_NO_OF_PATCHES_pn-xserver-nodm-init="0"
@@ -3863,7 +3863,7 @@ RECIPE_LATEST_RELEASE_DATE_pn-xserver-nodm-init=""
 RECIPE_INTEL_SECTION_pn-xserver-nodm-init="graphic core"
 RECIPE_MAINTAINER_pn-xserver-nodm-init="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xserver-xf86-config="green" 
+RECIPE_STATUS_pn-xserver-xf86-config="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xserver-xf86-config="0.1"
 RECIPE_NO_OF_PATCHES_pn-xserver-xf86-config="0"
@@ -3873,7 +3873,7 @@ RECIPE_INTEL_SECTION_pn-xserver-xf86-config="graphic core"
 RECIPE_LAST_UPDATE_pn-xserver-xf86-config = "May 31, 2009"
 RECIPE_MAINTAINER_pn-xserver-xf86-config="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-pango="green" 
+RECIPE_STATUS_pn-pango="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-pango="1.28.0"
 RECIPE_NO_OF_PATCHES_pn-pango="1"
@@ -3883,7 +3883,7 @@ RECIPE_INTEL_SECTION_pn-pango="graphic core"
 RECIPE_LAST_UPDATE_pn-pango = "Nov 21, 2010"
 RECIPE_MAINTAINER_pn-pango="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-mesa-dri="green" 
+RECIPE_STATUS_pn-mesa-dri="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-mesa-dri="7.8.2"
 RECIPE_NO_OF_PATCHES_pn-mesa-dri="1"
@@ -3896,7 +3896,7 @@ DISTRO_PN_ALIAS_pn-mesa-dri = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 
 DISTRO_PN_ALIAS_pn-mesa-xlib = "Fedora=mesa Ubuntu=libgl1-mesa-swx11"
 
-RECIPE_STATUS_pn-mesa-dri-glsl-native="green" 
+RECIPE_STATUS_pn-mesa-dri-glsl-native="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-mesa-dri-glsl-native="7.8.2"
 RECIPE_NO_OF_PATCHES_pn-mesa-dri-glsl-native="0"
@@ -3907,7 +3907,7 @@ RECIPE_LAST_UPDATE_pn-mesa-dri-glsl-native = "Jan 18, 2011"
 RECIPE_MAINTAINER_pn-mesa-dri-glsl-native = "Saul Wold <sgw@linux.intel.com>"
 DISTRO_PN_ALIAS_pn-mesa-dri-glsl-native = "Fedora=mesa Ubuntu=libgl1-mesa-dri"
 
-RECIPE_STATUS_pn-mesa-xlib="green" 
+RECIPE_STATUS_pn-mesa-xlib="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-mesa-xlib="7.8.2"
 RECIPE_NO_OF_PATCHES_pn-mesa-xlib="0"
@@ -3917,7 +3917,7 @@ RECIPE_INTEL_SECTION_pn-mesa-xlib="graphic core"
 RECIPE_LAST_UPDATE_pn-mesa-xlib = "Nov 27, 2010"
 RECIPE_MAINTAINER_pn-mesa-xlib="Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-xserver-xorg="green" 
+RECIPE_STATUS_pn-xserver-xorg="green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-xserver-xorg="1.11.2"
 RECIPE_NO_OF_PATCHES_pn-xserver-xorg="2"
@@ -3947,7 +3947,7 @@ RECIPE_LATEST_VERSION_pn-xf86-video-omapfb = "0.1.1+git_db636c8436265c3d86"
 RECIPE_LAST_UPDATE_pn-xf86-video-omapfb = "Mar 1, 2010"
 RECIPE_MAINTAINER_pn-xf86-video-omapfb = "Saul Wold <sgw@linux.intel.com>"
 
-RECIPE_STATUS_pn-libdrm-poulsbo = "green" 
+RECIPE_STATUS_pn-libdrm-poulsbo = "green"
 # no update needed
 RECIPE_LATEST_VERSION_pn-libdrm-poulsbo = "2.3.0"
 RECIPE_NO_OF_PATCHES_pn-libdrm-poulsbo = "1"
@@ -5097,7 +5097,7 @@ RECIPE_MAINTAINER_pn-libxklavier = "Dexuan Cui <dexuan.cui@intel.com>"
 # distro tracking fields for X11 UX
 #
 
-RECIPE_STATUS_pn-gnome-mime-data = "green" 
+RECIPE_STATUS_pn-gnome-mime-data = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-gnome-mime-data = "not done"
 RECIPE_LATEST_VERSION_pn-gnome-mime-data = "2.18.0"
@@ -5109,7 +5109,7 @@ RECIPE_COMMENTS_pn-gnome-mime-data = ""
 RECIPE_LAST_UPDATE_pn-gnome-mime-data = "Aug 2, 2007"
 RECIPE_MAINTAINER_pn-gnome-mime-data = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-libmatchbox = "green" 
+RECIPE_STATUS_pn-libmatchbox = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-libmatchbox = "not done"
 RECIPE_LATEST_VERSION_pn-libmatchbox = "1.9"
@@ -5121,7 +5121,7 @@ RECIPE_COMMENTS_pn-libmatchbox = ""
 RECIPE_LAST_UPDATE_pn-libmatchbox = "Aug 7, 2006"
 RECIPE_MAINTAINER_pn-libmatchbox = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-libowl = "green" 
+RECIPE_STATUS_pn-libowl = "green"
 # no update needed
 DISTRO_PN_ALIAS_pn-libowl = "Debian=owl OpenedHand"
 RECIPE_DEPENDENCY_CHECK_pn-libowl = "not done"
@@ -5134,7 +5134,7 @@ RECIPE_COMMENTS_pn-libowl = ""
 RECIPE_LAST_UPDATE_pn-libowl= "Sep 16, 2008"
 RECIPE_MAINTAINER_pn-libowl = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-libowl-av = "green" 
+RECIPE_STATUS_pn-libowl-av = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-libowl-av = "not done"
 RECIPE_LATEST_VERSION_pn-libowl-av = "0.0+svnr416"
@@ -5147,7 +5147,7 @@ RECIPE_MAINTAINER_pn-libowl-av = "Zhai Edwin <edwin.zhai@intel.com>"
 RECIPE_LAST_UPDATE_pn-libowl-av = "Nov 19, 2010"
 DISTRO_PN_ALIAS_pn-libowl-av = "OpenedHand"
 
-RECIPE_STATUS_pn-matchbox-desktop = "green" 
+RECIPE_STATUS_pn-matchbox-desktop = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-matchbox-desktop = "not done"
 RECIPE_LATEST_VERSION_pn-matchbox-desktop = "2.0+svnr2096"
@@ -5160,7 +5160,7 @@ RECIPE_LAST_UPDATE_pn-matchbox-desktop = "Dec 4, 2008"
 RECIPE_MAINTAINER_pn-matchbox-desktop = "Zhai Edwin <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-matchbox-desktop = "Mandriva=matchbox-desktop Ubuntu=matchbox-desktop"
 
-RECIPE_STATUS_pn-matchbox-desktop-sato = "green" 
+RECIPE_STATUS_pn-matchbox-desktop-sato = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-matchbox-desktop-sato = "not done"
 RECIPE_LATEST_VERSION_pn-matchbox-desktop-sato = "0.0+svnr76"
@@ -5172,7 +5172,7 @@ RECIPE_COMMENTS_pn-matchbox-desktop-sato = ""
 RECIPE_LAST_UPDATE_pn-matchbox-desktop-sato = "Jul 5, 2007"
 RECIPE_MAINTAINER_pn-matchbox-desktop-sato = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-matchbox-session = "green" 
+RECIPE_STATUS_pn-matchbox-session = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-matchbox-session = "not done"
 RECIPE_LATEST_VERSION_pn-matchbox-session = "0.1"
@@ -5184,7 +5184,7 @@ RECIPE_COMMENTS_pn-matchbox-session = ""
 RECIPE_LAST_UPDATE_pn-matchbox-session = "Apr 9, 2008"
 RECIPE_MAINTAINER_pn-matchbox-session = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-matchbox-session-sato = "green" 
+RECIPE_STATUS_pn-matchbox-session-sato = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-matchbox-session-sato = "not done"
 RECIPE_LATEST_VERSION_pn-matchbox-session-sato = "0.1"
@@ -5196,7 +5196,7 @@ RECIPE_COMMENTS_pn-matchbox-session-sato = ""
 RECIPE_LAST_UPDATE_pn-matchbox-session-sato = "Apr 9, 2008"
 RECIPE_MAINTAINER_pn-matchbox-session-sato = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-matchbox-terminal = "green" 
+RECIPE_STATUS_pn-matchbox-terminal = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-matchbox-terminal = "not done"
 RECIPE_LATEST_VERSION_pn-matchbox-terminal = "0.0+svnr1816"
@@ -5208,7 +5208,7 @@ RECIPE_COMMENTS_pn-matchbox-terminal = ""
 RECIPE_LAST_UPDATE_pn-matchbox-terminal = "Aug 18, 2009"
 RECIPE_MAINTAINER_pn-matchbox-terminal = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-matchbox-theme-sato = "green" 
+RECIPE_STATUS_pn-matchbox-theme-sato = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-matchbox-theme-sato = "not done"
 RECIPE_LATEST_VERSION_pn-matchbox-theme-sato = "0.1"
@@ -5220,7 +5220,7 @@ RECIPE_COMMENTS_pn-matchbox-theme-sato = ""
 RECIPE_LAST_UPDATE_pn-matchbox-theme-sato = "Jul 31, 2007"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-matchbox-theme-sato-2 = "green" 
+RECIPE_STATUS_pn-matchbox-theme-sato-2 = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-matchbox-theme-sato-2 = "not done"
 RECIPE_LATEST_VERSION_pn-matchbox-theme-sato-2 = "0.1"
@@ -5232,7 +5232,7 @@ RECIPE_COMMENTS_pn-matchbox-theme-sato-2 = ""
 RECIPE_LAST_UPDATE_pn-matchbox-theme-sato-2 = "Jul 31, 2007"
 RECIPE_MAINTAINER_pn-matchbox-theme-sato-2 = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-sato-icon-theme = "green" 
+RECIPE_STATUS_pn-sato-icon-theme = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-sato-icon-theme = "not done"
 RECIPE_LATEST_VERSION_pn-sato-icon-theme = "0.4.1"
@@ -5244,7 +5244,7 @@ RECIPE_COMMENTS_pn-sato-icon-theme = ""
 RECIPE_LAST_UPDATE_pn-sato-icon-theme = "Feb 25, 2008"
 RECIPE_MAINTAINER_pn-sato-icon-theme = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-tslib = "green" 
+RECIPE_STATUS_pn-tslib = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-tslib = "not done"
 RECIPE_LATEST_VERSION_pn-tslib = "1.0"
@@ -5256,7 +5256,7 @@ RECIPE_COMMENTS_pn-tslib = ""
 RECIPE_LAST_UPDATE_pn-tslib = "Aug 17, 2006"
 RECIPE_MAINTAINER_pn-tslib = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-xcursor-transparent-theme = "green" 
+RECIPE_STATUS_pn-xcursor-transparent-theme = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-xcursor-transparent-theme = "not done"
 RECIPE_LATEST_VERSION_pn-xcursor-transparent-theme = "0.1.1"
@@ -5367,7 +5367,7 @@ RECIPE_LATEST_VERSION_pn-gdk-pixbuf = "2.22.1"
 RECIPE_LAST_UPDATE_pn-gdk-pixbuf = "Nov 25, 2010"
 RECIPE_MAINTAINER_pn-gdk-pixbuf = "Zhai Edwin <edwin.zhai@intel.com>"
 
-RECIPE_STATUS_pn-gdk-pixbuf-csource-native = "red" 
+RECIPE_STATUS_pn-gdk-pixbuf-csource-native = "red"
 # update needed
 RECIPE_DEPENDENCY_CHECK_pn-gdk-pixbuf-csource-native = "not done"
 RECIPE_LATEST_VERSION_pn-gdk-pixbuf-csource-native = "2.20.1"
@@ -5380,7 +5380,7 @@ RECIPE_LAST_UPDATE_pn-gdk-pixbuf-csource-native = "Sep 24, 2008"
 RECIPE_MAINTAINER_pn-gdk-pixbuf-csource-native = "Zhai Edwin <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-gdk-pixbuf-csource-native = "Debian=libgdk-pixbuf2.0-0 Fedora=gdk-pixbuf2"
 
-RECIPE_STATUS_pn-gobject-introspection = "red" 
+RECIPE_STATUS_pn-gobject-introspection = "red"
 # update needed
 RECIPE_DEPENDENCY_CHECK_pn-gobject-introspection = "not done"
 RECIPE_LATEST_VERSION_pn-gobject-introspection = "1.31.20"
@@ -5480,7 +5480,7 @@ RECIPE_LAST_UPDATE_pn-jpeg = "Apr 14, 2011"
 RECIPE_MAINTAINER_pn-jpeg = "Zhai Edwin <edwin.zhai@intel.com>"
 DISTRO_PN_ALIAS_pn-jpeg="OpenSuSE=libjpeg Ubuntu=libjpeg62"
 
-RECIPE_STATUS_pn-libfakekey = "green" 
+RECIPE_STATUS_pn-libfakekey = "green"
 # no update needed
 RECIPE_DEPENDENCY_CHECK_pn-libfakekey = "not done"
 RECIPE_LATEST_VERSION_pn-libfakekey = "0.0+svnr2031"
@@ -6269,7 +6269,7 @@ RECIPE_MAINTAINER_pn-alsa-tools = "Kai Kang <kai.kang@windriver.com>"
 RECIPE_STATUS_pn-mesa-demos = "red"
 RECIPE_LATEST_VERSION_pn-mesa-demos = "8.0.1"
 RECIPE_LAST_UPDATE_pn-mesa-demos = "Jul 13, 2010"
-RECIPE_MANUAL_CHECK_DATE_pn-mesa-demos = "Nov 28, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-mesa-demos = "Nov 28, 2011"
 
 RECIPE_STATUS_pn-gettext = "green"
 RECIPE_LATEST_VERSION_pn-gettext = "0.18.1.1"
@@ -6283,7 +6283,7 @@ RECIPE_LATEST_VERSION_pn-pseudo = "1.2"
 RECIPE_LAST_UPDATE_pn-pseudo = "Nov 02, 2011"
 RECIPE_MAINTAINER_pn-pseudo = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_COMMENTS_pn-pseudo = "Yocto Project maintained"
-RECIPE_MANUAL_CHECK_DATE_pn-pseudo = "Nov 02, 2011" 
+RECIPE_MANUAL_CHECK_DATE_pn-pseudo = "Nov 02, 2011"
 DISTRO_PN_ALIAS_pn-pseudo = "Windriver"
 
 RECIPE_STATUS_pn-rt-tests = "green"
-- 
1.7.6.5


