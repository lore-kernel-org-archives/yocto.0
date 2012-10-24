Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF2FFE00533
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 06:30:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Oct 2012 06:30:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,639,1344236400"; d="scan'208";a="239504164"
Received: from unknown (HELO localhost) ([10.255.14.143])
	by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2012 06:30:51 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Wed, 24 Oct 2012 08:30:50 -0500
Message-Id: <d9037bc868e67e785495e15e837a66385cb0062c.1351085269.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1351085269.git.tom.zanussi@intel.com>
References: <cover.1351085269.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: fix VA_FEATURES assignment in machine configs
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
X-List-Received-Date: Wed, 24 Oct 2012 13:30:53 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

commit 2231d38 (meta-intel: make video acceleration choice dependent
on LICENSE_FLAGS) inadvertently also changed '?=' to a hard
assignment, making it hard to override as intended.  This changes it
back.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf | 2 +-
 meta-chiefriver/conf/machine/chiefriver.conf | 2 +-
 meta-crownbay/conf/machine/crownbay.conf     | 2 +-
 meta-fri2/conf/machine/fri2.conf             | 2 +-
 meta-sugarbay/conf/machine/sugarbay.conf     | 2 +-
 meta-sys940x/conf/machine/sys940x.conf       | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index d8b6bc0..1463ae2 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -22,6 +22,6 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES = "gst-va-intel va-intel"
+VA_FEATURES ?= "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index b8b8754..6d8d3a5 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -15,6 +15,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES = "gst-va-intel va-intel"
+VA_FEATURES ?= "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES} lms"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index d56ef64..624ca56 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -23,6 +23,6 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 APPEND += "video=vesafb vga=0x318 vmalloc=256MB"
 
-VA_FEATURES = "gst-va-intel va-intel"
+VA_FEATURES ?= "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index 587b976..19f2fb0 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -8,7 +8,7 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 require conf/machine/include/meta-intel.inc
 
-VA_FEATURES = "gst-va-intel va-intel"
+VA_FEATURES ?= "gst-va-intel va-intel"
 
 MACHINE_FEATURES += "wifi 3g pcbios efi va-impl-mixvideo"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 1d0e68d..616c2c5 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -16,6 +16,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES = "gst-va-intel va-intel"
+VA_FEATURES ?= "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index eefca59..44de796 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -26,6 +26,6 @@ PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES = "gst-va-intel va-intel"
+VA_FEATURES ?= "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
-- 
1.7.11.4


