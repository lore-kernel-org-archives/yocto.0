Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4321AE00971; Sat,  5 Nov 2016 21:23:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79C0E006D2
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:23:10 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id y68so12385686pfb.1
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=cBLnedGaNmdlq/okHJ6i89tE4Ddpl8yYm6RSKfezCqo=;
	b=A8/T+WRB3CigJocN9lD31p23R7dvWduUYqoFuIq0seuwh9Zm315wH7PcZ9IjRhFTty
	onFcJm1CYMFDcTkfYSiWRYalnXIZhU/tr8t9rN4aiFPqMMyvNeakHc2sWBRmnj+YdyvW
	mgIwYQKC3YJC2ZrzX4E4pmqv+9DK6uPo2Z/OkvDI1YSUsPvbdiZ4mI4L+hVz/q5tmq+6
	sxNU/+R0toc9BaOxoXq9Sea3SiUKxXW6yxiQ+zICK2LX6L2v0KFqaFgm4IXv4D5WD8Bd
	4av8BgDQq5CrAdYYh2g4ki9/Uu9RX+fQigNwnv/Dp+0jjTcu+Y0wlNHsRtsTleFh1qir
	FtYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=cBLnedGaNmdlq/okHJ6i89tE4Ddpl8yYm6RSKfezCqo=;
	b=c4fRaOEiG07/+sC9EGJcIUyEy2Xk0ptGYvfVNq6JuDvudlFSLmo+hE/3LcAJnVdn6/
	IQJCYpJhOcPgOLursw5VRsyZOFBCLjqPGclOUPVRa4oMhaIPbHwV1BODs1JY2ew0tZ73
	7zgTAd34p3v2uehowCuCbVllQxXzTH4YCTJl4NUsmsioHAlag705iGAN1HbJACYU5Qnq
	KayqPpldmGr8+i2XrzjvtgzVgDKs03eqxFzhTFevw6jYT5wVIF81Uc3q7GNoK43Jyi2E
	8qXY99NsTlTWP/P2dCHXOGdd1Rl4GwRexujvNyxHOk42Mui8dItfDsEtYyaWUAU9Xe7E
	PVfA==
X-Gm-Message-State: ABUngvfWuA5ILUFWxMnEaqX2x4h+Zp12EPazrvumL3O3/drEBwXE/Y5bEDRC1WznA3TYAg==
X-Received: by 10.99.209.5 with SMTP id k5mr1212598pgg.13.1478406190194;
	Sat, 05 Nov 2016 21:23:10 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:09 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:23:03 -0700
Message-Id: <20161106042304.3357-7-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 6/7] Allow PACKAGECONFIG to configure libgdiplus
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
X-List-Received-Date: Sun, 06 Nov 2016 04:23:12 -0000

This changeset allows PACKAGECONFIG to determine the configuration of
libgdiplus as it applies to jpeg, gif, exif, and tiff.

Signed-off-by: Barry Grussling <barry@grussling.com>
---
 README.md                                    | 14 ++++++++++++--
 recipes-mono/libgdiplus/libgdiplus_2.10.8.bb |  8 +++++++-
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/README.md b/README.md
index 2adac04..0e25669 100644
--- a/README.md
+++ b/README.md
@@ -40,9 +40,19 @@ Feedback on testing with armhf would be appreciated and incorporated into this R
 
 ## Layer Dependencies
 
-The libgdiplus recipe has a dependency on the giflib recipe which is provided by the meta-oe layer.
+The libgdiplus recipe has a soft dependency on the giflib recipe which is provided by the meta-oe layer.
+These dependencies can be controlled using the PACKAGECONFIG feature of yocto.  libgdiplus
+recognizes the following options:
 
-Thus if this recipe is included in an image, for example when building core-image-mono, then
+"jpeg exif gif tiff"
+
+These can be controlled via the .bbappend mechanism or by adding:
+PACKAGECONFIG_pn-mono = ""
+PACKAGECONFIG_pn-mono-native = ""
+
+directives to the local.conf
+
+If this recipe is included in an image with gif enabled, for example when building core-image-mono, then
 conf/bblayers needs to be modified to include meta-oe, e.g.
 
 BBLAYERS = " \
diff --git a/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb b/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
index fecf7dc..75adfbf 100644
--- a/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
+++ b/recipes-mono/libgdiplus/libgdiplus_2.10.8.bb
@@ -6,6 +6,12 @@ SECTION = "libs"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fe7364dfce9f3689eb6995e7cdd56879"
 
+PACKAGECONFIG ??= "jpeg tiff gif exif"
+PACKAGECONFIG[jpeg] = "--with-libjpeg,--without-libjpeg,jpeg"
+PACKAGECONFIG[tiff] = "--with-libtiff,--without-libtiff,tiff"
+PACKAGECONFIG[gif] = "--with-libgif,--without-libgif,libgif"
+PACKAGECONFIG[exif] = "--with-libexif,--without-libexif,libexif"
+
 SRC_URI = "https://github.com/mono/libgdiplus/archive/${PV}.tar.gz \
            file://libgdiplus-2.10/cairo/configure.in.diff \
            file://libgdiplus-2.10/libgdiplus-2.10.1-libpng15.patch \
@@ -14,7 +20,7 @@ SRC_URI = "https://github.com/mono/libgdiplus/archive/${PV}.tar.gz \
 
 inherit autotools pkgconfig
 
-DEPENDS =+ "cairo freetype fontconfig libxft libpng jpeg tiff giflib libexif"
+DEPENDS =+ "cairo freetype fontconfig libxft libpng"
 
 SRC_URI[md5sum] = "6fd45bbb9843f5a8851b5f44e2a5dd04"
 SRC_URI[sha256sum] = "45c533dc72af0a24d1d3a8097873f5fe1670107fe7e6d08fb71ae586c87a0f1d"
-- 
2.10.2


