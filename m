Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01F89E00B99; Tue, 24 Jan 2017 11:15:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.68 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9259FE00B8F
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:15:20 -0800 (PST)
Received: by mail-lf0-f68.google.com with SMTP id h65so18405725lfi.3
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:15:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Lzb4tMIxxghaEIpKBDJgHD9cNEGafBMZJtZaM43Ua0A=;
	b=WEYW3JLw2n11mVzrfDMqgvKsous31Js+i2LDJ4gEEAhhnjY0+DpKGnZtELXG5mLOPX
	NE4LJxrsC21KzO5C1NPq/9IOOjm7COrJWvqYI29w102o5VooRXGLhip2Qbf9yCFk5L9P
	BC3NklmBSiM8lXqeRAjyPdDbZ2zx0SWF2oS7alhXdJOmeI3atRb9VQ8/mv0pTb+I6gdH
	mRAGxRRP1nI3KRtPDEyxMIZEeF75tVR30LwClp41uAFEbIArBVMWhr4dNILKVWvDIFAf
	scLvIvwNzpVixnp+QI888jCJ4FhNUPwIxtihBTvn7i4Lo2lIdiRiiO5AhnJwyeVuyQUn
	R3Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Lzb4tMIxxghaEIpKBDJgHD9cNEGafBMZJtZaM43Ua0A=;
	b=sqMf/qLF3DScpkouPT436dYnqlLNJpF78WK77H9Rb4bb/a5+Su2ss5scyLzZBdKg7h
	QatnfFrjavwiOK7RXkMNOHlsxPIdKMo7cSrcJBp3oOpum+oOvWCyegWEFdhfrIuoQRM2
	LpakkhXBubzVi8EkTeCTCiNiVcFcoph/R+tsBXrRSRkGnS34PRUP9A9TvJU+I0BfKZeG
	TQFScJOtZ34La87a5XDJ7kKk65avl5kw/Q16W2Oc93svgCjssLRpgnKyyTstnr4IwfUB
	8gMfp3iO624QzYX32HoFDXNxxqt6D6/u5SicaT1KW9KWddHcxoQxOYXpJnuj9K51Ogcx
	8FhA==
X-Gm-Message-State: AIkVDXKSzjDWhQI/BIC1LjrCtWwOYM2Sjws4pTRnIGWwjioKj8qkUrnlpdEh3kNrNuLdPQ==
X-Received: by 10.25.21.205 with SMTP id 74mr4119947lfv.182.1485285319898;
	Tue, 24 Jan 2017 11:15:19 -0800 (PST)
Received: from debian.lan (78-71-171-99-no154.tbcn.telia.com. [78.71.171.99])
	by smtp.gmail.com with ESMTPSA id
	x17sm4433169lff.49.2017.01.24.11.15.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 24 Jan 2017 11:15:19 -0800 (PST)
From: Mirza Krak <mirza.krak@gmail.com>
X-Google-Original-From: Mirza Krak < mirza.krak@gmail.com >
To: yocto@yoctoproject.org
Date: Tue, 24 Jan 2017 19:16:38 +0100
Message-Id: <1485281798-9016-1-git-send-email-mirza.krak@gmail.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-raspberrypi][morty][PATCH V2] Revert "u-boot: drop patch to include lowlevel_init"
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
X-List-Received-Date: Tue, 24 Jan 2017 19:15:25 -0000

From: Mirza Krak <mirza.krak@gmail.com>

Not applicable on U-boot 2016.03 which is used in poky/morty and causes an build
error when KERNEL_IMAGETYPE = "uImage".

This reverts commit 031e26954b95d49a66ea4677b9e867d08441f450.

[Issue #43]

Signed-off-by: Mirza Krak <mirza.krak@gmail.com>
---

Changes in V2:
- Fixed spelling and improved commit message

 .../0003-Include-lowlevel_init.o-for-rpi2.patch    | 25 ++++++++++++++++++++++
 recipes-bsp/u-boot/u-boot_%.bbappend               |  1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch

diff --git a/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
new file mode 100644
index 0000000..ce0273f
--- /dev/null
+++ b/recipes-bsp/u-boot/files/0003-Include-lowlevel_init.o-for-rpi2.patch
@@ -0,0 +1,25 @@
+From 1eb01436bc57ad32519a4567a1c9ec82d52d60a1 Mon Sep 17 00:00:00 2001
+From: Paul Barker <paul@paulbarker.me.uk>
+Date: Tue, 29 Nov 2016 19:47:49 +0000
+Subject: [PATCH] Include lowlevel_init.o for rpi2
+
+Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
+Upstream-status: Inappropriate
+    (not needed upstream as rpi_2 board directory is removed in latest
+    version)
+---
+ board/raspberrypi/rpi_2/Makefile | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/board/raspberrypi/rpi_2/Makefile b/board/raspberrypi/rpi_2/Makefile
+index d82cd21..9f865c5 100644
+--- a/board/raspberrypi/rpi_2/Makefile
++++ b/board/raspberrypi/rpi_2/Makefile
+@@ -5,3 +5,4 @@
+ #
+
+ obj-y	:= ../rpi/rpi.o
++obj-y	+= ../rpi/lowlevel_init.o
+--
+2.1.4
+
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 0edc8dc..a4545f0 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -3,4 +3,5 @@ RDEPENDS_${PN}_append_rpi = " rpi-u-boot-scr"
 SRC_URI_append_rpi = " \
     file://0001-arm-add-save_boot_params-for-ARM1176.patch \
     file://0002-rpi-passthrough-of-the-firmware-provided-FDT-blob.patch \
+    file://0003-Include-lowlevel_init.o-for-rpi2.patch \
     "
--
2.1.4


