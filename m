Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA302E00D85; Thu, 26 Sep 2019 09:55:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E7BBE00CBC
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 09:55:37 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id u8so8388936iom.5
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 09:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=JhWbgW8q72GR2hChWfm7C8UUP0P1XnehWM9c/4SAWjs=;
	b=kAyiQESRY4FYqvd7/h0ixoNeN5jzom6vV+3BVZSagMX4bWoyXpNILlaoSYYnkc2XHn
	kp4Pfclovm3OFSH5LWcPJkfTUctCQr8eeK71qE/VfYk1X71MtHtgTThEM06HYQzIiG/Z
	VgVWp4AK/6ulQ05QzBvKdtAN09w3mxhAH58wHJCTva16Hr/UUQjdvbp247rlS4BXSV1V
	kdqVX7igyo2UF1CK8b/W+1bSBuDHBQdAKv+5xn6O6rXZx91li8QAMRRO1kMDxD8zSYpb
	XydetF1U7SU+vkdPnIg6D0rLCZG6VuSo6hfxr/4znkejeTeS5zTQExKVdQOLwSZM7lHc
	olkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=JhWbgW8q72GR2hChWfm7C8UUP0P1XnehWM9c/4SAWjs=;
	b=TXlq9h70zSun1FLegyFMAA8Qe1F7yspZlSv+IzvFgrD1SxVDMxmAhIlaxWxGaNMaxf
	gc2nfw3JxQJxt2BDYTMKWVXnN6O1KFzNjJCFxHcQmOcv0I0NTATMNGjnFGPjBRCDEQeW
	G9w2HK34zQobasKKeJBG5JV/mkJ2maC3h6oe0M9M22LJrD8BGozINCqoERyMe37IIM2c
	Z+jr/CD+nB/vpCMHnKjZ34KlEz2Mwxw1j/X0hlGBr5PVZ3OoF1CCCiTlYDOZQ/8FmJh8
	fnoxrAXJP5VrgjgbO5ytxA0HTsXKz/N9eHkiTooPtOGD/9PKG+tNbOH4toCEwKUwiQ6K
	KYcg==
X-Gm-Message-State: APjAAAViLv3SuW6SODTh8r1jAR0R/3dIz6Zl0dglOlUT8eM9cy1lYTSy
	QszMHL/iI8qPTjUYn9iIldSfwNRkM/Q=
X-Google-Smtp-Source: APXvYqw0G+MRY/CsugXr7Xc0A7S8iiZ7gSriCWowmNBqGcH6ubcNJXFUUiW92vMc5fMhO+ljSDO4gw==
X-Received: by 2002:a92:d986:: with SMTP id r6mr3615371iln.261.1569516936547; 
	Thu, 26 Sep 2019 09:55:36 -0700 (PDT)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.113.11.95])
	by smtp.gmail.com with ESMTPSA id b83sm907827ilg.27.2019.09.26.09.55.35
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 26 Sep 2019 09:55:35 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Thu, 26 Sep 2019 12:55:34 -0400
Message-Id: <20190926165534.11753-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH] yocto-bsps: update to v5.2.17
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
X-List-Received-Date: Thu, 26 Sep 2019 16:55:37 -0000
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating the reference BSP SRCREVs and versions to 5.2.17 to match
the latest for qemu* and to pickup some reference board specific
patches.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.2.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
index b7cefd25ca..63027d3f99 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
@@ -9,10 +9,10 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
-SRCREV_machine_genericx86-64 ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
-SRCREV_machine_edgerouter ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
+SRCREV_machine_genericx86-64 ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
+SRCREV_machine_edgerouter ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
 SRCREV_machine_beaglebone-yocto ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
-SRCREV_machine_mpc8315e-rdb ?= "cae01d71ef67eaafec75ce24f49b038b705b8711"
+SRCREV_machine_mpc8315e-rdb ?= "77f031b182885c177b3a96098ae61271911a7954"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "5.2.10"
-LINUX_VERSION_genericx86-64 = "5.2.10"
-LINUX_VERSION_edgerouter = "5.2.10"
-LINUX_VERSION_beaglebone-yocto = "5.2.10"
-LINUX_VERSION_mpc8315e-rdb = "5.2.10"
+LINUX_VERSION_genericx86 = "5.2.17"
+LINUX_VERSION_genericx86-64 = "5.2.17"
+LINUX_VERSION_edgerouter = "5.2.17"
+LINUX_VERSION_beaglebone-yocto = "5.2.17"
+LINUX_VERSION_mpc8315e-rdb = "5.2.17"
-- 
2.19.1


