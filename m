Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23C67E011F3
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 04:40:58 -0700 (PDT)
Received: from mail-ee0-f72.google.com ([74.125.83.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 22 Oct 2012 04:40:31 -0700
Received: by mail-ee0-f72.google.com with SMTP id d17so1928049eek.11
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 04:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=GAMmQaEiHi6JoZkhe5hAiDbeIluNI3iizz8AXwPML3g=;
	b=ZdWIROjEl5X2Y6QAYe3WxyIHh2NjJj0AouD6NR88gUU/OWdeDjzX4eSJ88p4CN786P
	+opJvCgdGeR8uvJIjogcFjNLj39ooblViplixrrXBOpR4w4fCu7ToffUGVhDxWjRIpSf
	dORqYB4AdZgpQDwnQwdxhphBxDKv6G61nPXK5IFpfgJ4S9bsUumfJiRbmQ9861s2uFUL
	2LHWSm64bVMLYPc6d4vJbEn53tw5bKa2UxCtzXSAWvizVdD1PxnecMdync+qSE3/Fcgv
	Z4l0CK/Q6OB64PPCBYN9V5G3563q+hOFXFWIB2ELV44nCxSMq3wT1EtRxgJgDNaMem+0
	8+jg==
Received: by 10.180.82.72 with SMTP id g8mr35894924wiy.20.1350906055621;
	Mon, 22 Oct 2012 04:40:55 -0700 (PDT)
Received: by 10.180.82.72 with SMTP id g8mr35894907wiy.20.1350906055530;
	Mon, 22 Oct 2012 04:40:55 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id hb6sm13919061wib.7.2012.10.22.04.40.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 22 Oct 2012 04:40:54 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Oct 2012 12:39:44 +0100
Message-Id: <1350905984-17621-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQmw25D57KUAWd/akAfHaxVPrSC5gMSd2FSotb7digTZ50UDRgQflZB1gGKAck4WoSP/7D6DsTLNfZfDLoFhT7pp+fu4geNcZpjKGZ7z2x5vxFT8XhdbPT4FtCJBJFwIhZn0/mFuAZb7YKQzxPGcvvrXGdbANA==
Cc: dvhart@linux.intel.com
Subject: [PATCH] meta-intel: don't require commercial licenses for gstreamer-vaapi
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
X-List-Received-Date: Mon, 22 Oct 2012 11:40:58 -0000

Now that gstreamer-vaapi doesn't depend on ffmpeg, it can always be recommended
by the machine configuration.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    3 +--
 meta-chiefriver/conf/machine/chiefriver.conf |    3 +--
 meta-crownbay/conf/machine/crownbay.conf     |    3 +--
 meta-fri2/conf/machine/fri2.conf             |    3 +--
 meta-sugarbay/conf/machine/sugarbay.conf     |    3 +--
 meta-sys940x/conf/machine/sys940x.conf       |    3 +--
 6 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index ea50ea6..d8b6bc0 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -22,7 +22,6 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "", d)}"
+VA_FEATURES = "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index a9c8e5a..b8b8754 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -15,7 +15,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "", d)}"
+VA_FEATURES = "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES} lms"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 72431de..d56ef64 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -23,7 +23,6 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 APPEND += "video=vesafb vga=0x318 vmalloc=256MB"
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
+VA_FEATURES = "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index dff11a8..587b976 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -8,8 +8,7 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 require conf/machine/include/meta-intel.inc
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
+VA_FEATURES = "gst-va-intel va-intel"
 
 MACHINE_FEATURES += "wifi 3g pcbios efi va-impl-mixvideo"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 17cc15c..1d0e68d 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -16,7 +16,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "", d)}"
+VA_FEATURES = "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index bdd655f..eefca59 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -26,7 +26,6 @@ PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
+VA_FEATURES = "gst-va-intel va-intel"
 
 MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
-- 
1.7.10


