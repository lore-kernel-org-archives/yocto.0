Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 241EDE00BEC; Tue,  1 Mar 2016 05:35:58 -0800 (PST)
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
	*      [209.85.192.182 listed in list.dnswl.org]
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08143E00BB9
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:35:55 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id 4so34677667pfd.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=TfNrjcPe/F7BmHKbVbjvGCgu8feoRhnP8NiF7n7Thtk=;
	b=vFCa7mYF65LzzFBpRwyGwCr6FqKUO9POy/k3BRuK6iYpC7GbA4ekDF6dKBoRtsSNWe
	HX19CAbuzypArnvQaFS5P4JZmTz/Ky0n2LQduPIOi7ZyZylx9nstyfrm9SfAopCkSNuN
	0yCG0JroSO36u88V5FfxE87wBuDJseOdMhou/dghZyltAH3jkh+or7tl0sbefJKTlwDq
	hCamy971Z47G2CTWkMI0IWKQVWLE58c1UXMjyNOMT/jgqHMHQ05AdVw0D3jbXOZDxZjy
	5X0N/1RgbQfa+cx3aAEh3EcVcEErBmNbibFDtKhVGmtIIRy0yOENAKgtPoxKaFBcW2/x
	Yscw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=TfNrjcPe/F7BmHKbVbjvGCgu8feoRhnP8NiF7n7Thtk=;
	b=aokF8bF8i4BHlB5UJrHGzVR4R7o9Zej5F6a9yHrar6iKkxBBZfPMuLb3xoGB+cMn98
	2WB9RobPVeorygDlOvbnRaU9W6hV1WNnUixhI2/hawi5ahV/ve3jKGtR+NeCZV7PSQhr
	g4kM1WDwNMhMrV1Ve4u3eV5pnHDE6pEl7bBx34Y9viWHYDv3bpprxTv7HHKiI2NqIA7o
	LkMWdpKp1Ok79i9VNEJn1E13M71zp//qxsAPXB0ikewYWH6q/+cA0oMYoIxaDGcHLkSc
	0DHEZKQW8Q4Rw4XYMHgO07V6ZHKnwPqceuFl0cPySQwoDN2LMkAxe6Z1zhGmxJ7LOHa3
	en8w==
X-Gm-Message-State: AD7BkJKy1pGq0EuFaP0L59lSvz1DJsGaSvtPS7Lg2g5G2Haou2iKkc6FJb0vrsug5Kg61A==
X-Received: by 10.98.73.142 with SMTP id r14mr3459980pfi.140.1456839355493;
	Tue, 01 Mar 2016 05:35:55 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	fl9sm45810586pab.30.2016.03.01.05.35.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:35:54 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 00:35:59 +1100
Message-Id: <1456839359-12501-3-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 2.7.1
In-Reply-To: <1456839359-12501-1-git-send-email-net147@gmail.com>
References: <1456839359-12501-1-git-send-email-net147@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/3] u-boot-rpi: update path to imagetool-uncompressed.py
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
X-List-Received-Date: Tue, 01 Mar 2016 13:35:58 -0000

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-bsp/u-boot/u-boot-rpi_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot-rpi_git.bb b/recipes-bsp/u-boot/u-boot-rpi_git.bb
index 8bffaa3..3e8d377 100644
--- a/recipes-bsp/u-boot/u-boot-rpi_git.bb
+++ b/recipes-bsp/u-boot/u-boot-rpi_git.bb
@@ -24,6 +24,6 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 do_compile_append() {
     # Create kernel.img from uboot.bin and name it u-boot.img
-    ${STAGING_LIBEXECDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
+    ${STAGING_BINDIR_NATIVE}/imagetool-uncompressed.py u-boot.bin
     mv kernel.img u-boot.img
 }
-- 
2.7.1


