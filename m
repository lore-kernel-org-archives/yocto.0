Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B285FE00A38; Sun, 28 May 2017 22:03:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB84E00920
	for <yocto@yoctoproject.org>; Sun, 28 May 2017 22:03:50 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id BC332102151;
	Mon, 29 May 2017 14:04:54 +0900 (JST)
From: Randy Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 29 May 2017 13:03:39 +0800
Message-Id: <20170529050339.11203-4-ayaka@soulik.info>
X-Mailer: git-send-email 2.9.4
In-Reply-To: <20170529050339.11203-1-ayaka@soulik.info>
References: <20170529050339.11203-1-ayaka@soulik.info>
Cc: Randy Li <ayaka@soulik.info>
Subject: [PATCH v4 3/3] recipes-multimedia: images: add rockchip media image
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
X-List-Received-Date: Mon, 29 May 2017 05:03:52 -0000

A image for debugging the hardware video encoder/decoder.
I also use this image for developing the Gstreamer.

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 recipes-multimedia/images/rockchip-media-image.bb | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-multimedia/images/rockchip-media-image.bb

diff --git a/recipes-multimedia/images/rockchip-media-image.bb b/recipes-multimedia/images/rockchip-media-image.bb
new file mode 100644
index 0000000..ea993c1
--- /dev/null
+++ b/recipes-multimedia/images/rockchip-media-image.bb
@@ -0,0 +1,21 @@
+# Copyright (C) 2017 Randy Li <ayaka@soulik.info>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+include recipes-core/images/core-image-minimal.bb
+
+LICENSE = "MIT"
+DESCRIPTION = "Multimedia image for Rockchip devices."
+
+IMAGE_FEATURES_append = " package-management ssh-server-dropbear"
+IMAGE_INSTALL_append = " gdbserver gstreamer1.0-rockchip      \
+ gstreamer1.0-meta-base gstreamer1.0-meta-video gstreamer1.0-meta-audio \
+ gstreamer1.0-plugins-good-isomp4 gstreamer1.0-plugins-good-multifile \
+ gstreamer1.0-plugins-good-imagefreeze \
+ gstreamer1.0-plugins-bad-autoconvert  gstreamer1.0-plugins-bad-camerabin2 \
+ gstreamer1.0-plugins-bad-kmssink gstreamer1.0-plugins-bad-rawparse \
+ gstreamer1.0-plugins-bad-videoparsersbad \
+ gstreamer1.0-plugins-bad-mpegtsdemux \
+ gstreamer1.0-meta-debug \
+"
+
+TOOLCHAIN_HOST_TASK += "nativesdk-cmake"
-- 
2.9.4


