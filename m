Return-Path: <darren@apps.dvhart.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3800BE013C2
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 12:05:58 -0700 (PDT)
Received: by iagw33 with SMTP id w33so3597900iag.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 12:05:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=uVHbH2RBbdYr5uxlQRYqs9RiWa85GccgiTxBRQaL7DY=;
	b=KGzCYIJuflWJ8XZG0S8LfLwi1Pb3cB4lURRN/oAPg49l0fvOUSX69U4WWt4e7aLDEZ
	Bk5DTjhCewjVAO1MiHfLVpmq/ywWtp5BRJ2Yvx7ymfAnymKlxCFGcnIQH4r4Nd5Dq7Q4
	YJlqEhVb5uDK+sckp1uUul/jl0yczIneUI4v2uhm69X46xNAOBYjwvO8/nnuLpuyVxsj
	sPRNfCEJGscObp3BWGn0+KBoYjjQrHdku7pd6IDkyWTH90y+wPKvicGgocLQbzvnFoqv
	/Ip+I7aypvn+B3IN5udUpIUF62BQZHq/+fgFdgX4pJbllVyV0Aq/0s5fuTCUVqvWJCU/
	rh+A==
Received: by 10.50.183.137 with SMTP id em9mr13422171igc.58.1331751957875;
	Wed, 14 Mar 2012 12:05:57 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id al5sm4594786igc.5.2012.03.14.12.05.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 12:05:56 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2012 12:05:47 -0700
Message-Id: <62cc85275b7cd5aa9e58d4a3eefdb42d339d2bfa.1331751494.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1331751494.git.dvhart@linux.intel.com>
References: <cover.1331751494.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1331751494.git.dvhart@linux.intel.com>
References: <cover.1331751494.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnqk93eP+zVzPsoZCbCZiVxJTaW+vjssiWn4aq9hMbQBI+sVQLbj6WAdvygwb7hZrfQybVh
Subject: [PATCH 1/1] fri2: Update fri2.cfg for hardware specific support
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
X-List-Received-Date: Wed, 14 Mar 2012 19:05:58 -0000

The FRI2 does not require R8169 or PATA support. It does not need SFF
or GENERIC ATA options either.

The FRI2 does require IEEE802154 (Zigbee), BT (Bluetooth), and IWLWIFI.
The latter is compiled as a module to avoid the need for an initrd
containing the firmware blobs.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |   16 ++++++++++++----
 1 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
index b101419..97ceecd 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
@@ -5,16 +5,12 @@ CONFIG_PRINTK=y
 # Basic hardware support for the box - network, USB, PCI, sound
 CONFIG_NETDEVICES=y
 CONFIG_ATA=y
-CONFIG_ATA_GENERIC=y
-CONFIG_ATA_SFF=y
 CONFIG_PCI=y
 CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB=y
 CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_R8169=y
-CONFIG_PATA_SCH=y
 CONFIG_MMC_SDHCI_PCI=y
 CONFIG_USB_EHCI_HCD=y
 CONFIG_PCIEPORTBUS=y
@@ -42,3 +38,15 @@ CONFIG_MODULES=y
 CONFIG_SHMEM=y
 CONFIG_TMPFS=y
 CONFIG_PACKET=y
+
+# Enable FRI2 Specific Hardware
+# Zigbee 802.15.4 Support
+CONFIG_IEEE802154=y
+# CONFIG_IEEE802154_6LOWPAN is not set
+
+# Bluetooth Support
+CONFIG_BT=y
+
+# Intel 6205 ABGN
+# Build as a module to avoid having to install the firmware into the initrd
+CONFIG_IWLWIFI=m
-- 
1.7.5.4


