Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66257E00BE7; Wed, 21 Sep 2016 22:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B2E8E00CB6
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:08 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id l132so12047390wmf.1
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 22:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=VjQPmbJXUAnIcjlnRwhErw0PrfjktutqDvKyaYN0SKI=;
	b=mrwkm8bCjoNDHKmyRaYCQpd+R9SsEDIp0OvGEKJZ6NEKN8pDhuqN7JdkVmqkowE5Uw
	WZtNkOGVQRnHs/JgbB0Qq9J5lBsAfQLhAe4H7OpBgIe2XANFgFRNdOr7MT8a6k8SG7u8
	Ja7n2BB88+pV8alGEFS8fqcXEsPzwfkf6/qcmCQyAGSXpYcFvzQrwHirfloZGraswYDQ
	RT2d+l1VQKz8mVC5OX5+zhCJbma78Y7Qsq2G8PWFbhWaoBmGvljJnj8Op3lZScKzvQhL
	Oqy2rFRfstHhs222vSSbHDn4GnoAhZoYKyKaub6DIDAwxJ+CmvIi239xgab/z9IH57kP
	9M3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=VjQPmbJXUAnIcjlnRwhErw0PrfjktutqDvKyaYN0SKI=;
	b=m7ZHBueSeEx2mq2gMR/GycrWe1BDdq4fMPzGTmLtLHqvO8789+tlsBBnDSu5pM9Ya0
	VJFvIWKCNgf2JYcZm2Qy26QoOfGBrCuv1FXYObgD+vuq7JZ7VqnagLpa/ti8kNXUyfkp
	AuHE2nKjloIIqpH9kS/vPWScHZjU0Xe3ooL3sYbV920aFhGECmjeSnwomynT5m9K+TX5
	r0oHMHXWXO4wF04qGY4OqcKi7G4gmE42yGNgmvJrI9APbTLWe/5w8qkDhtjBzs5w4wSl
	/d6RRlYXyhtDcPKnOFl2a64wB5tXWTivU2J+fOZzjW5Wc6Ff0iCx+eDyjrPjSuP9thFT
	Y04Q==
X-Gm-Message-State: AE9vXwPKC4e+K4LU/nDnuHjTAunOK2B6D8vKSS35dNIo3/20NZEKbVN3+6dowTEPPKUk6Q==
X-Received: by 10.28.150.1 with SMTP id y1mr6043816wmd.114.1474523287144;
	Wed, 21 Sep 2016 22:48:07 -0700 (PDT)
Received: from localhost.localdomain (p4FDF0CCA.dip0.t-ipconnect.de.
	[79.223.12.202]) by smtp.googlemail.com with ESMTPSA id
	n131sm35913003wmd.3.2016.09.21.22.48.06 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 22:48:06 -0700 (PDT)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 22 Sep 2016 07:47:52 +0200
Message-Id: <1474523274-3883-5-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 4/6] linux-raspberrypi: update to 4.4.21
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
X-List-Received-Date: Thu, 22 Sep 2016 05:48:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This version contains vc4_firmware_kms [1]

https://github.com/raspberrypi/linux/commit/598f79fb5a7ea1a6fbd37b9849e097dd0bea70fc

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
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
index 9a49dc1..81e32c0 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,10 +1,9 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.16"
+LINUX_VERSION ?= "4.4.21"
 
-SRCREV = "cff67c7e03f4333149f2a8f6eafd3bc44475114a"
+SRCREV = "9669a50a3a8e4f33b4fe138277bc4407e1eab9b2"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
-           file://0002-vc4-ioctl-rendering-allow.patch \
 "
 require linux-raspberrypi.inc
-- 
2.5.5


