Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB31EE01432
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:15 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so3054677pbb.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=r0HcI1m6bCcdM2iQyvgJWdmC8lxyX2v26xSxT9G8aeY=;
	b=SyKvblEK5FbVdXXHhuRm9i7dQGQSG1S+QiIcG+s59HAKkcjNGkRbuPv1gmNAfUJWiJ
	PgwrwQnY3dou0I16oSpiVvnMVSgAkZ5Md3neqfW3PlBcpTvDcrVD5cEe9B4vw8/U/l5n
	iGqZJ/fzDmbDkJvDyHXl/1gBZRCSM+sNGkBaZRA6LSB+8Nx1MPUXMF+Kj/dZj/a2NfP1
	g12UIr3xQo/wi454BF6iaeVIshcBIQ6QvXcQOHE7M9kek8kYUNBxqNdT5XIMGqUA/kzL
	r/8XKujaBEQf37X2MhJ5IoEzBEnWV7BT9gIlnZsZt6u8RLLngILYhdE07c2ALEiqrS8Q
	IsZA==
Received: by 10.68.235.102 with SMTP id ul6mr1314402pbc.152.1337984475629;
	Fri, 25 May 2012 15:21:15 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id px4sm10344232pbb.53.2012.05.25.15.21.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:21:15 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 25 May 2012 15:20:57 -0700
Message-Id: <1aabe375a76ec95e7309bd99c60383433924bc89.1337984389.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnmscwAgtYdt4APKMX8f7X9C9uffdb6rGxYdlBWPNHwpHJE0l7kIBcm3FxCsE0D7XiIt8xI
Subject: [PATCH 6/6] fri2: update base config
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
X-List-Received-Date: Fri, 25 May 2012 22:21:15 -0000

Include the USB CDC_NCM driver as built-in. Comment out i2c features that are
not yet ready for use.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg |   18 ++++++++++--------
 1 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
index 751956d..586308e 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
@@ -34,16 +34,18 @@ CONFIG_PACKET=y
 
 # Enable FRI2 Specific Hardware
 # Zigbee 802.15.4 Support
+CONFIG_USB_CDC_NCM=y
 CONFIG_IEEE802154=y
-# CONFIG_IEEE802154_6LOWPAN is not set
+CONFIG_IEEE802154_6LOWPAN=y
 
 # Bluetooth Support
 CONFIG_BT=y
 
-# I2C GPIO
-CONFIG_GPIO_PCA953X=y
-# I2C Accelerometer
-CONFIG_MISC_DEVICES=y
-CONFIG_I2C=y
-CONFIG_INPUT=y
-CONFIG_SENSORS_LIS3_I2C=y
+# FRI2 CPLD I2C bus and devices
+#CONFIG_I2C=y
+#CONFIG_I2C_BOARDINFO=y
+#CONFIG_I2C_CHARDEV=y
+#CONFIG_I2C_KEMPLD=y
+#CONFIG_GPIO_PCA953X=y
+#CONFIG_GPIO_PCA9555_FRI2=y
+#CONFIG_LIS331DLH=y
-- 
1.7.5.4


