Return-Path: <kazuya.nisimura@gmail.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D7B4E006B6
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2014 21:56:50 -0800 (PST)
Received: by mail-pb0-f49.google.com with SMTP id up15so6648851pbc.36
	for <yocto@yoctoproject.org>; Sun, 02 Feb 2014 21:56:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=EfukEYeMIut6Z2zPfkyVUqFaWMokWjM+/gm6Ykylqew=;
	b=SYfk1cvAgVZZPFayfhUsMJh+Y1FzTuD2/2k+2U8ZkSdRlU4atRZQZkbh1D/sxavjud
	XnSdk64TxXvQ6/SRyD5JVNWIbZ4uyReXmuaUHJ0fvBAXrUEqbfAT1CfDXpvLGrNiV74m
	R4qXOHLMCVrhRjrg0S++1fKUVDY94I/aHu/+1Zlc/996/HFAC4Wt73mbKRBUP9H+u80D
	XbyuYJXKHu1IQQIXb4XojEeE0AG6mRYAgMWgMhnUwd7yE8zTYaeDk+c0nTNkf4U3WLFU
	S9i9JqpUNyW7DiGW5QvktQURHB0P4Y5vPv1fWQNf7xvyyuEHK0iYvxEWiEVvi19kCIlh
	0olg==
X-Received: by 10.68.134.130 with SMTP id pk2mr632688pbb.167.1391407009870;
	Sun, 02 Feb 2014 21:56:49 -0800 (PST)
Received: from localhost.localdomain (KD113159197140.ppp-bb.dion.ne.jp.
	[113.159.197.140]) by mx.google.com with ESMTPSA id
	hb10sm52150296pbd.1.2014.02.02.21.56.48 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 02 Feb 2014 21:56:49 -0800 (PST)
From: Kazuya Nishimura <kazuya.nisimura@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Feb 2014 14:56:40 +0900
Message-Id: <1391407000-11895-1-git-send-email-kazuya.nisimura@gmail.com>
X-Mailer: git-send-email 1.7.9.5
X-Mailman-Approved-At: Mon, 03 Feb 2014 08:03:29 -0800
Subject: [PATCH] tune-arm1176jzfs-s.inc: Add hard float profile, arm1176jzfshf, in AVAILTUNES
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
X-List-Received-Date: Mon, 03 Feb 2014 05:56:53 -0000

arm1176jzfshf uses -mtune=hard.
Add -mfpu=vfp if vfp is included in TUNE_FEATURES
---
 conf/machine/include/tune-arm1176jzf-s.inc |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/conf/machine/include/tune-arm1176jzf-s.inc b/conf/machine/include/tune-arm1176jzf-s.inc
index ebad588..a5368a3 100644
--- a/conf/machine/include/tune-arm1176jzf-s.inc
+++ b/conf/machine/include/tune-arm1176jzf-s.inc
@@ -4,8 +4,15 @@ require conf/machine/include/arm/arch-armv6.inc
 
 TUNEVALID[arm1176jzfs] = "Enable arm1176jzfs specific processor optimizations"
 TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "arm1176jzfs", "-mtune=arm1176jzf-s", "", d)}"
+TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "vfp", "-mfpu=vfp", "", d)}"
 
 AVAILTUNES += "arm1176jzfs"
 TUNE_FEATURES_tune-arm1176jzfs = "${TUNE_FEATURES_tune-armv6} arm1176jzfs"
 ARMPKGARCH_tune-arm1176jzfs = "arm1176jzfs"
 PACKAGE_EXTRA_ARCHS_tune-arm1176jzfs = "${PACKAGE_EXTRA_ARCHS_tune-armv6}"
+
+AVAILTUNES += "arm1176jzfshf"
+TUNE_FEATURES_tune-arm1176jzfshf = "${TUNE_FEATURES_tune-arm1176jzfs} callconvention-hard"
+ARMPKGARCH_tune-arm1176jzfshf = "arm1176jzfs"
+PACKAGE_EXTRA_ARCHS_tune-arm1176jzfshf = "${PACKAGE_EXTRA_ARCHS_tune-armv6hf-vfp} arm1176jzfshf-vfp"
+
-- 
1.7.9.5


