Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9C2EE00BF8; Thu,  6 Oct 2016 19:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D54CCE00A96
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 19:09:14 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 190so1997738pfv.1
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 19:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=W68vdOwV4arirwDYarKBvFb46LaK05y9Ytkgke2QWW8=;
	b=VuhUFlJ2PzeyBGALLm35/TDom1vbpRDapUQ0M8nMS3+1uNvoW6ggXvS2zmsd7blJQh
	iQKbrvuU9Qr9gGwh644yCaYnIul7yqfVb27kh5jpCTYFVG51K5aWk7HF5EieHPM7B50v
	75uufdM1jn2sXsk1qu3eUL0nmAl/WxHUmzioEonwoyafL+1DMJZDqZiKieNyJLkdJOuQ
	H1lUmeeCBnToe8ZrVhrulpVt2hKhGlyZNRaym7oMK0w1I+ZLQqbJFLdJdSVHxgVKWjF2
	KNLBZw+P7dhJGDlgwf0m8rsH4ArcKQ5JIAWIRcgDGz+/8Ing1QVF/NUetlGnCZTDK5t7
	l7tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=W68vdOwV4arirwDYarKBvFb46LaK05y9Ytkgke2QWW8=;
	b=eHo4+6tihrddbC5yGHsO3+oJcojLZmhIDGackp8XgIBQY5sR++ZCghjKC/Tgr9uE3P
	kK8rSxf3gb42+x0HP+dzxgAarM17JF167nG6VfXodjK/U90TbBkE0PE+67LgZdE3yLGk
	xeRByg0QO5r4Uxy8hpSItpC4DNd0RPiSsnmALEt4h/IjWHkV/zYcoRiDtjULNg5gf9cj
	/fXCK8QVNRy0nJToJPmby8o+qSpuiSGp3hOlxXNpWDloVyksbBGcNYM2iCdv3D5w5zDX
	T46nFsS/ZauESE1IVUPcljyZsqLbks7iSWewxLAdxIqRxj/966Fut2MXG3OkPMDH6MH9
	PKkQ==
X-Gm-Message-State: AA6/9RkrSFN2lVz1f2p32sGpVxOME6nkJ+wsMNAKPlFz/oTBVOrSDKQPsTkLDqBNGW1yng==
X-Received: by 10.98.84.67 with SMTP id i64mr31742192pfb.105.1475806153972;
	Thu, 06 Oct 2016 19:09:13 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	wd7sm25932607pab.2.2016.10.06.19.09.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 06 Oct 2016 19:09:13 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Oct 2016 19:09:03 -0700
Message-Id: <20161007020906.32228-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
Subject: [meta-raspberrypi][PATCH 1/4] linux-raspberrypi_4.4: Upgrade to 4.4.23
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
X-List-Received-Date: Fri, 07 Oct 2016 02:09:15 -0000

Drop upstreamed patch

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0002-vc4-ioctl-rendering-allow.patch           | 29 ----------------------
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  5 ++--
 2 files changed, 2 insertions(+), 32 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
deleted file mode 100644
index 59d0ed7..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
+++ /dev/null
@@ -1,29 +0,0 @@
-This patch has been accepted upstream in kernel 4.7-rc3
-But it has not yet been backported to 4.4...
-Upstream-Status: Accepted [http://www.gossamer-threads.com/lists/linux/kernel/2459302]
-Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
----
-
-diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
-index a5b68c1..14b5ec1 100644
---- a/drivers/gpu/drm/vc4/vc4_drv.c
-+++ b/drivers/gpu/drm/vc4/vc4_drv.c
-@@ -75,12 +75,12 @@ static const struct file_operations vc4_drm_fops = {
- };
- 
- static const struct drm_ioctl_desc vc4_drm_ioctls[] = {
--	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0),
--	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0),
--	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0),
--	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0),
--	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0),
--	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0),
-+	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0|DRM_RENDER_ALLOW),
-+	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0|DRM_RENDER_ALLOW),
-+	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0|DRM_RENDER_ALLOW),
-+	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0|DRM_RENDER_ALLOW),
-+	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0|DRM_RENDER_ALLOW),
-+	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0|DRM_RENDER_ALLOW),
- 	DRM_IOCTL_DEF_DRV(VC4_GET_HANG_STATE, vc4_get_hang_state_ioctl,
- 			  DRM_ROOT_ONLY),
- };
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 9a49dc1..4b15f88 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,10 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.16"
+LINUX_VERSION ?= "4.4.23"
 
-SRCREV = "cff67c7e03f4333149f2a8f6eafd3bc44475114a"
+SRCREV = "c2a1d975537fcac01da80ce34f10bc491620a64e"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
-           file://0002-vc4-ioctl-rendering-allow.patch \
 "
 require linux-raspberrypi.inc
-- 
2.10.0


