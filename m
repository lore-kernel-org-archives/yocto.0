Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF18E0125D; Thu, 11 Aug 2016 18:06:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 949C1E0104C
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:32 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id g202so589341pfb.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=DMlkv37c5KKritUIhZTEZsjl5+We0qmwDQExQ4R17/M=;
	b=kIHnehloyhDXM1qzjBdukjYiJPmpEOiURFum1JO/iUVfjVkng0ZYr19GgQZcIeeDXW
	tZrcyUrk8zy8D33trv0Zlxg19ZOStDNJxXtnGCfd9wSqsg70W/w0FT9vkZKjcekeiGvO
	YOdCmx5YbLtNfI+X51GoiuU2UulciEDpOtkwYTPQX21CHb5vvqdJqFSqHZnrlOTY0e5F
	2SD7Ok56DvS9q9ahNfOgE7fu6gy5M3+PzikoL3ssfc8wR8me1OxihnuS6MZSa3nopibQ
	uK1ITkmhQOQn/h1u/yEvBe8auYlRfCklJ0a4V27aiNf3DhqB5UecyIWOKx9kwQJD+27g
	9LQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=DMlkv37c5KKritUIhZTEZsjl5+We0qmwDQExQ4R17/M=;
	b=BknV1XqeT859PJtvLGGWPhcac8NlG9wkHDqoSVRCR6mQA5kN70VKCUXtIfC8G1FzU9
	n9QDZuq1x/do3T2uKG38iKk7Qh6KdbZ4oisFfQOmD3hyMsgwsnf+h+Kbm5yxKcqduanp
	ZR+FHMA4WIE0epyIK6Dtg47e7YRQtzLmG+UdtHlgqwEpkb8PJFSpFqwyTVtFJeC5UVpn
	xXISTG9T0ciObslHVvdWfgLAtqK5zuJkNDOGPnCHrDXVXi6q/Hz/4LKziohVz5zvDzDr
	AB8XU22b8chtPNH4emNTHc3GBIbsjCOX6jNjSNFQhSn0s+B/hUBqP9xZymnQA3ylV/A1
	WB3w==
X-Gm-Message-State: AEkoouvR68WocYpb4aPhMu2cbOiRFRGcCH5gZXg75znIQBpq94voGutCmk3SGOWMFswYng==
X-Received: by 10.98.13.84 with SMTP id v81mr22497183pfi.108.1470963992175;
	Thu, 11 Aug 2016 18:06:32 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:31 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:01 -0700
Message-Id: <20160812010608.31182-16-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 16/23] linux-raspberrypi-4.4: add patch to enable proper operation of renderD128 device
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:41 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
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
2.9.2


