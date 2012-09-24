Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0394CE013D2
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 02:28:17 -0700 (PDT)
Received: from mail-wg0-f54.google.com ([74.125.82.54])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 24 Sep 2012 02:28:03 -0700
Received: by wgbdt10 with SMTP id dt10so3492973wgb.11
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 02:28:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=U2PB8bAZnWSu2YiFOw+K3g7nYawtb/aAujDfGSHZ0NY=;
	b=nQpDWxCnDmNPX6pe2L91Y4reu8fIovAumYRd4YO4ys3NOG/rJIfxqWPN0EoXG6f1OB
	xj0Ibi/WNn591uTm5l1VIZ5ObM5y9Pe5q8HY5a6KHqFWQBTwNoJq66E00RnZQFWTsmLn
	rGwkQCY/JbzosON9a64cEsyjIKtGYbH+sGgH6gG6kdPxhQv5/WqJ4JmTPoU25dTKVzbB
	J/k1pIBcGrwH3WQNX1PT9qFxHqoMHz//FKgHLPTT6C2upbxjkkQwkAbK1fM41iXk9Kq3
	tOfabAfB1fMgQGOyBpVDLT1lLpYD4ul4b1j06+Itcrz1mW5ldUeO4an0jBQGHJiBDSfN
	31IA==
Received: by 10.180.95.193 with SMTP id dm1mr13033235wib.10.1348478894565;
	Mon, 24 Sep 2012 02:28:14 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id cu1sm13870533wib.6.2012.09.24.02.28.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 24 Sep 2012 02:28:13 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Sep 2012 10:27:18 +0100
Message-Id: <1348478838-28779-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQkCn/r0nCPlN19poTZF0LRptmL5oCEl3zw/PxwVyw/aegW/0cWpz8gx8yzWs2l4dsjAa1pT
Subject: [PATCH] meta-emenlow: add missing exa dependency
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
X-List-Received-Date: Mon, 24 Sep 2012 09:28:18 -0000

The psb video drivers use the EXA framework, so add a dependency on
xserver-xorg-module-exa.

[YOCTO #3149]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb        |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
index 9de68f4..56466a0 100644
--- a/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
+++ b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "2D graphics driver for Poulsbo"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://MIT_License.txt;md5=732825ecdcf420261531d935fcd914a7"
-PR = "r2"
+PR = "r3"
 
 inherit autotools
 
@@ -34,4 +34,6 @@ FILES_${PN} += "${libdir}/xorg/modules/drivers/libmm.so \
 
 DEPENDS += "virtual/libgl virtual/xserver"
 
+RDEPENDS_${PN} = "xserver-xorg-module-exa"
+
 COMPATIBLE_MACHINE = "emenlow"
-- 
1.7.10


