Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A865E002AC
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 03:12:51 -0700 (PDT)
Received: from mail-wg0-f42.google.com ([74.125.82.42])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 02 Oct 2012 03:12:33 -0700
Received: by mail-wg0-f42.google.com with SMTP id fm10so359209wgb.5
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 03:12:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=GoKirqEcZlqnOxKf/LB7Yqvim+DqSGSc5b9S4ZALolw=;
	b=biPfSb91KwDS3hM99BdwbZtM8nVk4GAvZLH353ygyX6dCKg+dTgyoe42zJcAUxr0fr
	aEZ9lLCYA3XD0HC4fd/r4B0AZVWpyn9JXH3qqDzsa551cd8MXRp3VFUkZL1ylRBek9+t
	0IC2+d5UMAxt/HVsXumGw0+2dfClIItC/uGyZMcRC350nX0rbdwF/ecHxaMkXRuRy7h4
	B0q9uSnsb7nE5wXjrKRRPYVuQ11DRPYzz5AWPwPU4EpBFStqVboVlb92zHhbYNHZ55gJ
	1MzntGljhuOLnd3C4vBbR0lRQTKK9ZBHFI1tTbpDFWjZYcrOOMTfx3oHTgqJGFlt0NJQ
	ro0A==
Received: by 10.180.83.101 with SMTP id p5mr20872988wiy.2.1349172768810;
	Tue, 02 Oct 2012 03:12:48 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id f1sm3369446wiy.2.2012.10.02.03.12.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Oct 2012 03:12:48 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Oct 2012 11:11:45 +0100
Message-Id: <1349172705-29101-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQmuUoOLhFhTFzH6zegWCQBWIBUyq8ckphnBzNtkjZag4ymk554hY/P9qLqAyMUjiRbQ27HR
Subject: [PATCH] meta-cedartrail: add missing dependency on EXA module to X driver
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
X-List-Received-Date: Tue, 02 Oct 2012 10:12:51 -0000

[YOCTO #3204]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb            |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
index afda9dd..cd3407c 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = " \
 
 DEPENDS = "rpm-native libva"
 
-PR = "r1"
+PR = "r2"
 
 PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
 PSB-VIDEO-REV = "1.0.3"
@@ -66,6 +66,7 @@ FILES_${PN} += "${libdir}/pvr/cdv/xorg/modules/drivers"
 FILES_${PN} += "${datadir}/doc/psb-video-cdv-${PSB-VIDEO-REV}/license.txt"
 FILES_${PN} += "${datadir}/doc/pvr-bin-cdv-${PVR-BIN-REV_LIC}/license.txt"
 
+RDEPENDS_${PN} = "xserver-xorg-module-exa"
 
 TARGET_CC_ARCH += "${CFLAGS}{LDFLAGS}"
 INSANE_SKIP_${PN} += "ldflags"
-- 
1.7.10


