Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD505E0141C
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 13:17:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2012 13:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,428,1344236400"; d="scan'208";a="222507209"
Received: from unknown (HELO localhost) ([10.255.13.77])
	by fmsmga002.fm.intel.com with ESMTP; 15 Sep 2012 13:17:08 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat, 15 Sep 2012 15:17:04 -0500
Message-Id: <2231d3800e94e39a6cc77473c6654cb221e7e55b.1347739624.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1347739624.git.tom.zanussi@intel.com>
References: <cover.1347739624.git.tom.zanussi@intel.com>
Subject: [PATCH 1/4] meta-intel: make video acceleration choice dependent on LICENSE_FLAGS
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
X-List-Received-Date: Sat, 15 Sep 2012 20:17:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The gst-ffmpeg recipe in oe-core had LICENSE_FLAGS added to make it
"commercial", so to avoid build errors the BSPs that use it (via the
gst-va-intel VA_FEATURE) should only include it if the user has added
"commercial" to LICENSE_FLAGS_WHITELIST when building.

This adds a conditional to detect that, along with a NOTE in the
README to explain the need for the flag.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-cedartrail/README                       | 15 +++++++++++++++
 meta-cedartrail/conf/machine/cedartrail.conf |  3 ++-
 meta-chiefriver/README                       | 15 +++++++++++++++
 meta-chiefriver/conf/machine/chiefriver.conf |  3 ++-
 meta-crownbay/README                         | 15 +++++++++++++++
 meta-crownbay/conf/machine/crownbay.conf     |  3 ++-
 meta-fri2/README                             | 15 +++++++++++++++
 meta-fri2/conf/machine/fri2.conf             |  3 ++-
 meta-sugarbay/README                         | 15 +++++++++++++++
 meta-sugarbay/conf/machine/sugarbay.conf     |  3 ++-
 meta-sys940x/README                          | 15 +++++++++++++++
 meta-sys940x/conf/machine/sys940x.conf       |  3 ++-
 12 files changed, 102 insertions(+), 6 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index e47151e..81a1260 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -88,6 +88,21 @@ At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
 
+NOTE: The 'cedartrail' machine will include support for hardware video
+acceleration via gstreamer if and only if the "commercial" string is
+added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
+
+For example:
+
+  LICENSE_FLAGS_WHITELIST = "license_cdv-pvr-driver_1.0.3 commercial"
+
+The reason this is needed is to prevent the image from including
+anything that might violate the license terms of the packages used to
+implement the the video acceleration feature, such as gst-ffmpeg and
+ffmpeg.  As always, please consult the licenses included in the
+specific packages for details if you use packages that require
+particular LICENSE_FLAGS.
+
 As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index cd9acd7..33af012 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -22,6 +22,7 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES ?= "gst-va-intel va-intel"
+VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
+	    "commercial", "gst-va-intel va-intel", "", d)}"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-chiefriver/README b/meta-chiefriver/README
index 49e4461..438c293 100644
--- a/meta-chiefriver/README
+++ b/meta-chiefriver/README
@@ -60,6 +60,21 @@ At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
 
+NOTE: The 'chiefriver' machine will include support for hardware video
+acceleration via gstreamer if and only if the "commercial" string is
+added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
+
+For example:
+
+  LICENSE_FLAGS_WHITELIST = "commercial"
+
+The reason this is needed is to prevent the image from including
+anything that might violate the license terms of the packages used to
+implement the the video acceleration feature, such as gst-ffmpeg and
+ffmpeg.  As always, please consult the licenses included in the
+specific packages for details if you use packages that require
+particular LICENSE_FLAGS.
+
 As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index 6d8d3a5..a9c8e5a 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -15,6 +15,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES ?= "gst-va-intel va-intel"
+VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
+	    "commercial", "gst-va-intel va-intel", "", d)}"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES} lms"
diff --git a/meta-crownbay/README b/meta-crownbay/README
index 2521432..f7aeffa 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -92,6 +92,21 @@ At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
 
+NOTE: The 'crownbay' machine will include support for hardware video
+acceleration via gstreamer if and only if the "commercial" string is
+added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
+
+For example:
+
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14 commercial"
+
+The reason this is needed is to prevent the image from including
+anything that might violate the license terms of the packages used to
+implement the the video acceleration feature, such as gst-ffmpeg and
+ffmpeg.  As always, please consult the licenses included in the
+specific packages for details if you use packages that require
+particular LICENSE_FLAGS.
+
 As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index c4b7682..40dbd1d 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -23,6 +23,7 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 APPEND += "video=vesafb vga=0x318"
 
-VA_FEATURES ?= "gst-va-intel va-intel"
+VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
+	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-fri2/README b/meta-fri2/README
index 2208392..a866174 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -113,6 +113,21 @@ At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
 
+NOTE: The 'fri2' machine will include support for hardware video
+acceleration via gstreamer if and only if the "commercial" string is
+added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
+
+For example:
+
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10 commercial"
+
+The reason this is needed is to prevent the image from including
+anything that might violate the license terms of the packages used to
+implement the the video acceleration feature, such as gst-ffmpeg and
+ffmpeg.  As always, please consult the licenses included in the
+specific packages for details if you use packages that require
+particular LICENSE_FLAGS.
+
 As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 56408f7..bf7754f 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -8,7 +8,8 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 require conf/machine/include/meta-intel.inc
 
-VA_FEATURES ?= "gst-va-intel va-intel"
+VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
+	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
 
 MACHINE_FEATURES += "wifi 3g pcbios efi va-impl-mixvideo"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
diff --git a/meta-sugarbay/README b/meta-sugarbay/README
index 413b2ab..80833c1 100644
--- a/meta-sugarbay/README
+++ b/meta-sugarbay/README
@@ -71,6 +71,21 @@ At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
 
+NOTE: The 'sugarbay' machine will include support for hardware video
+acceleration via gstreamer if and only if the "commercial" string is
+added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
+
+For example:
+
+  LICENSE_FLAGS_WHITELIST = "commercial"
+
+The reason this is needed is to prevent the image from including
+anything that might violate the license terms of the packages used to
+implement the the video acceleration feature, such as gst-ffmpeg and
+ffmpeg.  As always, please consult the licenses included in the
+specific packages for details if you use packages that require
+particular LICENSE_FLAGS.
+
 As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 616c2c5..17cc15c 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -16,6 +16,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES ?= "gst-va-intel va-intel"
+VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
+	    "commercial", "gst-va-intel va-intel", "", d)}"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-sys940x/README b/meta-sys940x/README
index b030faf..9058937 100644
--- a/meta-sys940x/README
+++ b/meta-sys940x/README
@@ -96,6 +96,21 @@ At the end of a successful build, you should have a live image that
 you can boot from a USB flash drive (see instructions on how to do
 that below, in the section 'Booting the images from /binary').
 
+NOTE: The 'sys940x' machine will include support for hardware video
+acceleration via gstreamer if and only if the "commercial" string is
+added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
+
+For example:
+
+  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10 commercial"
+
+The reason this is needed is to prevent the image from including
+anything that might violate the license terms of the packages used to
+implement the the video acceleration feature, such as gst-ffmpeg and
+ffmpeg.  As always, please consult the licenses included in the
+specific packages for details if you use packages that require
+particular LICENSE_FLAGS.
+
 As an alternative to downloading the BSP tarball, you can also work
 directly from the meta-intel git repository.  For each BSP in the
 'meta-intel' repository, there are multiple branches, one
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 9db2b2a..f71bb3a 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -25,6 +25,7 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES ?= "gst-va-intel va-intel"
+VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
+	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
-- 
1.7.11.4


