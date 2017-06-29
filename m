Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BD1AE00B1B; Thu, 29 Jun 2017 13:02:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CA54E00B05
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 13:01:59 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id j85so4488982wmj.0
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 13:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=P4ST+gsSwCDO+U4+AwfcRSgdk1HpnZ0fh6y61/vtVEo=;
	b=orwFLNYpvsKEpfc5Lxzq8TQAWSL0q6fBX0QGlBeDi5vguedUKb9Xsaxv7hDCzV5M0X
	xTds1DUeLFgafcMRYSr8N1vgzFfgpJbLEGFouWw7r0eD1Cd49y/a1aS7u9Wt9RPommtA
	UUrYqpC9XrQ8h3J27KMO9RhfTL1FvJxsVcitNNR2nD8J01+0pS8SUEc3PsO6skeEPt/y
	nXLt8pKqYsYEE8qCbmrvoiXvCMgXZgU3BzZ0EQIC1y/uyI1+ugoOZPDJ37pwUJhANK3V
	nb+L0W4ntAlpqV1KGo9i4xY8dKaWYteMz9L8mtuInAIK2dKQn9TKZHzCWNNSi/j5gbtl
	KXWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=P4ST+gsSwCDO+U4+AwfcRSgdk1HpnZ0fh6y61/vtVEo=;
	b=fxQHoO+xEtVcKKjiwjeJgtJLbMwpHSiFTAT9ytNvZiJNWW9mIZcXXcoujSNi+dgFSj
	BZtJ6WNvUi7zYWHWdNtqrlsBzEy+A3iW/2UwpMKq5tyLTERHUVmySHJBLtP9+86zYTl6
	GQ/nMZlSaKr0ahD+Li6XHkT577CA76ninrHqwHQ4M+WSFnJhns5fdvKcL6uEWYXNjgq1
	7/AsvQb7HiBFAVqheHQ4sALRBoSgfZozT5lNoi51vfElbEr0YBLJ6vZK9hASyeRvXEwl
	nsu8MLE//ylqKsUI4ezUDC2GkiOJdwx9272Xz4l5uN3WWhdqjmHYa1xMijFkLs22Wg6A
	7BVw==
X-Gm-Message-State: AIVw113zXuUszHZl1g35cDGeMttp08tdh1zijlOeoUPUgO3IVvrmm4SI
	1EHOX8yxMFMHZu6M
X-Received: by 10.28.173.201 with SMTP id w192mr3149848wme.113.1498766518070; 
	Thu, 29 Jun 2017 13:01:58 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host168-65-static.12-87-b.business.telecomitalia.it. [87.12.65.168])
	by smtp.gmail.com with ESMTPSA id m26sm6188190wrm.4.2017.06.29.13.01.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 29 Jun 2017 13:01:57 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Jun 2017 22:01:45 +0200
Message-Id: <1498766505-16233-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] rpi-base: wic: generate entries for u-boot
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
X-List-Received-Date: Thu, 29 Jun 2017 20:02:04 -0000

This commit allow wic generated images to work when we want u-boot to
load the kernel image.

Augment IMAGE_BOOT_FILES with the proper entries when KERNEL_IMAGETYPE
is "uImage". More specifically add u-boot image and boot.scr to deployed files
and give the proper name to the kernel image accordingly.

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 conf/machine/include/rpi-base.inc | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 4a0ea2a..71bb071 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -83,7 +83,9 @@ def make_dtb_boot_files(d):
 
 IMAGE_BOOT_FILES ?= "bcm2835-bootfiles/* \
                  ${@make_dtb_boot_files(d)} \
-                 ${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE} \
+                 ${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', '${KERNEL_IMAGETYPE}', '${KERNEL_IMAGETYPE};${SDIMG_KERNELIMAGE}', d)} \
+                 ${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', 'u-boot.bin;${SDIMG_KERNELIMAGE}', '', d)} \
+                 ${@bb.utils.contains('KERNEL_IMAGETYPE', 'uImage', 'boot.scr;boot.scr', '', d)} \
                  "
 
 # The kernel image is installed into the FAT32 boot partition and does not need
-- 
2.7.4


