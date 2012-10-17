Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BB0E0027E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:36 -0700 (PDT)
Received: from mail-wi0-f182.google.com ([209.85.212.182])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 17 Oct 2012 08:22:35 -0700
Received: by mail-wi0-f182.google.com with SMTP id hm2so674012wib.11
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=n9vWcEwGYdDvQwpNm92o54Y2nmwWDUVUfU1yCcpPeXg=;
	b=cKm6sRB597v1iDNjxdjIdpQiQjWUcvGBomXGn/P7ZC1uSg0KeDj62fRvvqGzZfR/bD
	Tt1QeYnUS2mtyUtLqA2i3baEBSdfSHGCLzDg1XtFIoccSEzvPhbLiQ6p+uKCEbH8LRsL
	LLGdA96Kb6LL3SGxehuy8t7m7sNp37khHQfovHm2ZztwpnWs0qbDLo4/as6nxMCDiEoo
	sVkMZI9kSeihzFMjWVYQLxiiI2ggoTssbBDG4TwwRc8npenw+8YBgrLZGRzrA3L3RuoM
	MieDymDYzf9uRStWmVWyixj9p1A0d1GY4sM4L1jNGZ1TExLGyIwtrEPjJQPLAP5ZyQFD
	B5QA==
Received: by 10.180.94.226 with SMTP id df2mr4857599wib.11.1350487353244;
	Wed, 17 Oct 2012 08:22:33 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id z14sm3987242wiv.5.2012.10.17.08.22.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 17 Oct 2012 08:22:32 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com, nitin.a.kamble@intel.com, dvhart@linux.intel.com
Date: Wed, 17 Oct 2012 16:21:19 +0100
Message-Id: <1350487279-1681-4-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
References: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmpdkaP7CLQPO+gSMLBao7uCJ7Pqus54trEnZGfpFHuxcA7YRs93WiEOMFv14Ky4f7xuACo
Cc: yocto@yoctoproject.org
Subject: [PATCH 3/3] meta-intel: don't require commercial licenses for gstreamer-vaapi
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
X-List-Received-Date: Wed, 17 Oct 2012 15:22:36 -0000

Now that gstreamer-vaapi doesn't depend on ffmpeg, it can always be recommended
by the machine configuration.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    5 +----
 meta-chiefriver/conf/machine/chiefriver.conf |    5 +----
 meta-crownbay/conf/machine/crownbay.conf     |    5 +----
 meta-fri2/conf/machine/fri2.conf             |    5 +----
 meta-sugarbay/conf/machine/sugarbay.conf     |    5 +----
 meta-sys940x/conf/machine/sys940x.conf       |    5 +----
 6 files changed, 6 insertions(+), 24 deletions(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index ea50ea6..40920fe 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -22,7 +22,4 @@ SYSLINUX_OPTS = "serial 0 115200"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "", d)}"
-
-MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
+MACHINE_EXTRA_RRECOMMENDS += "gst-va-intel va-intel"
diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
index a9c8e5a..8074623 100644
--- a/meta-chiefriver/conf/machine/chiefriver.conf
+++ b/meta-chiefriver/conf/machine/chiefriver.conf
@@ -15,7 +15,4 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "", d)}"
-
-MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES} lms"
+MACHINE_EXTRA_RRECOMMENDS += "gst-va-intel va-intel lms"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 72431de..bc0b0f9 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -23,7 +23,4 @@ PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 APPEND += "video=vesafb vga=0x318 vmalloc=256MB"
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
-
-MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
+MACHINE_EXTRA_RRECOMMENDS += "gst-va-intel va-intel"
diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
index dff11a8..46fd7a7 100644
--- a/meta-fri2/conf/machine/fri2.conf
+++ b/meta-fri2/conf/machine/fri2.conf
@@ -8,11 +8,8 @@ require conf/machine/include/tune-atom.inc
 require conf/machine/include/ia32-base.inc
 require conf/machine/include/meta-intel.inc
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
-
 MACHINE_FEATURES += "wifi 3g pcbios efi va-impl-mixvideo"
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 gst-va-intel va-intel"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto = "3.4%"
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
index 17cc15c..3282fc8 100644
--- a/meta-sugarbay/conf/machine/sugarbay.conf
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -16,7 +16,4 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            ${XSERVER_IA32_I965} \
            "
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "", d)}"
-
-MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
+MACHINE_EXTRA_RRECOMMENDS += "gst-va-intel va-intel"
diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index bdd655f..7e0d289 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -26,7 +26,4 @@ PREFERRED_VERSION_emgd-driver-bin ?= "1.14"
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"
 
-VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
-	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
-
-MACHINE_EXTRA_RRECOMMENDS += "${VA_FEATURES}"
+MACHINE_EXTRA_RRECOMMENDS += "gst-va-intel va-intel"
-- 
1.7.10


