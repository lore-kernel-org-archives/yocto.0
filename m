Return-Path: <otavio.salvador@gmail.com>
Received: from mail-yh0-f54.google.com (mail-yh0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6123E003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 07:01:15 -0700 (PDT)
Received: by mail-yh0-f54.google.com with SMTP id f10so1473874yha.41
	for <yocto@yoctoproject.org>; Mon, 05 Aug 2013 07:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=wjx7UrneR2ujT89beKBr2wWlyNnXCbEAewe8fGqPb1s=;
	b=fBG0db1Rr1Rfo3BgFG26BUa3LpwvZXFLuXWO41+IcwHL2zIHLYAVv0Qe7CfOLNaay8
	l5cM9axe5jd93PG0H+aWpd/mHfUetODV9MQREqJkVQzHa/ieTFNVX/xXV4L2Rn+XI4vS
	PjQ33oFanbS+mCAjfXAnTJhM9tdNvkxNrvtAMxC0aqLzgu/PjPPrUesNbKFYG/eMzHGa
	tZAens3GQ4bqvna0e2XpaQaCtwTRVuWkT/CMzpCQN+xrPKEBSHkYl4GyKaW4BFiFW5Us
	RgM7QTvW4jesiGqcrbQPFPgWYVhhjvkqMWcGwxrBi/85Ss97pII5ExFWj3TggyR/+WWE
	4eqg==
X-Received: by 10.236.99.38 with SMTP id w26mr11014273yhf.239.1375711273908;
	Mon, 05 Aug 2013 07:01:13 -0700 (PDT)
Received: from nano.lab.ossystems.com.br ([187.23.155.55])
	by mx.google.com with ESMTPSA id
	g66sm36766537yhd.11.2013.08.05.07.01.11 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 05 Aug 2013 07:01:13 -0700 (PDT)
Sender: Otavio Salvador <otavio.salvador@gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Mon,  5 Aug 2013 11:00:57 -0300
Message-Id: <1375711257-18041-1-git-send-email-otavio@ossystems.com.br>
X-Mailer: git-send-email 1.8.3.2
Cc: Evan Kotara <evan.kotara@freescale.com>,
	Lauren Post <lauren.post@freescale.com>,
	Otavio Salvador <otavio@ossystems.com.br>,
	Daiane Angolini <daiane.angolini@freescale.com>
Subject: [PATCH] poky.conf: Don't force the addition of extra DISTRO_FEATURES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 05 Aug 2013 14:01:17 -0000

The DISTRO_FEATURES shouldn't unconditionally append items to it. This
makes it impossible to override it inside of local.conf or in a distro
based on Poky.

This moved the definition to poky.conf and created a new variable
(POKY_DEFAULT_DISTRO_FEATURES) which easy overriding of this, for Poky
based distros.

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
 meta-yocto/conf/distro/poky.conf | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 7be7d92..3538588 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -12,7 +12,12 @@ TARGET_VENDOR = "-poky"
 LOCALCONF_VERSION = "1"
 LAYER_CONF_VERSION ?= "6"
 
-DISTRO_FEATURES_append = " largefile opengl multiarch wayland"
+# Override these in poky based distros
+POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl multiarch wayland"
+POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
+POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
+
+DISTRO_FEATURES ?= "alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
 PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.8%"
@@ -27,10 +32,6 @@ SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
 EXTRAOPKGCONFIG = "poky-feed-config-opkg"
 
-# Override these in poky based distros to modify DISTRO_EXTRA_R*
-POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
-POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
-
 DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
 DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 
-- 
1.8.3.2


