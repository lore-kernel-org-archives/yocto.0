Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E07EFE009C9; Mon, 27 Feb 2017 03:46:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.47 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E776AE00939
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 03:46:31 -0800 (PST)
Received: by mail-lf0-f47.google.com with SMTP id z127so32078460lfa.2
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 03:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=vT6Lzee/qGSLtwI308kJr1S+8dmo7jPVBir2uENNwtw=;
	b=RhjLdPaWJ3mm7gz3TGQjGiJEJ02LWnbsOEoU3KTOh4RTDCtaYJf8/Dwr36L9Ps77YN
	FNHJnwL2A7dXK1qiQ2BvNKa+7BKE/ciQjaGmrCeezpnWghbSDOZcHr+xBtbuWXml83rZ
	jLSH89C8dNeRwI9XAdKYZ2cXBNh/4Vp55TiiOdxpaWhMnZJlHcenRApwhFo/slotaLA9
	knWGTMXLRuG4Gvw8FwSknJvG+nJzZzmy1SovHZ8BU0iCz4sQbs7BX0/HAZCRDp4/Wlqh
	lSXsp/+SoYEgu0sVS7xA6TVRMrvG+DHbGxZxrhZpgG+oOffOGcc05fJhtSooH3R6kVPj
	hXbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=vT6Lzee/qGSLtwI308kJr1S+8dmo7jPVBir2uENNwtw=;
	b=KqtIhaggJQ6En0AnWaqXw2yejrw5lMJ8n0jgTEuvq6qV+00Rf0qCWf/+a8GC9SdHyv
	in0SKZ4DxNfEh4d9u+Z1BYCw0/GFacZWvYIpc0/ZuuzBehXgv1PlUsUUzaes2934lnNs
	td7bCvpCTdvk5brpiNtAbhPxyvrUL/w8sAJKUnyV1FRRjEjpdv30icGG0MBS/ORRQo3s
	tayY25Jmw3H6v60LtKPu2sqSaSewG7LWm6UFiJatI/kIUtOU+NLP+St80Q6IUHuCRy3L
	og7uOMHx+U6NuzPhKJwq88e1TyQ6kqUo27lOA+iq+kCGrZFeX4xE+VcLvFZy9+rgPm11
	3Zsw==
X-Gm-Message-State: AMke39lY19oXm6OA/9iZo5UYobvtQ35tOpBFk7Z3zcpP+LvDMJsFjsgtVz66WIU+SJBokA==
X-Received: by 10.46.84.84 with SMTP id y20mr4097519ljd.120.1488195990479;
	Mon, 27 Feb 2017 03:46:30 -0800 (PST)
Received: from comp_016_pc_buildenv.localdomain
	(staticline-31-182-60-238.toya.net.pl. [31.182.60.238])
	by smtp.gmail.com with ESMTPSA id q71sm471758lfe.40.2017.02.27.03.46.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Feb 2017 03:46:29 -0800 (PST)
From: Maciej Borzecki <maciej.borzecki@rndity.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 12:46:06 +0100
Message-Id: <4b8f47895119bc099970dadebcb6474458238eb3.1488194279.git.maciej.borzecki@rndity.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1488191415.git.maciej.borzecki@rndity.com>
References: <cover.1488191415.git.maciej.borzecki@rndity.com>
In-Reply-To: <cover.1488194279.git.maciej.borzecki@rndity.com>
References: <cover.1488194279.git.maciej.borzecki@rndity.com>
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi] [PATCH 2/2] rpi-base: wic: generate entries for device tree files
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
X-List-Received-Date: Mon, 27 Feb 2017 11:46:36 -0000

Augment IMAGE_BOOT_FILES with entries picking up proper dtb[o]s. This allows for
building usable wic images once again.

Signed-off-by: Maciej Borzecki <maciej.borzecki@rndity.com>
---
 conf/machine/include/rpi-base.inc | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index e069e7039f166b4503d6709df7bf770dadc6af5d..092cbeb1f7f2ce51b79acb44951373a600e97573 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -51,7 +51,37 @@ MACHINE_EXTRA_RRECOMMENDS += " kernel-modules"
 # Set Raspberrypi splash image
 SPLASH = "psplash-raspberrypi"
 
-IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}"
+def make_dtb_boot_files(d):
+    # Generate IMAGE_BOOT_FILES entries for device tree files listed in
+    # KERNEL_DEVICETREE.
+    alldtbs = d.getVar('KERNEL_DEVICETREE')
+    imgtyp = d.getVar('KERNEL_IMAGETYPE')
+
+    def transform(dtb):
+        if dtb.endswith('dtb'):
+            # eg: bcm2708-rpi-b.dtb has:
+            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-bcm2708-rpi-b.dtb
+            #     destination: bcm2708-rpi-b.dtb
+            src = '{}-{}'.format(imgtyp, dtb)
+            dst = dtb
+            return '{};{}'.format(src, dst)
+        elif dtb.endswith('dtbo'):
+            # overlay dtb:
+            # eg: overlays/hifiberry-amp.dtbo has:
+            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbp
+            #     destination: overlays/hifiberry-amp.dtbo
+            base = os.path.basename(dtb)
+            src = '{}-{}'.format(imgtyp, base)
+            dst = dtb
+            return '{};{}'.format(src, dtb)
+
+    return ' '.join([transform(dtb) for dtb in alldtbs.split(' ') if dtb])
+
+
+IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* \
+                 ${@make_dtb_boot_files(d)} \
+                 ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE} \
+                 "
 
 # The kernel image is installed into the FAT32 boot partition and does not need
 # to also be installed into the rootfs.
-- 
2.5.5


