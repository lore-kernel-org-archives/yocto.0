Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C59D1E011AF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 04:42:21 -0700 (PDT)
Received: from mail-wg0-f54.google.com ([74.125.82.54])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 26 Sep 2012 04:42:18 -0700
Received: by wgbdt10 with SMTP id dt10so297156wgb.11
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 04:42:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=mENjGrU8q4Xx9qE3srBAJOY7gRQgkLk0PWUDVLVulqI=;
	b=B5CLauc+wJ+8qP23QRYuVBAPZ/FZdnl/XCDWiACrE8V+L9lUH/HT5LzuF3vTeTO0FD
	8U3Derk1KQfxf5EHPrCmAtAQ1TgkuFjR6eSirTCFF1/OBZwNq7i9JmwZ7SXHnYyE8Kjo
	/n9MC3FwO/nSXmJ+R3m00lSejaqLiSDs9Raniy/auxqV8ZKeG/kPstNclXfIc1pOSsl5
	/c4tSd+8dfSDcZnUFiZU6Jyr9qemJarxLKXQ5HESQa+C59XUxxQ8UGmLO4cmswGdBhBj
	7cO2g8uUwv3gcn6L4RGh0aUuW3Ck78nqrHHW/94g/pbxhZP/6BFXMpRu5qENDsLgl48y
	u1wg==
Received: by 10.180.75.67 with SMTP id a3mr937994wiw.1.1348659737193;
	Wed, 26 Sep 2012 04:42:17 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id k2sm6377275wiz.7.2012.09.26.04.42.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 26 Sep 2012 04:42:16 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Sep 2012 12:41:19 +0100
Message-Id: <1348659679-21657-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQkVV5gyJ4G0BG0CB6vVgSMWDmkMonwHby5+if9LkgMDgtge+7H0X/QUBpp7TJ+sQiiC/v/Z
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
X-List-Received-Date: Wed, 26 Sep 2012 11:42:21 -0000

The psb video drivers use the EXA framework, so add a dependency on
xserver-xorg-module-exa.

[YOCTO #3149]

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb        |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb b/meta-emenlow/recipes-graphics/xserver-xorg-video-psb/xserver-xorg-video-psb_0.32.1.bb
index 9de68f4..7972fcd 100644
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
 
+RDEPENDS_${PN} = "xserver-psb-module-exa"
+
 COMPATIBLE_MACHINE = "emenlow"
-- 
1.7.10


