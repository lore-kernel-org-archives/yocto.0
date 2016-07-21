Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C940E00ECB; Thu, 21 Jul 2016 05:33:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BB24E00EC5
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 05:33:03 -0700 (PDT)
Received: from localhost.localdomain (unknown [74.95.113.124])
	by msfrf2625.sfr.fr (SMTP Server) with ESMTP id 939411C00043A;
	Thu, 21 Jul 2016 14:33:02 +0200 (CEST)
Received: from localhost.localdomain (unknown [74.95.113.124])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2625.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 21 Jul 2016 14:33:01 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Thu, 21 Jul 2016 20:32:17 +0800
Message-Id: <1469104337-21068-13-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v4 12/12] linux-raspberrypi-4.4: add patch to enable proper operation of renderD128 device
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
X-List-Received-Date: Thu, 21 Jul 2016 12:33:05 -0000

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 .../0002-vc4-ioctl-rendering-allow.patch           | 29 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
 2 files changed, 30 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch b/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
new file mode 100644
index 0000000..59d0ed7
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
@@ -0,0 +1,29 @@
+This patch has been accepted upstream in kernel 4.7-rc3
+But it has not yet been backported to 4.4...
+Upstream-Status: Accepted [http://www.gossamer-threads.com/lists/linux/kernel/2459302]
+Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
+---
+
+diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
+index a5b68c1..14b5ec1 100644
+--- a/drivers/gpu/drm/vc4/vc4_drv.c
++++ b/drivers/gpu/drm/vc4/vc4_drv.c
+@@ -75,12 +75,12 @@ static const struct file_operations vc4_drm_fops = {
+ };
+ 
+ static const struct drm_ioctl_desc vc4_drm_ioctls[] = {
+-	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0),
+-	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0),
+-	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0),
+-	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0),
+-	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0),
+-	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0),
++	DRM_IOCTL_DEF_DRV(VC4_SUBMIT_CL, vc4_submit_cl_ioctl, 0|DRM_RENDER_ALLOW),
++	DRM_IOCTL_DEF_DRV(VC4_WAIT_SEQNO, vc4_wait_seqno_ioctl, 0|DRM_RENDER_ALLOW),
++	DRM_IOCTL_DEF_DRV(VC4_WAIT_BO, vc4_wait_bo_ioctl, 0|DRM_RENDER_ALLOW),
++	DRM_IOCTL_DEF_DRV(VC4_CREATE_BO, vc4_create_bo_ioctl, 0|DRM_RENDER_ALLOW),
++	DRM_IOCTL_DEF_DRV(VC4_MMAP_BO, vc4_mmap_bo_ioctl, 0|DRM_RENDER_ALLOW),
++	DRM_IOCTL_DEF_DRV(VC4_CREATE_SHADER_BO, vc4_create_shader_bo_ioctl, 0|DRM_RENDER_ALLOW),
+ 	DRM_IOCTL_DEF_DRV(VC4_GET_HANG_STATE, vc4_get_hang_state_ioctl,
+ 			  DRM_ROOT_ONLY),
+ };
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index b13925c..8fe5330 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -5,5 +5,6 @@ LINUX_VERSION ?= "4.4.13"
 SRCREV = "680be5e27a9593cf26079c6e5744a04cc2809d13"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
+           file://0002-vc4-ioctl-rendering-allow.patch \
 "
 require linux-raspberrypi.inc
-- 
2.7.4


