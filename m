Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4661AE00DFC; Tue, 12 Nov 2019 11:48:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD8E2E00DCE
	for <yocto@lists.yoctoproject.org>;
	Tue, 12 Nov 2019 11:48:18 -0800 (PST)
Received: by mail-io1-f65.google.com with SMTP id j13so20146144ioe.0
	for <yocto@lists.yoctoproject.org>;
	Tue, 12 Nov 2019 11:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=62gZYUH9IRO/x0JdDLAeQMPEN5k1DwOm4aQopAm9HR8=;
	b=b3gF6ZHchstTk5PLkJ1ikai3XpSmwFDHglaV477NwA5IdDmlrBNq1eITWnLKYCUBV1
	Hhy1WqU0WyBeEHHNpOGJrcgnRg0obRiHSaGkly3SFYlpJDhg3RWIwVTwJkEMKskfnP4x
	OLNNypVD6ZTsGz3YOvpoCmhzDRodBIhpYOPlk+p/95flnghfYmx3lpTUabgxGpCVVMGo
	lhw87bnEF1XG2IeaOQsWp8g4Y3tgasvDUFY4zqE63jeQNQHPgJvXOm4+p0gKg76Q3rAY
	wdzaualbfr/cMH4+TEVuBhnKoEqzV3uhgk2EQf45GuzehANS9hXpgSw6YYl9pyZluama
	nFog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=62gZYUH9IRO/x0JdDLAeQMPEN5k1DwOm4aQopAm9HR8=;
	b=UHd0pH2i/2rtX2SmjJIucqsTmSNTcVQUViP9dNwEwJL8CMY5yo3dIfp9d1RkFfKK6s
	F9NMvlhgTHMRl95qXq80CvZwljZIJ3ikKmclcFNtazbYSc66qbzRITqMZoEOFtblVS8V
	aww5L2C4xbCRYkPvx965X1KQIC35fKBUkBcBYpbgYsZMKYP0RoSSPd6C8B/Tosk/brmX
	1x+mjY7JAtZxQ6DvGafsom5E7sldYlB/KH36gMESMJoGeE80MG8GVkKYFJSOwNGOlayN
	B49SwT646vvewBphKWfoh8Ft2nc2tmC1mgKSAofqmCctGcd6Qb8s9K3jQ0MvGAZSGjBo
	q9nQ==
X-Gm-Message-State: APjAAAUTZQlfujPniE09k7qK73ps0jKQWTm5wHG1IsoHEB1NKavCxMZg
	k0S8ke6rfY74xoyrRFACcNzkBgeKAyg=
X-Google-Smtp-Source: APXvYqz+i8nK74MlQO1bC6F49P6UwzycvkZxQ1Z0hssg9PWyXOxXItHCydgp1IhpAoEFvha7EdJHYg==
X-Received: by 2002:a6b:8d09:: with SMTP id p9mr32903513iod.227.1573588097832; 
	Tue, 12 Nov 2019 11:48:17 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	a18sm1643320ioo.11.2019.11.12.11.48.17
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 12 Nov 2019 11:48:17 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue, 12 Nov 2019 13:48:06 -0600
Message-Id: <20191112194806.1281210-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Cc: rburton@intel.com
Subject: [meta-mingw][PATCH] Add sdktest image
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
X-List-Received-Date: Tue, 12 Nov 2019 19:48:19 -0000
Content-Transfer-Encoding: 8bit

Adds a specific image that can be used to build MinGW SDKs. This image
includes extra recipes that are know to build for MinGW so that they can
be tested on the autobuilder.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-core/images/core-image-mingw-sdktest.bb | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 recipes-core/images/core-image-mingw-sdktest.bb

diff --git a/recipes-core/images/core-image-mingw-sdktest.bb b/recipes-core/images/core-image-mingw-sdktest.bb
new file mode 100644
index 0000000..6215aef
--- /dev/null
+++ b/recipes-core/images/core-image-mingw-sdktest.bb
@@ -0,0 +1,16 @@
+# Copyright (C) 2019 Garmin Ltd. or its subsidiaries
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+require ${COREBASE}/meta/recipes-core/images/core-image-minimal.bb
+
+# Other recipes that should be tested as part of the SDK in case some one wants
+# to include them
+TOOLCHAIN_HOST_TASK += "\
+    nativesdk-curl \
+    nativesdk-dbus \
+    nativesdk-dtc \
+    nativesdk-libarchive \
+    nativesdk-swig \
+    nativesdk-wayland \
+    "
+
-- 
2.23.0


