Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3731EE00CE8; Sun, 28 Feb 2016 03:48:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76146E00C9F
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 03:48:54 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id n186so5693246wmn.0
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 03:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=COt64MSbrLKCyIhnu1ErKuVepjNncOV60lXSQ1Fv2dM=;
	b=qDzwSVfVlholrMVyVULXc3BLcDIpkvHu7hGelJbZFpQd8bAg1NF8DC41bzoQyuWDM9
	j+xYxQthmogzxc3908zkaOCREyFipLVpSEHf1fXHijjOL1QAzS2cNQFHga7n63jZ4nDb
	tBhMSnH95IXaSopPVp5BwcxnZGPJQEEC8NV6nPwttijikXQPR6IHed1OgZ9Qt9PMf0nA
	+TzQTFkRE02Yk3lu0YmKrv4K8Tw+Kmu+cO4li/3jz9wdIKWws0zt+eld1KZzYdduj2RM
	G2JlOoarMPvQwdtrG3FZvi48O5uvHA04YPoK7MmbwRRa7wIlpCsVTB+bo/uMcftYiP+J
	2C/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=COt64MSbrLKCyIhnu1ErKuVepjNncOV60lXSQ1Fv2dM=;
	b=VGlzwpGIBA1BFJbIjSRoY+cLfD4/8n2q+zhLeyQAG77wtj5/XPBlhWndv7om5WspIY
	G6K9CQ1oboT/QMU5tFjL3uYmkUDlcoKfgkMULNWZLcvG4ubM3E5opchwY2kqIYtLi6t+
	vRv5L/IMJoHIKyArJCpHES1nxv2EvzJVXGJuQfxdwN+/d8bKFLbvGywctL9iLPAc2bXp
	E+g5PT+9RMyXVubpGOFGGBeNAL3NJO+/OdbeB4DfT1kFzyF/CQyDC4FJfS9tdkH97Uho
	kAeLW9whYT8NFnvIwpbTlGj2VpbtozgnREvDZy2CH3PMItSpK7+C+1k+ooerOIwIWbQZ
	GFDg==
X-Gm-Message-State: AD7BkJIPpyiJAnfsSBBJx62g79/KCcOBBc+qYVcW4Ml5ST9/32tizGMrr/15/USr0n39hw==
X-Received: by 10.28.12.80 with SMTP id 77mr6474175wmm.19.1456660133529;
	Sun, 28 Feb 2016 03:48:53 -0800 (PST)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	gg7sm20842892wjd.10.2016.02.28.03.48.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Feb 2016 03:48:52 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 12:48:36 +0100
Message-Id: <1456660116-15810-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.0
In-Reply-To: <1456660116-15810-1-git-send-email-andrei@gherzan.ro>
References: <1456660116-15810-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH v4 2/2] linux-raspberrypi: Make sure we have initramfs image before running mkknlimg
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
X-List-Received-Date: Sun, 28 Feb 2016 11:48:57 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 1befee4..5a8a175 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -66,10 +66,12 @@ do_rpiboot_mkimage() {
 }
 
 do_bundle_initramfs_append() {
-    if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
-        if test -n "${KERNEL_DEVICETREE}"; then
-            # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+    if [ ! -z "${INITRAMFS_IMAGE}" -a x"${INITRAMFS_IMAGE_BUNDLE}" = x1 ]; then
+        if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
+            if test -n "${KERNEL_DEVICETREE}"; then
+                # Add RPi bootloader trailer to kernel image to enable DeviceTree support
+                ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+            fi
         fi
     fi
 }
-- 
2.7.0


