Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FA40E01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:13 -0700 (PDT)
Received: by mail-pz0-f48.google.com with SMTP id z8so2389509dad.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=KC1XJipECCCUAPdbuyPv6Esxc5H1O1NYhQhMtbMBkYc=;
	b=lYAyWpLmBVbyqhC4dtsK+0BIdteA8TiR55xHAmiw1jzBs0iS/LN8z0cfNvx2vWZjcS
	9maMnwlpVZXqGuwJ7CPfPm0emCfQEC1ZOdsq1LhQANEmZUrrFWe+cNgK9ycPjlapwj+h
	yal9nBVPgs2lIkiQmyGDa0xRnuDVt+UsrvwwTKc3Xbqg1q5e9b9e4Nb5I+XZX0MJCE8g
	2VbN0FFR3uDaB1t9IuAykI1NqKvuyro8VegRTN8mlDxCRvL6AkewvPlV/xrYzFifpMdG
	PaNQgW7KsAHWcZz4/P2rXmcuO5JA8c9BsKkuvLpNEUW6XbokmZOxQMM9PXm7IZG7S3yF
	+RfQ==
Received: by 10.68.217.100 with SMTP id ox4mr992517pbc.87.1337984472901;
	Fri, 25 May 2012 15:21:12 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id sy3sm10347802pbc.0.2012.05.25.15.21.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:21:12 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 25 May 2012 15:20:55 -0700
Message-Id: <d6936fc8c3d4855b0873a1b3e894e1718413ff4c.1337984389.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmKnLpX9wOv3O72X/6Hsp3ED6T5X0yGv07CtJCoRDBhaHwo7xx6N4Tu95/gcAeufOjFptfX
Subject: [PATCH 4/6] fri2 update: drop NETDEVICE, e1xxx, usb-mass-storage, add iwlwifi feature
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
X-List-Received-Date: Fri, 25 May 2012 22:21:13 -0000

Drop support for hardware that isn't present on the FRI2 or that is included by
other features (such as usb-mass-storage).

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |    5 -----
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    6 +-----
 2 files changed, 1 insertions(+), 10 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
index 785877b..751956d 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
@@ -3,7 +3,6 @@ CONFIG_MATOM=y
 CONFIG_PRINTK=y
 
 # Basic hardware support for the box - network, USB, PCI, sound
-CONFIG_NETDEVICES=y
 CONFIG_ATA=y
 CONFIG_PCI=y
 CONFIG_MMC=y
@@ -41,10 +40,6 @@ CONFIG_IEEE802154=y
 # Bluetooth Support
 CONFIG_BT=y
 
-# Intel 6205 ABGN
-# Build as a module to avoid having to install the firmware into the initrd
-CONFIG_IWLWIFI=m
-
 # I2C GPIO
 CONFIG_GPIO_PCA953X=y
 # I2C Accelerometer
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index 36bb805..3af8092 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -1,8 +1,6 @@
 kconf hardware fri2.cfg
 
 include features/eg20t/eg20t.scc
-include features/intel-e1xxxx/intel-e100.scc
-include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include cfg/dmaengine.scc
 include features/ericsson-3g/f5521gw.scc
@@ -12,6 +10,4 @@ include cfg/smp.scc
 include cfg/efi.scc
 include features/usb/ehci-hcd.scc
 include features/usb/ohci-hcd.scc
-
-# FIXME: this isn't a BSP specific feature
-include cfg/usb-mass-storage.scc
+include features/iwlwifi/iwlwifi.scc
-- 
1.7.5.4


