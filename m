Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22D8DE00BEF; Tue,  1 Mar 2016 05:58:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE692E00B9C
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:58:20 -0800 (PST)
Received: by mail-pa0-f54.google.com with SMTP id fl4so112648479pad.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=iWOQi/ybvc6YZJUOV3NRVURPSwuWHc9mPrEvS2iUUbg=;
	b=MYVxA3cQC07QOtLLWaG0gkFmeo9oDQPxL6faUIMGt5kMeaZVn4FLpwwma+vvotqxVY
	CFhk1MJguwIrBLqNeOCqAiIijo/3NQr2Qgp87Y+nWfG0VvGqHlI99FXJv8wMznUBAE8t
	8pZdg26krUq11XIBUUI//+HcetQKpbW6mtrMQokg4k5TGjG+IlKeNINbUtT7NIGr+Yww
	e0qiJlWX/9EQbepHaOuyJoE346WKUMsHWlhhvMhPtkVwh9Ir6wT1RSHOnl5bCntxUUvA
	YvqChCqUwdBzm17sbJd8cYrNgI7WKnhgkJgjejcIGpj/h0j1uOLCfURdbZMbGcPSL5Bn
	wBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=iWOQi/ybvc6YZJUOV3NRVURPSwuWHc9mPrEvS2iUUbg=;
	b=k9RLJMkPFVEDttm0KvqBp5jCZVSc0wZukYRHSAN/KVnbmoP7kMIXjey2TqwGwSaq6S
	+WxyP0jGhGNt62mMW0cFIwV1KsP0GzTpXMkT126EkVBa0QvzuOBNWaPaaurv9vuRGmIx
	WeGv0omNM/oNXgsgSFwlNUSohO5B0qwYMr8DZk/wamYov1e833obg/dmWrDWFGV3PiF7
	fVMrHsZ/hWoA+pswWW7lJP+LbjWYCRbh6j9W8fdyq35EvPBIT16S1NnyfWLsr4qpTcQ9
	1+p/xlEp1kHj71DGP4wXeD7bdYl8gY+BvCBIkiEUSCkNJsGQ2PAK3SMbWi58y6PIMYfN
	RHng==
X-Gm-Message-State: AD7BkJK+3L4c+Y/+i2Xr2Kap/VDg+zQ7zTsi8blP4TpyseCKbjyCD57lZdOSc7Ml7l0OFg==
X-Received: by 10.66.119.202 with SMTP id kw10mr30300425pab.110.1456840699859; 
	Tue, 01 Mar 2016 05:58:19 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	u5sm45938686pfi.15.2016.03.01.05.58.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:58:17 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:58:38 +1100
Message-Id: <1456840719-14318-2-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
In-Reply-To: <1456840719-14318-1-git-send-email-net147@gmail.com>
References: <1456840719-14318-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH v3 2/3] linux-raspberrypi: update path to mkknlimg
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
X-List-Received-Date: Tue, 01 Mar 2016 13:58:25 -0000

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


