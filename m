Return-Path: <lewicki.pk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD2C3E009D8; Mon, 31 Oct 2016 06:42:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lewicki.pk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DCD8E009B1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 06:42:49 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id m83so18481185wmc.0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 06:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=A4ynm0BjHuZXaULMLG8T2sT8FHfGw98GSoirk0d8jMg=;
	b=Aj2TiTuHynpTQE+LljUhphPnwm+UV1qtNy9G2oWwf3UskZAwg2xOx+mfWqoHKtjJnf
	BI9q96wW6koQNBOTN8DJ98t/A0X3ph+OUb2wmWLglqNrUH9YFEWDyUNhd+XkZVYDsVBX
	6Ce+0WwgZeJ1i+NFl/S80Wj3r122rgvKElcPxDkt3+5UpLYrc6E6cbgpj4l748wsoICB
	k23lLBXycCxCsAVzSXEdGSjEW99Ecxd07JHBWk40Xx5KFyJ5RrMfZOPkukt+hWVEFbG6
	M5oPIq+n7iB/igmtxqz5lGsftdZG4gQtwTIVnFRIpmSj2j/IkkCN/zyNKrFFaKoY8gaU
	nINg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=A4ynm0BjHuZXaULMLG8T2sT8FHfGw98GSoirk0d8jMg=;
	b=egUzn7QNNC+IJHcWwF+dCe4Dk2SgbdLJh4sBVXOkKWRZaCkf3ooLaiC5kIEz4z9UY2
	sI4Cygp8dDoODv1dflCrinE4sTo12XTI1zUQWCXeFXOl6Xb0EtTKEef3gRtEaC5gZgXl
	3zkUZhq+HoaDm1O6/j0NFyNwlJ22gbfGMlSRJwjXyydvynCm/45Rs447ENlT6fSggPWP
	9B2C8lqEgrNDCR4zdVGS/x2kK4xwFRZcWB3kWxjFu4QAeW3BwqTCGBzavTAzeQSpyLOi
	KCWOzmV8Nw1OsoIwZhmXFpkSDP8qulrXjIE9UcM4pQGPdZPRHgorktxBIuW2ITb8wgQo
	gC1w==
X-Gm-Message-State: ABUngvfOjOp3sDAJQgEM+cFpiORYFfbeP6hkNBMhPpCjmauXeHr51pDNRrzrCTT6gPKivw==
X-Received: by 10.194.191.136 with SMTP id gy8mr21890694wjc.117.1477921368430; 
	Mon, 31 Oct 2016 06:42:48 -0700 (PDT)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	a7sm29978105wjj.22.2016.10.31.06.42.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 06:42:47 -0700 (PDT)
From: Piotr Lewicki <lewicki.pk@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 14:42:35 +0100
Message-Id: <1477921355-2524-1-git-send-email-lewicki.pk@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Mon, 31 Oct 2016 07:32:02 -0700
Cc: Piotr Lewicki <lewicki.pk@gmail.com>
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi: Fix path for mkknlimg in bundle_initramfs task
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
X-List-Received-Date: Mon, 31 Oct 2016 13:42:53 -0000

Task do_bundle_initramfs() was failing because of "mkknlimg: not found"
The path to "mkknlimg" is now updated.
---
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
index 6184402..9d6ef5f 100644
--- a/recipes-kernel/linux/linux-raspberrypi.inc
+++ b/recipes-kernel/linux/linux-raspberrypi.inc
@@ -61,7 +61,7 @@ do_bundle_initramfs_append() {
             if test -n "${KERNEL_DEVICETREE}"; then
                 # Add RPi bootloader trailer to kernel image to enable DeviceTree support
                 for type in ${KERNEL_IMAGETYPES} ; do
-                    ${STAGING_BINDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
+                    ${STAGING_KERNEL_DIR}/scripts/mkknlimg --dtok ${KERNEL_OUTPUT_DIR}/$type.initramfs ${KERNEL_OUTPUT_DIR}/$type.initramfs
                 done
             fi
         fi
-- 
2.7.4


