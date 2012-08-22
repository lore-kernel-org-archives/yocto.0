Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B40CE00283
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 10:12:41 -0700 (PDT)
Received: from mail-we0-f180.google.com ([74.125.82.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 22 Aug 2012 10:12:06 -0700
Received: by weyt11 with SMTP id t11so650766wey.25
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 10:12:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=QGW5ozP8/v72bvgcViBiGVcEuf0MccX3mvGfLaZAD1M=;
	b=LwbtqduD90ZiDjsMxbM7uOYLnmUkHO8uHgDiIQw8hS6XkcZxjnz/QdsVfUnXqNwdsN
	4JYenKWXSpKtRZ07PPxIKNObz9Wr4XXghDT/MYO3DGWYg7w/02kCRl0YS5l0taa6H8s0
	Ld4ZGvtmCTu8lxBZSRHb6RVyPAkl+5UaSrLL5Ned2mAvBTxuVJONTOvy/j6SgSN01Rj3
	QlyXE1tj3UMhmjNSV4JkarxBPKAVMaYkM5xrnoofF+pxL+DO09kShyjSFsstgqPxHmAi
	HodsPtkP6J/fVIFhGuCcUHwXZ0fPKibJZclT+4rb1iIeVMcw5+J6cDr3MW/EdMvJKBFF
	m4Nw==
Received: by 10.180.93.8 with SMTP id cq8mr7425258wib.16.1345655524715;
	Wed, 22 Aug 2012 10:12:04 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id bc2sm13920163wib.0.2012.08.22.10.12.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Aug 2012 10:12:03 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 22 Aug 2012 18:11:22 +0100
Message-Id: <1345655483-10933-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQl3mCcAUrEXAoxq8iGzlw+hYFV7rzhFFjCM5ymfsAi6l4/Xm2LZg6Lbps0lSfIxpNiS2ueX
Subject: [PATCH 1/2] mpc8315e: switch to Xorg instead of kdrive
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
X-List-Received-Date: Wed, 22 Aug 2012 17:12:41 -0000

All of the other BSPs are using Xorg and kdrive is only maintained for Xephyr.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/machine/mpc8315e-rdb.conf |    9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index aa1e5c3..390882c 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -17,8 +17,13 @@ MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
-PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
-XSERVER = "xserver-kdrive-fbdev"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xserver-xorg-extension-extmod \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-video-fbdev"
 
 PREFERRED_VERSION_u-boot ?= "v2012.04%"
 UBOOT_ENTRYPOINT = "0x00000000"
-- 
1.7.10


