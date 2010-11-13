Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A6184C811BF
	for <yocto@yoctoproject.org>; Sat, 13 Nov 2010 08:52:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Nov 2010 06:52:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,191,1288594800"; d="scan'208";a="857248822"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 13 Nov 2010 06:52:11 -0800
Message-Id: <2be8ae3187f47f58ed5a8dfd70b06811906a7e33.1289659279.git.ke.yu@intel.com>
In-Reply-To: <cover.1289659279.git.ke.yu@intel.com>
References: <cover.1289659279.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 13 Nov 2010 17:26:09 +0800
To: yocto@yoctoproject.org
Subject: [PATCH 3/3] distro tracking: update the info for upgrade recpies
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
X-List-Received-Date: Sat, 13 Nov 2010 14:52:12 -0000

they are:
xmodmap
cracklib
xf86-input-evdev
xf86-input-mouse
xf86-video-vmware
sqlite3
xf86-input-vmmouse
xwininfo
xset
xauth

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |   42 ++++++++++----------
 1 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 4a00ce7..e0091d4 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -492,10 +492,10 @@ RECIPE_COMMENTS_pn-popt = ""
 RECIPE_STATUS_pn-sqlite3 = "green"   # need upgrade
 RECIPE_MAINTAINER_pn-sqlite3 = "Ke Yu <ke.yu@intel.com>"
 DEPENDENCY_CHECK_pn-sqlite3 = "not done"
-RECIPE_LATEST_VERSION_pn-sqlite3 = "3.6.23.1"
+RECIPE_LATEST_VERSION_pn-sqlite3 = "3.7.3"
 RECIPE_INTEL_SECTION_pn-sqlite3 = "base libs"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-sqlite3 = "1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-sqlite3 = "03/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-sqlite3 = "10/2010"
 RECIPE_COMMENTS_pn-sqlite3 = ""
 
 RECIPE_STATUS_pn-libpthread-stubs = "green"
@@ -1756,9 +1756,9 @@ RECIPE_STATUS_pn-xinetd="red"
 RECIPE_MAINTAINER_pn-xinetd="Yu Ke <ke.yu@intel.com>"
 RECIPE_LATEST_VERSION_pn-xinetd="2.3.14"
 
-RECIPE_STATUS_pn-cracklib="red"
+RECIPE_STATUS_pn-cracklib="green"
 RECIPE_MAINTAINER_pn-cracklib="Yu Ke <ke.yu@intel.com>"
-RECIPE_LATEST_VERSION_pn-cracklib="2.8.16"
+RECIPE_LATEST_VERSION_pn-cracklib="2.8.18"
 
 RECIPE_STATUS_pn-openobex = "red"
 RECIPE_LATEST_VERSION_pn-openobex = "1.5"
@@ -3413,10 +3413,10 @@ RECIPE_MAINTAINER_pn-mkfontscale="Yu Ke <ke.yu@intel.com>"
 DISTRO_PN_ALIAS_pn-mkfontscale = "Mandriva=mkfontscale Ubuntu=xfonts-utils Fedora=xorg-x11-font-utils"
 
 RECIPE_STATUS_pn-xauth="green" # no update needed
-RECIPE_LATEST_VERSION_pn-xauth="1.0.4"
+RECIPE_LATEST_VERSION_pn-xauth="1.0.5"
 RECIPE_NO_OF_PATCHES_pn-xauth="0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xauth="1 year"
-RECIPE_LATEST_RELEASE_DATE_pn-xauth="2009/09/21"
+RECIPE_LATEST_RELEASE_DATE_pn-xauth="2010/09/24"
 RECIPE_INTEL_SECTION_pn-xauth="graphic app"
 RECIPE_MAINTAINER_pn-xauth="Yu Ke <ke.yu@intel.com>"
 
@@ -3456,10 +3456,10 @@ RECIPE_MAINTAINER_pn-xkbcomp="Yu Ke <ke.yu@intel.com>"
 DISTRO_PN_ALIAS_pn-xkbcomp = "Ubuntu=x11-xkb-utils Fedora=xorg-x11-xkb-utils"
 
 RECIPE_STATUS_pn-xmodmap="green" # no update needed
-RECIPE_LATEST_VERSION_pn-xmodmap="1.0.4"
+RECIPE_LATEST_VERSION_pn-xmodmap="1.0.5"
 RECIPE_NO_OF_PATCHES_pn-xmodmap="0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xmodmap="2 years"
-RECIPE_LATEST_RELEASE_DATE_pn-xmodmap="2009/10/06"
+RECIPE_LATEST_RELEASE_DATE_pn-xmodmap="2010/09/24"
 RECIPE_INTEL_SECTION_pn-xmodmap="graphic app"
 RECIPE_MAINTAINER_pn-xmodmap="Yu Ke <ke.yu@intel.com>"
 DISTRO_PN_ALIAS_pn-xmodmap = "Meego=xorg-x11-utils-xmodmap Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils"
@@ -3475,18 +3475,18 @@ DISTRO_PN_ALIAS_pn-xprop = "Meego=xorg-x11-utils-xprop Fedora=xorg-x11-utils Ubu
 
 RECIPE_STATUS_pn-xset="green" # no update needed
 DISTRO_PN_ALIAS_pn-xset = "Fedora=xorg-x11-server-utils Ubuntu=x11-xserver-utils Debian=x11-xserver-utils Opensuse=xorg-x11"
-RECIPE_LATEST_VERSION_pn-xset="1.1.0"
+RECIPE_LATEST_VERSION_pn-xset="1.2.1"
 RECIPE_NO_OF_PATCHES_pn-xset="1"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xset="1 year"
-RECIPE_LATEST_RELEASE_DATE_pn-xset="2009/09/21"
+RECIPE_LATEST_RELEASE_DATE_pn-xset="2010/11/11"
 RECIPE_INTEL_SECTION_pn-xset="graphic app"
 RECIPE_MAINTAINER_pn-xset="Yu Ke <ke.yu@intel.com>"
 
 RECIPE_STATUS_pn-xwininfo="green" # no update needed
-RECIPE_LATEST_VERSION_pn-xwininfo="1.0.5"
+RECIPE_LATEST_VERSION_pn-xwininfo="1.1.1"
 RECIPE_NO_OF_PATCHES_pn-xwininfo="0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xwininfo="1 year"
-RECIPE_LATEST_RELEASE_DATE_pn-xwininfo="2009/10/12"
+RECIPE_LATEST_RELEASE_DATE_pn-xwininfo="2010/10/30"
 RECIPE_INTEL_SECTION_pn-xwininfo="graphic app"
 RECIPE_MAINTAINER_pn-xwininfo="Yu Ke <ke.yu@intel.com>"
 DISTRO_PN_ALIAS_pn-xwininfo = "Fedora=xorg-x11-utils Ubuntu=x11-utils"
@@ -3600,19 +3600,19 @@ RECIPE_MAINTAINER_pn-xf86-input-keyboard="Yu Ke <ke.yu@intel.com>"
 
 RECIPE_STATUS_pn-xf86-input-mouse="green" # no update needed
 DISTRO_PN_ALIAS_pn-xf86-input-mouse = "Ubuntu=xserver-xorg-input-mouse Mandriva=x11-driver-input-mouse Debian=xserver-xorg-input-mouse"
-RECIPE_LATEST_VERSION_pn-xf86-input-mouse="1.5.0"
+RECIPE_LATEST_VERSION_pn-xf86-input-mouse="1.6.0"
 RECIPE_NO_OF_PATCHES_pn-xf86-input-mouse="0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xf86-input-mouse="9 monthes"
-RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-mouse="2009/10/06"
+RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-mouse="2010/09/09"
 RECIPE_INTEL_SECTION_pn-xf86-input-mouse="graphic core"
 RECIPE_MAINTAINER_pn-xf86-input-mouse="Yu Ke <ke.yu@intel.com>"
 
-RECIPE_STATUS_pn-xf86-input-vmmouse="red" # update needed
+RECIPE_STATUS_pn-xf86-input-vmmouse="green" # update needed
 DISTRO_PN_ALIAS_pn-xf86-input-vmmouse = "Fedora=xorg-x11-drv-vmmouse Ubuntu=xserver-xorg-input-vmmouse Mandriva=x11-driver-input-vmmouse Debian=xserver-xorg-input-vmmouse"
-RECIPE_LATEST_VERSION_pn-xf86-input-vmmouse="12.6.9"
+RECIPE_LATEST_VERSION_pn-xf86-input-vmmouse="12.6.10"
 RECIPE_NO_OF_PATCHES_pn-xf86-input-vmmouse="0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xf86-input-vmmouse="1 month"
-RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-vmmouse="2010/04/08"
+RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-vmmouse="2010/08/10"
 RECIPE_INTEL_SECTION_pn-xf86-input-vmmouse="graphic core"
 RECIPE_MAINTAINER_pn-xf86-input-vmmouse="Yu Ke <ke.yu@intel.com>"
 
@@ -3643,19 +3643,19 @@ RECIPE_MAINTAINER_pn-libxfontcache="Yu Ke <ke.yu@intel.com>"
 
 RECIPE_STATUS_pn-xf86-input-evdev="green" # no update needed
 DISTRO_PN_ALIAS_pn-xf86-input-evdev = "Ubuntu=xserver-xorg-input-evdev Mandriva=x11-driver-input-evdev Debian=xserver-xorg-input-evdev Fedora=xorg-x11-drv-evdev Meego=xorg-x11-drv-evdev
-RECIPE_LATEST_VERSION_pn-xf86-input-evdev="2.4.0"
+RECIPE_LATEST_VERSION_pn-xf86-input-evdev="2.5.0"
 RECIPE_NO_OF_PATCHES_pn-xf86-input-evdev="0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xf86-input-evdev="1 monthes"
-RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-evdev="2010/04/06"
+RECIPE_LATEST_RELEASE_DATE_pn-xf86-input-evdev="2010/08/23"
 RECIPE_INTEL_SECTION_pn-xf86-input-evdev="graphic core"
 RECIPE_MAINTAINER_pn-xf86-input-evdev="Yu Ke <ke.yu@intel.com>"
 
 RECIPE_STATUS_pn-xf86-video-vmware="green" # no update needed
 DISTRO_PN_ALIAS_pn-xf86-video-vmware = "Debian=xserver-xorg-video-vmware Fedora=xorg-x11-drv-vmware Mandriva=x11-driver-video-vmware Ubuntu=xserver-xorg-video-vmware"
-RECIPE_LATEST_VERSION_pn-xf86-video-vmware="11.0.1"
+RECIPE_LATEST_VERSION_pn-xf86-video-vmware="11.0.3"
 RECIPE_NO_OF_PATCHES_pn-xf86-video-vmware="0"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-xf86-video-vmware="2 monthes"
-RECIPE_LATEST_RELEASE_DATE_pn-xf86-video-vmware="2010/03/18"
+RECIPE_LATEST_RELEASE_DATE_pn-xf86-video-vmware="2010/11/09"
 RECIPE_INTEL_SECTION_pn-xf86-video-vmware="graphic core"
 RECIPE_MAINTAINER_pn-xf86-video-vmware="Yu Ke <ke.yu@intel.com>"
 
-- 
1.7.0.4


