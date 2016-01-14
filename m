Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F02DBE00B89; Wed, 13 Jan 2016 16:16:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFC50E00B6F
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 16:16:00 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id yy13so273931709pab.3
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 16:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=VtkWQcl+X08rNHA6jnDNw9SreHlsBN9IhXTBEiNj9e0=;
	b=M/suD8f8W9tctd3nKk5tJ4B6FNJA5+7W75b/74ggIokmJrCK9u2Rm6rFXXa6r9VurQ
	gS/TPGcacbdJ/LgUPWxlBparJJ58ApVBJ1lJ1xoluWDpZ1EFKegCmZDqXIen3OT0vUuR
	0t60PsSSisVtLoVFVxdNlvjcZmVB504FSBlI6/HcXMpcL+/feWAwbArNNR6kuefbNMs3
	068n9hQuWdMCALCQ6B79nRLV3S9PkyUL5ppmWXuHRf4bueMYiu7hgioZsU7FA0/mxGfC
	lsdJ68uwvX00WWgJaaKGAJD7sa0/J+O2tcKBAuKrXueCvQzqBwc943MVvZJbsubxe+og
	x58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=VtkWQcl+X08rNHA6jnDNw9SreHlsBN9IhXTBEiNj9e0=;
	b=PLdMTjBC45K4bS0w5o/0HrY4LUsjfyYfGmGwbjSkqmpW9IxkSoxP8xK2uua6czpDtg
	J4ZrZBZC6L7zq09N2j9DDHo4jVT8Agr+r5BowUhKbCgj/iofjk5pynWjzdtEDliunG//
	aJDJZ1oIs3m1/c7aa9oNVbZkWAddipG3bk8Auj8qbO9aE9Y6i9dH1w3o3Y2nEDJZTfjS
	kVD8K/MB8tDOZ/41oCC3q7vc73P2Ovg4CddKE53qoPwVKfcx78PXZZksdM/uml79UMp9
	DXEZ2LhZnZwKtySEjGLh36/ul6AwanJjWq4FXF01ewxEDJhZd10w+xXCZMuVrBg7n6GZ
	FV1Q==
X-Gm-Message-State: ALoCoQnPsgg+vNImv2NaSoYg5Dn9ZUM1TiI2TTPBISwg+5LdBjwXaJxvNGgTKaIdgek+cA2hjWGT7GB2n3sc2XZTxjmN+GfwBw==
X-Received: by 10.66.97.71 with SMTP id dy7mr1543499pab.8.1452730559944;
	Wed, 13 Jan 2016 16:15:59 -0800 (PST)
Received: from haswell.localdomain (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	wo3sm5052889pab.25.2016.01.13.16.15.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 Jan 2016 16:15:58 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jan 2016 16:15:51 -0800
Message-Id: <1452730551-16401-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Subject: [meta-raspberrypi][PATCH] eglinfo-x11, eglinfo-fb: Add EGLINFO_DEVICE via bbappends
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
X-List-Received-Date: Thu, 14 Jan 2016 00:16:05 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend  | 1 +
 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
 create mode 100644 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend

diff --git a/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
new file mode 100644
index 0000000..7f8b600
--- /dev/null
+++ b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
@@ -0,0 +1 @@
+EGLINFO_DEVICE_rpi  = "raspberrypi"
diff --git a/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
new file mode 100644
index 0000000..7f8b600
--- /dev/null
+++ b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
@@ -0,0 +1 @@
+EGLINFO_DEVICE_rpi  = "raspberrypi"
-- 
2.7.0


