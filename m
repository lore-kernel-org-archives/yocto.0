Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46ED7E0137A
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:09 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2389509dad.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=tmYcRaCxieeNlYG8gUHHDMXVBK2MAnsldQwsiqxxetI=;
	b=dR/QhS7HTJd68oSpMXP+jRY6uQtmMXiUPEe4iPJmf/IVkfo4yQ7rnPZ55Coiw13CqV
	cTftPocdcjXtMBc0AAEhLfMxQmJ4MFOIIox3LynbQuFNFT7uvkKro06uiZj3rdezpfDH
	QhDDAOTaewF7ORaVoX2ZtHATjhi11Ft7JHyM3eVO0ABh1RWoCrDzy7UWs2jYWvEzK5/x
	l30MI24XzNjJLM1hyZKHLY5IAHR9WmJq8kxgELXiPvOwbM+7HVdJ7z084EUITZhYFcmV
	+3wcSp6p1P1NmBe1ZRJpj8980ZsZXnDtlvtF167vqOxu0yx2jvYsdBbIOC+HCms8vXVD
	8Hgg==
Received: by 10.68.227.197 with SMTP id sc5mr1856695pbc.58.1337984469043;
	Fri, 25 May 2012 15:21:09 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ok6sm1013752pbb.29.2012.05.25.15.21.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:21:08 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 25 May 2012 15:20:52 -0700
Message-Id: <29a09574fa85973f46c5fbe5f39519b1a4ebece5.1337984389.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnMeaUMB+duZKgCghU6pLLX54eU6w1iJAsJQqDeXbblc1aqcwEThe15gekqQ9GfqM7HjjY3
Subject: [PATCH 1/6] fri2: Configuration update (usb, wifi, i2c)
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
X-List-Received-Date: Fri, 25 May 2012 22:21:09 -0000

o Make use of the new USB HCD fragments
o Drop the unused iwlagn driver
o Add the i2c gpio and accelerometer devices

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |   14 ++++++++------
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    7 +++++--
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
index 97ceecd..785877b 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
@@ -8,15 +8,9 @@ CONFIG_ATA=y
 CONFIG_PCI=y
 CONFIG_MMC=y
 CONFIG_MMC_SDHCI=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB=y
-CONFIG_USB_ARCH_HAS_EHCI=y
 CONFIG_MMC_SDHCI_PCI=y
-CONFIG_USB_EHCI_HCD=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_NET=y
-CONFIG_USB_UHCI_HCD=y
-CONFIG_USB_OHCI_HCD=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_CHR_DEV_SG=y
 CONFIG_SOUND=y
@@ -50,3 +44,11 @@ CONFIG_BT=y
 # Intel 6205 ABGN
 # Build as a module to avoid having to install the firmware into the initrd
 CONFIG_IWLWIFI=m
+
+# I2C GPIO
+CONFIG_GPIO_PCA953X=y
+# I2C Accelerometer
+CONFIG_MISC_DEVICES=y
+CONFIG_I2C=y
+CONFIG_INPUT=y
+CONFIG_SENSORS_LIS3_I2C=y
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
index 93814bc..36bb805 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -6,9 +6,12 @@ include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include cfg/dmaengine.scc
 include features/ericsson-3g/f5521gw.scc
-include features/iwlagn/iwlagn.scc
 include cfg/vesafb.scc
-include cfg/usb-mass-storage.scc
 include features/power/intel.scc
 include cfg/smp.scc
 include cfg/efi.scc
+include features/usb/ehci-hcd.scc
+include features/usb/ohci-hcd.scc
+
+# FIXME: this isn't a BSP specific feature
+include cfg/usb-mass-storage.scc
-- 
1.7.5.4


