Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFD67E00AA2; Fri, 21 Apr 2017 01:38:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gizero[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BE87E0095F
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 01:38:12 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id d79so3514906wmi.2
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 01:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=ECEU3dixwuPvh0SF7hqmfziUxP+eoYuWcy/T5LPEOhw=;
	b=M8MXOw5OngyW6ewXKLm/EM8Ud3bmCF4ZMxZ6JM6QGLOQawBwehrH6yn2O09elp1lla
	QQzpq8Op1j/4RkE7Jz1CyLUFBauB8E+0ubR7CKOshpbm+FfRroexkYXEZnPRYhW9QF8H
	SSZkNwr/99MMfVILnj7CHSs3xVyelFeDdURjHgPg83yoljU0ex6Zr4H0MZV9O/WeRANL
	ymiXP2EYJTFzE7Uqxvi1SxVOhVf0L8t/YpOrfE/9eIkMrxMAnUe00hpsNCnmme4hpHtt
	vNxJE6R+X4cubDlgl0UQteTkhxUssbtOCzZxassy45eAQzfSkgPjZoR9hMjcMb+23FWw
	MwWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ECEU3dixwuPvh0SF7hqmfziUxP+eoYuWcy/T5LPEOhw=;
	b=gfVOiC4oztedLec30FxyM2HKrSjmOZnil17tUSdK7WEFyOvNOElSijTSIVVF4vI05x
	8FguN5xDbR/vczWEwTfk69DYoEbWHlZnuyyInF2r3AqEqICMOC9Bj6uZjrwj8uQqqXJv
	mMYXaNu2gXgq6Vu+tArSnFtj8Bz06bWSDruq/QgXBfLl5PNbQeBom7JJdhGsvZ0Z5t68
	F91TNotVw1mVbZWRMAGVOxnDxopC2TFFOPX2qO5nob5Rh1atKnOqppWFEVrAaeKMC6Zk
	xliNqtDs/2Mus/AN9/uZVPz7fulOhLqAJhWFB4av++aWurTfT95ExGwBEy3n0NsG3/3d
	xvAA==
X-Gm-Message-State: AN3rC/5Vq0p0Cv6QEy/HBS8wy3oWAYKARiQcsWTqvq21KdpSs6hf7E4B
	pHVwYqoab93P7Q==
X-Received: by 10.28.188.85 with SMTP id m82mr6881864wmf.79.1492763890162;
	Fri, 21 Apr 2017 01:38:10 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host168-65-static.12-87-b.business.telecomitalia.it. [87.12.65.168])
	by smtp.gmail.com with ESMTPSA id
	g132sm1421546wmd.33.2017.04.21.01.38.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 21 Apr 2017 01:38:09 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Apr 2017 10:37:52 +0200
Message-Id: <1492763872-21212-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] rpi-base: fix make_dtb_boot_files() for raspberrypi3-64
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
X-List-Received-Date: Fri, 21 Apr 2017 08:38:13 -0000

Building the stock wic image for raspberrypi3-64 failed to find dtbs listed in
IMAGE_BOOT_FILES. This patch updates the make_dtb_boot_files() function to
account for dtbs listed in KERNEL_DEVICETREE that do include a path prefix:
this is the case for things like broadcom/bcm2710-rpi-3-b.dtb (the dts dir
layout in the kernel sources is different for arm64). Use the same approach
already used for overlays/ dir. While at it also fix a typo in dtb overlay
code path comments.

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 conf/machine/include/rpi-base.inc | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 517d5ba..4a0ea2a 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -61,16 +61,17 @@ def make_dtb_boot_files(d):
 
     def transform(dtb):
         if dtb.endswith('dtb'):
-            # eg: bcm2708-rpi-b.dtb has:
+            # eg: whatever/bcm2708-rpi-b.dtb has:
             #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-bcm2708-rpi-b.dtb
             #     destination: bcm2708-rpi-b.dtb
-            src = '{}-{}'.format(imgtyp, dtb)
-            dst = dtb
+            base = os.path.basename(dtb)
+            src = '{}-{}'.format(imgtyp, base)
+            dst = base
             return '{};{}'.format(src, dst)
         elif dtb.endswith('dtbo'):
             # overlay dtb:
             # eg: overlays/hifiberry-amp.dtbo has:
-            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbp
+            #     DEPLOYDIR file: ${KERNEL_IMAGETYPE}-hifiberry-amp.dtbo
             #     destination: overlays/hifiberry-amp.dtbo
             base = os.path.basename(dtb)
             src = '{}-{}'.format(imgtyp, base)
-- 
2.7.4


