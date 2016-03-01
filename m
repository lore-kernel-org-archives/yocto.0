Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23398E00C00; Tue,  1 Mar 2016 05:54:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02AD0E00C2D
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:54:13 -0800 (PST)
Received: by mail-pf0-f170.google.com with SMTP id 124so51586346pfg.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=iWOQi/ybvc6YZJUOV3NRVURPSwuWHc9mPrEvS2iUUbg=;
	b=jUyCfSSusthRPU4+PEUYVFxl5IqQDSfuacAbBXZyHrGnokb4C86KcYKKc/+CJcdFAk
	HQkEL/5cFWpRcIDXMoZPtzWeY8RfiUKsJW5WlHMjjFXyt37KJZJ4xYfJ0jxwJURbZHRL
	ChPKnePfDgnlejJiMbPrkaISiQurICxbd40Tu0Ga8zZbSz73HjLyQIwyhLebRxVcPlok
	oJWQV+II8lg+P21X/IcbB4Bk67zBH3n7TbQ/dgK8qMOU69/NMePga9E7UIZSowYylOgG
	lAlBGaulgmVqdNy4jfD6kNNpyNG9KjL6T02W1obIUmZG4ZwD0zGpksuxbP7JZjeCDdX8
	YM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=iWOQi/ybvc6YZJUOV3NRVURPSwuWHc9mPrEvS2iUUbg=;
	b=PWUxmCTz8o+NyABtyfghk/LaPsaYOmvdfSkj3KI6dpSRtGVNIDoZP5/ORXW05sIQdC
	KaRtJd3uSDBqoGk953KpNnHWJH1Bfc23JrdZxUSYHa/zipuFUdIvsUaB1rCkV7pNvIr7
	qeHXA0C9JJoUQZZXYoa0ylwS29NKVsgeNPjtRnKiBVkt36fmLFYhUUbGGx8MvHUc5Dny
	0fdUrNM1pZon7no9IYQYtzYmiHQ0qKN1jldmPVFaFe9CNLr03l4/lkpeVmc2xLai2xXr
	D38K8XQYpyWKtDW5Xz5wFUOur2piBXNfiZXGTtPa8Se5BLgvUV3s+CVywUmNVZXsm7sS
	csaw==
X-Gm-Message-State: AD7BkJIFgRegld8OSUoP1J6xd+kyH053LmfPPIPblkURLQ43ieprNKPZwnS4M0M4tI08+g==
X-Received: by 10.98.16.12 with SMTP id y12mr30097257pfi.6.1456840453308;
	Tue, 01 Mar 2016 05:54:13 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	r62sm45866152pfr.26.2016.03.01.05.54.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:54:11 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:54:35 +1100
Message-Id: <1456840476-14244-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
Subject: [meta-raspberrypi][PATCH v2 1/2] linux-raspberrypi: update path to mkknlimg
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
X-List-Received-Date: Tue, 01 Mar 2016 13:54:21 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 4f59c97..24e7fe2 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -64,7 +64,7 @@ do_rpiboot_mkimage() {
     if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
         if test -n "${KERNEL_DEVICETREE}"; then
             # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-            ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
+            ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
         fi
     fi
 }
@@ -74,7 +74,7 @@ do_bundle_initramfs_append() {
         if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
             if test -n "${KERNEL_DEVICETREE}"; then
                 # Add RPi bootloader trailer to kernel image to enable DeviceTree support
-                ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
+                ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
             fi
         fi
     fi
-- 
2.7.1


